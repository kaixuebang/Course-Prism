import { Grid, Modal, Tabs, Typography, message } from "antd";
import Head from "next/head";
import Link from "next/link";
import Image from "next/image";
import { useRouter } from "next/router";
import { useEffect } from "react";

import AboutCard from "@/components/about-card";
import AccountLoginForm from "@/components/account-login-form";
import EmailLoginForm from "@/components/email-login-form";
import EmailPasswordLoginForm from "@/components/email-password-login-form";
import {
  AccountLoginRequest,
  EmailLoginRequest,
  EmailPasswordLoginRequest,
} from "@/lib/models";
import {
  authEmailVerifyCode,
  emailPasswordLogin,
  jAccountAuth,
  login,
  postLogin,
} from "@/services/user";

const { Text, Title } = Typography;

const LOGIN_FORM_HEIGHT = "184px";

const LoginPage = () => {
  const router = useRouter();
  const [modal, contextHolder] = Modal.useModal();
  const { code, state, next } = router.query;
  const screens = Grid.useBreakpoint();
  useEffect(() => {
    if (code) {
      jAccountAuth(
        code as string,
        state as string,
        router.basePath,
        next as string
      )
        .then((data) => {
          postLogin(data, router);
        })
        .catch(() => {
          message.error("参数错误！");
          router.replace("/login");
        });
    }
  }, [router.query]);

  const onEmailLoginFinish = (request: EmailLoginRequest) => {
    authEmailVerifyCode(request.account, request.code)
      .then((data) => {
        postLogin(data, router);
      })
      .catch((error) => {
        const errorMessage = error?.response?.data?.detail || error?.message || "登录失败，请重试";
        message.error(errorMessage);
      });
  };

  const onAccountLoginFinish = (request: AccountLoginRequest) => {
    login(request.username, request.password)
      .then((data) => {
        postLogin(data, router);
      })
      .catch((error) => {
        const errorMessage = error?.response?.data?.detail || error?.message || "登录失败，请重试";
        message.error(errorMessage);
      });
  };

  const onEmailPasswordLoginFinish = (request: EmailPasswordLoginRequest) => {
    emailPasswordLogin(request.account, request.password)
      .then((data) => {
        postLogin(data, router);
      })
      .catch((error) => {
        const errorMessage = error?.response?.data?.detail || error?.message || "登录失败，请重试";
        message.error(errorMessage);
      });
  };

  function info() {
    modal.info({
      title: "基本原则",
      content: <AboutCard />,
      okText: "确认",
      icon: null,
      width: screens.md ? "80%" : 520,
    });
  }

  const tabItems = [
    /*{
      label: "快速登录",
      key: "jaccount",
      children: (
        <div style={{ height: "168px", display: "flex" }}>
          <Button
            style={{
              width: "100%",
              alignSelf: "center",
            }}
            size="large"
            type="primary"
            loading={code ? true : false}
            onClick={() => jAccountLogin(router.basePath, next as string)}
          >
            使用 jAccount 登录
          </Button>
        </div>
      ),
    },*/
    {
      label: "邮箱登录",
      key: "email-password",
      children: (
        <div style={{ height: LOGIN_FORM_HEIGHT }}>
          <EmailPasswordLoginForm onFinish={onEmailPasswordLoginFinish} />
        </div>
      ),
    },
    /*{
      label: "邮箱验证登录",
      key: "email",
      children: (
        <div style={{ height: LOGIN_FORM_HEIGHT }}>
          <EmailLoginForm onFinish={onEmailLoginFinish} />
        </div>
      ),
    },*/

    {
      label: "账号登录",
      key: "account",
      children: (
        <div style={{ height: LOGIN_FORM_HEIGHT }}>
          <AccountLoginForm onFinish={onAccountLoginFinish} />
        </div>
      ),
    },
  ];

  const isMobile = !screens.md;

  return (
    <>
      <Head>
        <title>登录 - SWUFE选课社区</title>
      </Head>
      <div style={{ 
        display: "flex",
        minHeight: "100vh",
        width: "100%",
        position: "relative"
      }}>
        {/* 左侧图片区域 */}
        {!isMobile && (
          <div style={{
            flex: "0 0 50%",
            position: "relative",
            overflow: "hidden",
            background: "#f5f5f5"
          }}>
            {/* 网站标题 */}
            <div style={{
              position: "absolute",
              top: 0,
              left: 0,
              right: 0,
              padding: "24px 32px",
              zIndex: 3
            }}>
              <div style={{
                color: "white",
                fontSize: "20px",
                fontWeight: 600,
                textShadow: "0 2px 4px rgba(0, 0, 0, 0.3)"
              }}>
                SWUFE选课社区
              </div>
            </div>
            
            <div style={{
              position: "absolute",
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              zIndex: 1
            }}>
              <Image
                src="/swufe-pic.jpg"
                alt="西南财经大学"
                fill
                style={{
                  objectFit: "cover"
                }}
                priority
              />
            </div>
            {/* 半透明品牌色蒙层 */}
            <div style={{
              position: "absolute",
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              background: "linear-gradient(135deg, rgba(24, 144, 255, 0.75) 0%, rgba(24, 144, 255, 0.6) 100%)",
              zIndex: 2,
              display: "flex",
              flexDirection: "column",
              justifyContent: "center",
              alignItems: "center",
              padding: "40px",
              color: "white"
            }}>
              <Title 
                level={1} 
                style={{ 
                  color: "white", 
                  fontSize: "48px",
                  fontWeight: 700,
                  marginBottom: "24px",
                  textAlign: "center",
                  textShadow: "0 2px 8px rgba(0, 0, 0, 0.2)"
                }}
              >
                让每一个选择都有据可依
              </Title>
              <Text style={{
                color: "rgba(255, 255, 255, 0.95)",
                fontSize: "18px",
                textAlign: "center",
                maxWidth: "500px",
                lineHeight: "1.8",
                textShadow: "0 1px 4px rgba(0, 0, 0, 0.2)"
              }}>
                基于真实评价，为你的选课决策提供参考
              </Text>
            </div>
          </div>
        )}
        
        {/* 右侧登录表单区域 */}
        <div style={{ 
          flex: isMobile ? "1" : "0 0 50%",
          display: "flex",
          flexDirection: "column",
          justifyContent: "center",
          alignItems: "center",
          padding: isMobile ? "24px 16px" : "40px",
          background: "#ffffff",
          minHeight: "100vh"
        }}>
          <div style={{ 
            width: "100%",
            maxWidth: "400px",
            minWidth: "324px"
          }}>
            <div style={{ 
              textAlign: "center", 
              marginBottom: "32px" 
            }}>
              <Title level={2} style={{ 
                marginBottom: "8px",
                fontSize: "28px",
                fontWeight: 600
              }}>
                欢迎回来
              </Title>
              <Text type="secondary" style={{ fontSize: "14px" }}>
                登录您的账户以继续
              </Text>
            </div>
            
            <Tabs defaultActiveKey="email-password" centered items={tabItems}></Tabs>
            
            <div style={{ textAlign: "center", marginTop: 24 }}>
              <Text style={{ fontSize: "12px", color: "#8c8c8c" }}>
                登录即表示您已阅读并同意本站
                <Typography.Link onClick={() => info()} style={{ fontSize: "12px" }}>
                  基本原则
                </Typography.Link>
                {contextHolder}
              </Text>
              <div style={{ marginTop: 16 }}>
                <Text type="secondary" style={{ fontSize: "14px" }}>
                  还没有账户？
                  <Link href="/register" style={{ marginLeft: 4, color: "#1890ff" }}>
                    立即注册
                  </Link>
                </Text>
              </div>
              <div style={{ marginTop: 16 }}>
                <Link href="/latest" style={{ 
                  color: '#1890ff', 
                  textDecoration: 'none',
                  fontSize: '14px'
                }}>
                  预览网站
                </Link>
              </div>
            </div>
          </div>
        </div>
      </div>
    </>
  );
};

export default LoginPage;
