from django.core.management import BaseCommand
from django.db.models import Count, Q
from django.db import transaction

from jcourse_api.models import Review


class Command(BaseCommand):
    help = 'Remove duplicate reviews'

    def add_arguments(self, parser):
        parser.add_argument(
            '--dry-run',
            action='store_true',
            help='Show what would be deleted without actually deleting',
        )
        parser.add_argument(
            '--same-user-course',
            action='store_true',
            help='Remove duplicates where same user reviewed same course (keep latest)',
        )
        parser.add_argument(
            '--same-content',
            action='store_true',
            help='Remove duplicates with identical content for same course (keep earliest)',
        )

    def handle(self, *args, **options):
        dry_run = options['dry_run']
        same_user_course = options['same_user_course']
        same_content = options['same_content']

        # 如果没有指定选项，默认处理两种情况
        if not same_user_course and not same_content:
            same_user_course = True
            same_content = True

        total_deleted = 0

        if same_user_course:
            deleted = self.remove_same_user_course_duplicates(dry_run)
            total_deleted += deleted
            self.stdout.write(
                self.style.SUCCESS(
                    f'Removed {deleted} duplicate reviews (same user + same course)'
                )
            )

        if same_content:
            deleted = self.remove_same_content_duplicates(dry_run)
            total_deleted += deleted
            self.stdout.write(
                self.style.SUCCESS(
                    f'Removed {deleted} duplicate reviews (same content)'
                )
            )

        if dry_run:
            self.stdout.write(
                self.style.WARNING(
                    f'\nDry run mode: Would delete {total_deleted} duplicate reviews'
                )
            )
        else:
            self.stdout.write(
                self.style.SUCCESS(
                    f'\nSuccessfully removed {total_deleted} duplicate reviews'
                )
            )

    def remove_same_user_course_duplicates(self, dry_run=False):
        """
        移除同一用户对同一课程的重复点评
        保留最新的（modified_at 或 created_at 最新的）
        """
        # 查找所有 (user, course) 组合出现多次的记录
        duplicates = (
            Review.objects.values('user', 'course')
            .annotate(count=Count('id'))
            .filter(count__gt=1)
        )

        deleted_count = 0

        for dup in duplicates:
            user_id = dup['user']
            course_id = dup['course']

            # 获取该用户对该课程的所有点评，按时间排序（最新的在前）
            reviews = (
                Review.objects.filter(user_id=user_id, course_id=course_id)
                .order_by('-modified_at', '-created_at', '-id')
            )

            # 保留第一个（最新的），删除其余的
            to_keep = reviews.first()
            to_delete = reviews[1:]

            if to_keep:
                self.stdout.write(
                    f'\nUser {user_id} - Course {course_id}: '
                    f'Keeping review {to_keep.id} (created: {to_keep.created_at}), '
                    f'deleting {len(to_delete)} duplicates'
                )

                deleted_count += len(to_delete)

                if not dry_run:
                    with transaction.atomic():
                        # 删除重复的点评
                        review_ids = [r.id for r in to_delete]
                        Review.objects.filter(id__in=review_ids).delete()

                        # 更新课程统计
                        from jcourse_api.models.review import update_course_reviews
                        update_course_reviews(to_keep.course)

        return deleted_count

    def remove_same_content_duplicates(self, dry_run=False):
        """
        移除内容完全相同的重复点评（同一课程）
        保留最早的（created_at 最早的）
        """
        # 查找所有 (course, comment) 组合出现多次的记录
        duplicates = (
            Review.objects.values('course', 'comment')
            .annotate(count=Count('id'))
            .filter(count__gt=1)
        )

        deleted_count = 0

        for dup in duplicates:
            course_id = dup['course']
            comment = dup['comment']

            # 获取该课程下内容相同的所有点评，按时间排序（最早的在前）
            reviews = (
                Review.objects.filter(course_id=course_id, comment=comment)
                .order_by('created_at', 'id')
            )

            # 保留第一个（最早的），删除其余的
            to_keep = reviews.first()
            to_delete = reviews[1:]

            if to_keep:
                self.stdout.write(
                    f'\nCourse {course_id} - Same content: '
                    f'Keeping review {to_keep.id} by user {to_keep.user_id} '
                    f'(created: {to_keep.created_at}), '
                    f'deleting {len(to_delete)} duplicates'
                )

                deleted_count += len(to_delete)

                if not dry_run:
                    with transaction.atomic():
                        # 删除重复的点评
                        review_ids = [r.id for r in to_delete]
                        Review.objects.filter(id__in=review_ids).delete()

                        # 更新课程统计
                        from jcourse_api.models.review import update_course_reviews
                        update_course_reviews(to_keep.course)

        return deleted_count
