import { List, Space, Tag, Typography, Grid } from "antd";
import Link from "next/link";

const { useBreakpoint } = Grid;

import Config from "@/config/config";
import { CourseListItem } from "@/lib/models";
import { CommonInfoContext } from "@/lib/context";

const { Text } = Typography;

const CourseItem = ({
  course,
  showEnroll,
}: {
  course: CourseListItem;
  showEnroll?: boolean;
}) => {
  const screens = useBreakpoint();
  const isMobile = !screens.md;
  return (
    <CommonInfoContext.Consumer>
      {(commonInfo) => {
        return (
          <List.Item
            key={course.id}
            extra={
              !isMobile &&
              (course.rating.count > 0 ? (
                <Space size={0} direction="vertical" align="end">
                  <Text strong style={{ fontSize: 16 }}>
                    {course.rating.avg.toFixed(1)}
                  </Text>
                  <Text type="secondary">{course.rating.count}人评价</Text>
                </Space>
              ) : (
                <Text type="secondary">暂无点评</Text>
              ))
            }
          >
            <Space direction="vertical" style={{ width: '100%' }}>
              <Link href={"/course/" + course.id}>
                {course.code + " "}
                {course.name}（{course.teacher}）
              </Link>
              <Space wrap size={[4, 4]} direction={isMobile ? "vertical" : "horizontal"}>
                <Space wrap size={0}>
                  {showEnroll && commonInfo?.enrolled_courses.has(course.id) && (
                    <Tag color={Config.TAG_COLOR_ENROLL}>学过</Tag>
                  )}
                  {course.categories &&
                    course.categories.map((tag: string) => (
                      <Tag key={tag} color={Config.TAG_COLOR_CATEGORY}>
                        {tag}
                      </Tag>
                    ))}
                  {commonInfo?.reviewed_courses.has(course.id) && (
                    <Tag color={Config.TAG_COLOR_REVIEW}>已点评</Tag>
                  )}
                </Space>
                <Space wrap>
                  <Typography.Text type="secondary">
                    {course.credit}学分 {course.department}
                  </Typography.Text>
                  {isMobile && course.rating.count > 0 && (
                    <Typography.Text strong>
                      {course.rating.avg.toFixed(1)} ({course.rating.count}人评价)
                    </Typography.Text>
                  )}
                  {isMobile && course.rating.count === 0 && (
                    <Text type="secondary">暂无点评</Text>
                  )}
                </Space>
              </Space>
            </Space>
          </List.Item>
        );
      }}
    </CommonInfoContext.Consumer>
  );
};

export default CourseItem;
