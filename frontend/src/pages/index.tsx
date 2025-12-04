import { useRouter } from "next/router";
import { useEffect } from "react";
import { useCommonInfo } from "@/services/common";

const HomePage = () => {
  const router = useRouter();
  const { commonInfo, error, loading } = useCommonInfo();

  useEffect(() => {
    // 如果还在加载中，不做任何操作
    if (loading) {
      return;
    }

    // 如果出现403错误，跳转到登录页
    if (error?.response?.status === 403) {
      router.replace("/login");
      return;
    }

    // 检查用户是否已登录：
    // 1. commonInfo存在且有数据
    // 2. 用户ID不为0（0是默认值，表示未登录）
    // 3. 或者有有效的用户名
    const isLoggedIn = commonInfo && 
                      commonInfo.user && 
                      (commonInfo.user.id > 0 || 
                       (commonInfo.user.username && commonInfo.user.username.length > 0));

    if (isLoggedIn) {
      router.replace("/latest");
    } else {
      router.replace("/login");
    }
  }, [commonInfo, error, loading, router]);

  // 显示加载状态
  return (
    <div style={{ 
      display: 'flex', 
      justifyContent: 'center', 
      alignItems: 'center', 
      height: '100vh',
      fontSize: '16px',
      color: '#666'
    }}>
      正在加载...
    </div>
  );
};

export default HomePage;