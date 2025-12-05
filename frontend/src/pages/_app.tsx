import { ConfigProvider, theme } from "antd";
import zhCN from "antd/locale/zh_CN";
import type { AppProps } from "next/app";
import { useEffect, useState } from "react";
import { useMediaQuery } from "react-responsive";
import { SWRConfig } from "swr";

import { BasicLayout, LoginLayout } from "@/components/layouts";
import { request } from "@/services/request";
import "@/styles/global.css";

function MyApp({ Component, pageProps, router }: AppProps) {
  const [mounted, setMounted] = useState<boolean>(false);

  const isDark = useMediaQuery({
    query: "(prefers-color-scheme: dark)",
  });

  useEffect(() => {
    setMounted(true);
  }, []);

  // 记录页面访问（只要查看网页就算一次）
  useEffect(() => {
    // 只在客户端执行
    if (typeof window === 'undefined') return;
    
    // 检查今天是否已经记录过（使用 sessionStorage 避免同一次会话重复调用）
    const today = new Date().toDateString();
    const lastTrackDate = sessionStorage.getItem('visitor_tracked_date');
    
    // 如果今天已经记录过，跳过（后端也会去重，这里只是优化）
    if (lastTrackDate === today) {
      return;
    }
    
    // 记录页面访问
    const trackPageVisit = async () => {
      try {
        await request.post('/api/track-visitor/');
        // 记录成功，保存到 sessionStorage
        sessionStorage.setItem('visitor_tracked_date', today);
      } catch (error) {
        // 静默处理错误，不影响用户体验
        console.debug('访客统计记录失败:', error);
      }
    };
    
    trackPageVisit();
  }, []); // 只在组件挂载时执行一次

  if (!mounted) return <></>;

  return (
    <SWRConfig value={{ shouldRetryOnError: false, revalidateOnFocus: false }}>
      <ConfigProvider
        locale={zhCN}
        theme={{
          algorithm: isDark ? theme.darkAlgorithm : theme.defaultAlgorithm,
          token: { colorPrimary: "#1890ff", colorInfo: "#1890ff" },
        }}
      >
        {router.pathname == "/login" || router.pathname == "/register" ? (
          <LoginLayout>
            <Component {...pageProps} />
          </LoginLayout>
        ) : (
          <BasicLayout {...pageProps}>
            <Component {...pageProps} />
          </BasicLayout>
        )}
      </ConfigProvider>
    </SWRConfig>
  );
}

export default MyApp;
