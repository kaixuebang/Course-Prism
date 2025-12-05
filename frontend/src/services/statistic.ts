import useSWR from "swr";
import dayjs from "dayjs";
import { StatisticInfo } from "@/lib/models";
import { fetcher } from "@/services/request";

export function useStatistic() {
  const { data, error } = useSWR<StatisticInfo>("/api/statistic/", fetcher);

  // 处理数据，计算每日新增
  let processedData = data;
  if (data) {
    const currentDay = dayjs().subtract(1, "day").format("YYYY-MM-DD");

    const new_user_map = new Map<string, number>();
    const new_review_map = new Map<string, number>();

    // 安全地处理数组数据
    if (data.user_join_time && Array.isArray(data.user_join_time)) {
      data.user_join_time.forEach((item) => {
        if (item && item.date && typeof item.count === 'number') {
          new_user_map.set(item.date, item.count);
        }
      });
    }

    if (data.review_create_time && Array.isArray(data.review_create_time)) {
      data.review_create_time.forEach((item) => {
        if (item && item.date && typeof item.count === 'number') {
          new_review_map.set(item.date, item.count);
        }
      });
    }

    processedData = {
      ...data,
      daily_new_users: new_user_map.get(currentDay) || 0,
      daily_new_reviews: new_review_map.get(currentDay) || 0,
    };
  }

  return {
    indexState: processedData,
    loading: !error && !data,
    error: error,
  };
}
