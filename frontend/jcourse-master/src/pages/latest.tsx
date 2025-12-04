import { EditOutlined } from "@ant-design/icons";
import { Button, Card } from "antd";
import Head from "next/head";
import { useRouter } from "next/router";

import AuthGuardLink from "@/components/auth-guard-link";
import PageHeader from "@/components/page-header";
import ReviewList from "@/components/review-list";
import Config from "@/config/config";
import { Pagination } from "@/lib/models";
import { useReviews } from "@/services/review";

const LatestPage = () => {
  const router = useRouter();
  const { page, size } = router.query;

  const pagination: Pagination = {
    page: page ? parseInt(page as string) : 1,
    pageSize: size ? parseInt(size as string) : Config.PAGE_SIZE,
  };

  const { reviews, loading } = useReviews(pagination);

  const onPageChange = (page: number, pageSize: number) => {
    router.push({ query: { page: page, size: pageSize } });
  };

  return (
    <>
      <PageHeader
        title="最新点评"
        subTitle={`共有${reviews ? reviews.count : 0}个点评`}
        extra={
          <AuthGuardLink href="/write-review" loginMessage="请先登录后再写点评">
            <Button type="primary">
              <EditOutlined />
              新点评
            </Button>
          </AuthGuardLink>
        }
      />
      <Head>
        <title>最新点评 - SWUFE选课社区</title>
      </Head>
      <Card>
        <ReviewList
          loading={loading}
          count={reviews?.count}
          reviews={reviews?.results}
          onPageChange={onPageChange}
          pagination={pagination}
        />
      </Card>
    </>
  );
};

export default LatestPage;
