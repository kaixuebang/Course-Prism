import { Button, Card, Form, Input, Typography, message, Grid } from "antd";
import Head from "next/head";
import Link from "next/link";
import Image from "next/image";
import { useRouter } from "next/router";
import React, { useEffect, useRef, useState } from "react";

import { AccountRule, CodeRule } from "@/lib/utils";
import { authEmailSendCode, authEmailRegister, postLogin } from "@/services/user";

const { Title, Text } = Typography;

const RegisterPage = () => {
  const router = useRouter();
  const [form] = Form.useForm();
  const [time, setTime] = useState<number>(0);
  const [isRegistered, setIsRegistered] = useState(false);
  const timeRef = useRef<any>();
  const inCounter = time != 0;
  const screens = Grid.useBreakpoint();
  const isMobile = !screens.md;

  const onSendCode = () => {
    const account: string = form.getFieldValue("account");
    if (account == undefined || !AccountRule.pattern.test(account)) {
      message.error("请输入正确的学生证号码。");
      return;
    }
    authEmailSendCode(account)
      .then((data) => {
        setTime(60);
        message.success(data.detail);
      })
      .catch((error) => {
        const errorMessage = error?.response?.data?.detail || "发送验证码失败，请重试";
        message.error(errorMessage);
      });
  };

  const onFinish = (values: { account: string; code: string; username: string; password: string; confirmPassword: string }) => {
    if (values.password !== values.confirmPassword) {
      message.error("两次输入的密码不一致");
      return;
    }
    
    authEmailRegister(values.account, values.code, values.password, values.username)
      .then((data) => {
        message.success("注册成功！正在为您登录...");
        setIsRegistered(true);
        setTimeout(() => {
          // 注册成功后直接跳转到最新页面
          router.push("/latest");
        }, 1500);
      })
      .catch((error) => {
        const errorMessage = error?.response?.data?.detail || error?.message || "注册失败，请重试";
        message.error(errorMessage);
      });
  };

  useEffect(() => {
    if (inCounter) {
      timeRef.current = setTimeout(() => {
        setTime(time - 1);
      }, 1000);
    }
    return () => {
      clearTimeout(timeRef.current);
    };
  }, [time, inCounter]);

  return (
    <div>
      <Head>
        <title>注册 - SWUFE选课社区</title>
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
        
        {/* 右侧注册表单区域 */}
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
          <Card 
            style={{ 
              width: "100%", 
              maxWidth: "500px",
              minWidth: "324px",
              boxShadow: "0 4px 12px rgba(0, 0, 0, 0.08)",
              border: "none"
            }}
          >
            <div style={{ textAlign: "center", marginBottom: 32 }}>
              <Title level={2} style={{ 
                marginBottom: "8px",
                fontSize: "28px",
                fontWeight: 600
              }}>
                加入我们
              </Title>
              <Text type="secondary" style={{ fontSize: "14px" }}>
                使用西南财经大学学生邮箱注册账户
              </Text>
            </div>

            {!isRegistered ? (
              <Form
                form={form}
                onFinish={onFinish}
                layout="vertical"
                size="large"
              >
                <Form.Item 
                  label="学生账号"
                  name="account" 
                  rules={[AccountRule]}
                >
                  <Input
                    placeholder="学生证号码"
                    suffix="@smail.swufe.edu.cn"
                    disabled={isRegistered}
                  />
                </Form.Item>

                <div style={{ textAlign: "center", marginBottom: 16 }}>
                  <Text type="secondary" style={{ fontSize: 12 }}>
                    <a 
                      href="https://info.swufe.edu.cn/info/1016/1006.htm" 
                      target="_blank" 
                      rel="noopener noreferrer"
                      style={{ color: '#1890ff', textDecoration: 'none' }}
                    >
                      没有使用过SWUFE学生邮箱？
                    </a>
                  </Text>
                </div>

                <Form.Item
                  label="邮箱验证码"
                  name="code"
                  rules={[CodeRule]}
                >
                  <Input.Search
                    placeholder="输入验证码"
                    enterButton={
                      <Button 
                        onClick={onSendCode} 
                        disabled={inCounter || isRegistered}
                        style={{ minWidth: "120px" }}
                      >
                        {inCounter ? `${time}秒后重发` : "获取验证码"}
                      </Button>
                    }
                    disabled={isRegistered}
                  />
                </Form.Item>

                <Form.Item
                  label="用户名"
                  name="username"
                  rules={[
                    { required: true, message: '请输入用户名' },
                    { min: 3, message: '用户名至少3位' },
                    { max: 20, message: '用户名最多20位' },
                    { pattern: /^[a-zA-Z0-9_]+$/, message: '用户名只能包含字母、数字和下划线' }
                  ]}
                  help="此用户名将用于登录"
                >
                  <Input
                    placeholder="设置登录用户名（3-20位字母数字下划线）"
                    disabled={isRegistered}
                  />
                </Form.Item>

                <Form.Item
                  label="设置密码"
                  name="password"
                  rules={[
                    { required: true, message: '请输入密码' },
                    { min: 8, message: '密码至少8位' },
                    { pattern: /^(?=.*[A-Za-z])(?=.*\d)/, message: '密码必须包含字母和数字' }
                  ]}
                >
                  <Input.Password
                    placeholder="设置登录密码（至少8位，包含字母和数字）"
                    disabled={isRegistered}
                  />
                </Form.Item>

                <Form.Item
                  label="确认密码"
                  name="confirmPassword"
                  dependencies={['password']}
                  rules={[
                    { required: true, message: '请再次输入密码' },
                    ({ getFieldValue }) => ({
                      validator(_, value) {
                        if (!value || getFieldValue('password') === value) {
                          return Promise.resolve();
                        }
                        return Promise.reject(new Error('两次输入的密码不一致'));
                      },
                    }),
                  ]}
                >
                  <Input.Password
                    placeholder="再次输入密码"
                    disabled={isRegistered}
                  />
                </Form.Item>

                <Form.Item style={{ marginBottom: 16 }}>
                  <Button
                    type="primary"
                    htmlType="submit"
                    style={{ width: "100%" }}
                    size="large"
                    loading={isRegistered}
                  >
                    立即注册
                  </Button>
                </Form.Item>

                <div style={{ textAlign: "center", marginTop: 16 }}>
                  <Text type="secondary" style={{ fontSize: "14px" }}>
                    已有账户？
                    <Link href="/login" style={{ marginLeft: 4, color: "#1890ff" }}>
                      立即登录
                    </Link>
                  </Text>
                </div>
              </Form>
            ) : (
              <div style={{ textAlign: "center", padding: "40px 20px" }}>
                <div style={{ 
                  fontSize: "64px", 
                  color: "#52c41a", 
                  marginBottom: 24 
                }}>
                  ✓
                </div>
                <Title level={3} style={{ color: "#52c41a", marginBottom: 12 }}>
                  注册成功！
                </Title>
                <Text type="secondary" style={{ fontSize: "14px" }}>
                  正在为您跳转...
                </Text>
              </div>
            )}

            <div style={{ 
              textAlign: "center", 
              marginTop: 24, 
              padding: "16px",
              background: "#f9f9f9",
              borderRadius: "6px"
            }}>
              <Text type="secondary" style={{ fontSize: "12px" }}>
                注册即表示您已阅读并同意本站基本原则
              </Text>
            </div>
          </Card>
        </div>
      </div>
    </div>
  );
};

export default RegisterPage;