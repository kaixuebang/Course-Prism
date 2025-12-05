import { Card, Col, Grid, Row, Statistic } from "antd";
import Head from "next/head";
import {
  Bar,
  BarChart,
  Brush,
  Label,
  Line,
  LineChart,
  ResponsiveContainer,
  Tooltip,
  XAxis,
  YAxis,
  PieChart,
  Pie,
  Cell,
  Legend,
} from "recharts";

import PageHeader from "@/components/page-header";
import { useStatistic } from "@/services/statistic";

const { useBreakpoint } = Grid;

const IntervalAxisTick = ({ x, y, payload }: any) => {
  return (
    <g transform={`translate(${x + 8},${y})`}>
      <text y={0} dy={12} textAnchor="end" fill="#666" fontSize={12}>
        {payload.value < 5 ? `[${payload.value}, ${payload.value + 1})` : 5}
      </text>
    </g>
  );
};

// 美化的颜色配置 - 使用渐变色和更现代的配色
const COLORS = [
  '#1890ff', '#52c41a', '#faad14', '#f5222d', 
  '#722ed1', '#13c2c2', '#eb2f96', '#fa8c16',
  '#2f54eb', '#a0d911'
];

// 渐变色配置
const GRADIENT_COLORS = {
  primary: ['#1890ff', '#096dd9'],
  success: ['#52c41a', '#389e0d'],
  warning: ['#faad14', '#d48806'],
  danger: ['#f5222d', '#cf1322'],
  purple: ['#722ed1', '#531dab'],
  cyan: ['#13c2c2', '#08979c'],
};

const StatisticPage = () => {
  const { indexState, loading, error } = useStatistic();

  const screens = useBreakpoint();
  // 移动端响应式布局优化
  const numberColSpan = screens.lg ? 4 : screens.md ? 6 : screens.sm ? 8 : 12;
  const figureColSpan = screens.lg ? 12 : screens.md ? 12 : 24;
  const chartHeight = screens.xs ? 150 : screens.sm ? 180 : 200;
  const chartMargin = screens.xs 
    ? { left: 0, right: 0, top: 0, bottom: 0 }
    : { left: 0, right: 0, top: 5, bottom: 5 };

  // 空数据检查
  const hasData = indexState && !loading && !error;

  // 自定义Tooltip样式
  const CustomTooltip = ({ active, payload, label }: any) => {
    if (active && payload && payload.length) {
      return (
        <div style={{
          backgroundColor: 'rgba(255, 255, 255, 0.95)',
          border: '1px solid #e8e8e8',
          borderRadius: '6px',
          padding: '10px',
          boxShadow: '0 2px 8px rgba(0,0,0,0.15)'
        }}>
          <p style={{ margin: 0, marginBottom: '4px', fontWeight: 600, color: '#262626' }}>
            {label}
          </p>
          {payload.map((entry: any, index: number) => (
            <p key={index} style={{ margin: 0, color: entry.color }}>
              {`${entry.name}: ${entry.value}`}
            </p>
          ))}
        </div>
      );
    }
    return null;
  };

  return (
    <>
      <Head>
        <title>统计 - SWUFE选课社区</title>
      </Head>
      <PageHeader title="统计" />
      {error && (
        <Card
          style={{
            borderRadius: '12px',
            boxShadow: '0 2px 8px rgba(0,0,0,0.08)',
            marginBottom: '24px'
          }}
        >
          <div style={{ textAlign: "center", padding: "20px", color: "#ff4d4f" }}>
            数据加载失败，请稍后重试
          </div>
        </Card>
      )}
      <Card 
        title={<span style={{ fontSize: '18px', fontWeight: 600 }}>基本统计</span>}
        style={{
          borderRadius: '12px',
          boxShadow: '0 2px 8px rgba(0,0,0,0.08)',
          marginBottom: '24px',
          border: 'none'
        }}
        bodyStyle={{ padding: '24px' }}
      >
        <Row
          className="info-row"
          gutter={[20, 20]}
          justify="center"
          align="middle"
        >
          <Col span={numberColSpan}>
            <div style={{
              background: 'linear-gradient(135deg, #667eea 0%, #764ba2 100%)',
              borderRadius: '12px',
              padding: '20px',
              textAlign: 'center',
              boxShadow: '0 4px 12px rgba(102, 126, 234, 0.3)',
              transition: 'transform 0.2s, box-shadow 0.2s',
              cursor: 'pointer'
            }}
            onMouseEnter={(e) => {
              e.currentTarget.style.transform = 'translateY(-4px)';
              e.currentTarget.style.boxShadow = '0 6px 16px rgba(102, 126, 234, 0.4)';
            }}
            onMouseLeave={(e) => {
              e.currentTarget.style.transform = 'translateY(0)';
              e.currentTarget.style.boxShadow = '0 4px 12px rgba(102, 126, 234, 0.3)';
            }}
            >
              <Statistic
                title={<span style={{ color: 'rgba(255,255,255,0.9)', fontSize: '14px' }}>用户总数</span>}
                loading={loading}
                value={indexState?.user_count || 0}
                valueStyle={{ color: '#fff', fontSize: '28px', fontWeight: 700 }}
              />
            </div>
          </Col>
          <Col span={numberColSpan}>
            <div style={{
              background: 'linear-gradient(135deg, #f093fb 0%, #f5576c 100%)',
              borderRadius: '12px',
              padding: '20px',
              textAlign: 'center',
              boxShadow: '0 4px 12px rgba(245, 87, 108, 0.3)',
              transition: 'transform 0.2s, box-shadow 0.2s',
              cursor: 'pointer'
            }}
            onMouseEnter={(e) => {
              e.currentTarget.style.transform = 'translateY(-4px)';
              e.currentTarget.style.boxShadow = '0 6px 16px rgba(245, 87, 108, 0.4)';
            }}
            onMouseLeave={(e) => {
              e.currentTarget.style.transform = 'translateY(0)';
              e.currentTarget.style.boxShadow = '0 4px 12px rgba(245, 87, 108, 0.3)';
            }}
            >
              <Statistic
                title={<span style={{ color: 'rgba(255,255,255,0.9)', fontSize: '14px' }}>用户新增</span>}
                loading={loading}
                value={indexState?.daily_new_users || 0}
                valueStyle={{ color: '#fff', fontSize: '28px', fontWeight: 700 }}
              />
            </div>
          </Col>
          <Col span={numberColSpan}>
            <div style={{
              background: 'linear-gradient(135deg, #4facfe 0%, #00f2fe 100%)',
              borderRadius: '12px',
              padding: '20px',
              textAlign: 'center',
              boxShadow: '0 4px 12px rgba(79, 172, 254, 0.3)',
              transition: 'transform 0.2s, box-shadow 0.2s',
              cursor: 'pointer'
            }}
            onMouseEnter={(e) => {
              e.currentTarget.style.transform = 'translateY(-4px)';
              e.currentTarget.style.boxShadow = '0 6px 16px rgba(79, 172, 254, 0.4)';
            }}
            onMouseLeave={(e) => {
              e.currentTarget.style.transform = 'translateY(0)';
              e.currentTarget.style.boxShadow = '0 4px 12px rgba(79, 172, 254, 0.3)';
            }}
            >
              <Statistic
                title={<span style={{ color: 'rgba(255,255,255,0.9)', fontSize: '14px' }}>点评总数</span>}
                loading={loading}
                value={indexState?.review_count || 0}
                valueStyle={{ color: '#fff', fontSize: '28px', fontWeight: 700 }}
              />
            </div>
          </Col>

          <Col span={numberColSpan}>
            <div style={{
              background: 'linear-gradient(135deg, #43e97b 0%, #38f9d7 100%)',
              borderRadius: '12px',
              padding: '20px',
              textAlign: 'center',
              boxShadow: '0 4px 12px rgba(67, 233, 123, 0.3)',
              transition: 'transform 0.2s, box-shadow 0.2s',
              cursor: 'pointer'
            }}
            onMouseEnter={(e) => {
              e.currentTarget.style.transform = 'translateY(-4px)';
              e.currentTarget.style.boxShadow = '0 6px 16px rgba(67, 233, 123, 0.4)';
            }}
            onMouseLeave={(e) => {
              e.currentTarget.style.transform = 'translateY(0)';
              e.currentTarget.style.boxShadow = '0 4px 12px rgba(67, 233, 123, 0.3)';
            }}
            >
              <Statistic
                title={<span style={{ color: 'rgba(255,255,255,0.9)', fontSize: '14px' }}>点评新增</span>}
                loading={loading}
                value={indexState?.daily_new_reviews || 0}
                valueStyle={{ color: '#fff', fontSize: '28px', fontWeight: 700 }}
              />
            </div>
          </Col>
          <Col span={numberColSpan}>
            <div style={{
              background: 'linear-gradient(135deg, #fa709a 0%, #fee140 100%)',
              borderRadius: '12px',
              padding: '20px',
              textAlign: 'center',
              boxShadow: '0 4px 12px rgba(250, 112, 154, 0.3)',
              transition: 'transform 0.2s, box-shadow 0.2s',
              cursor: 'pointer'
            }}
            onMouseEnter={(e) => {
              e.currentTarget.style.transform = 'translateY(-4px)';
              e.currentTarget.style.boxShadow = '0 6px 16px rgba(250, 112, 154, 0.4)';
            }}
            onMouseLeave={(e) => {
              e.currentTarget.style.transform = 'translateY(0)';
              e.currentTarget.style.boxShadow = '0 4px 12px rgba(250, 112, 154, 0.3)';
            }}
            >
              <Statistic
                title={<span style={{ color: 'rgba(255,255,255,0.9)', fontSize: '14px' }}>课程总数</span>}
                loading={loading}
                value={indexState?.course_count || 0}
                valueStyle={{ color: '#fff', fontSize: '28px', fontWeight: 700 }}
              />
            </div>
          </Col>
          <Col span={numberColSpan}>
            <div style={{
              background: 'linear-gradient(135deg, #30cfd0 0%, #330867 100%)',
              borderRadius: '12px',
              padding: '20px',
              textAlign: 'center',
              boxShadow: '0 4px 12px rgba(48, 207, 208, 0.3)',
              transition: 'transform 0.2s, box-shadow 0.2s',
              cursor: 'pointer'
            }}
            onMouseEnter={(e) => {
              e.currentTarget.style.transform = 'translateY(-4px)';
              e.currentTarget.style.boxShadow = '0 6px 16px rgba(48, 207, 208, 0.4)';
            }}
            onMouseLeave={(e) => {
              e.currentTarget.style.transform = 'translateY(0)';
              e.currentTarget.style.boxShadow = '0 4px 12px rgba(48, 207, 208, 0.3)';
            }}
            >
              <Statistic
                title={<span style={{ color: 'rgba(255,255,255,0.9)', fontSize: '14px' }}>已点评课程数</span>}
                loading={loading}
                value={indexState?.course_with_review_count || 0}
                valueStyle={{ color: '#fff', fontSize: '28px', fontWeight: 700 }}
              />
            </div>
          </Col>
          <Col span={numberColSpan}>
            <div style={{
              background: 'linear-gradient(135deg, #a8edea 0%, #fed6e3 100%)',
              borderRadius: '12px',
              padding: '20px',
              textAlign: 'center',
              boxShadow: '0 4px 12px rgba(168, 237, 234, 0.3)',
              transition: 'transform 0.2s, box-shadow 0.2s',
              cursor: 'pointer'
            }}
            onMouseEnter={(e) => {
              e.currentTarget.style.transform = 'translateY(-4px)';
              e.currentTarget.style.boxShadow = '0 6px 16px rgba(168, 237, 234, 0.4)';
            }}
            onMouseLeave={(e) => {
              e.currentTarget.style.transform = 'translateY(0)';
              e.currentTarget.style.boxShadow = '0 4px 12px rgba(168, 237, 234, 0.3)';
            }}
            >
              <Statistic
                title={<span style={{ color: '#262626', fontSize: '14px', fontWeight: 500 }}>今日访客</span>}
                loading={loading}
                value={indexState?.today_visitors || 0}
                suffix="人"
                valueStyle={{ color: '#262626', fontSize: '28px', fontWeight: 700 }}
              />
            </div>
          </Col>
          <Col span={numberColSpan}>
            <div style={{
              background: 'linear-gradient(135deg, #ffecd2 0%, #fcb69f 100%)',
              borderRadius: '12px',
              padding: '20px',
              textAlign: 'center',
              boxShadow: '0 4px 12px rgba(252, 182, 159, 0.3)',
              transition: 'transform 0.2s, box-shadow 0.2s',
              cursor: 'pointer'
            }}
            onMouseEnter={(e) => {
              e.currentTarget.style.transform = 'translateY(-4px)';
              e.currentTarget.style.boxShadow = '0 6px 16px rgba(252, 182, 159, 0.4)';
            }}
            onMouseLeave={(e) => {
              e.currentTarget.style.transform = 'translateY(0)';
              e.currentTarget.style.boxShadow = '0 4px 12px rgba(252, 182, 159, 0.3)';
            }}
            >
              <Statistic
                title={<span style={{ color: '#262626', fontSize: '14px', fontWeight: 500 }}>总访客数</span>}
                loading={loading}
                value={indexState?.total_visitors || 0}
                suffix="人"
                valueStyle={{ color: '#262626', fontSize: '28px', fontWeight: 700 }}
              />
            </div>
          </Col>
        </Row>
      </Card>

      {hasData && (
        <>
      <Row gutter={[20, 20]}>
        <Col span={figureColSpan}>
          <Card 
            title={<span style={{ fontSize: '16px', fontWeight: 600 }}>点评推荐指数分布</span>}
            style={{
              borderRadius: '12px',
              boxShadow: '0 2px 8px rgba(0,0,0,0.08)',
              border: 'none',
              transition: 'all 0.3s'
            }}
            bodyStyle={{ padding: '24px' }}
          >
            {indexState?.review_rating_dist && indexState.review_rating_dist.length > 0 ? (
              <ResponsiveContainer height={chartHeight}>
                <BarChart
                  data={indexState.review_rating_dist}
                  margin={chartMargin}
                >
                  <defs>
                    <linearGradient id="reviewRatingGradient" x1="0" y1="0" x2="0" y2="1">
                      <stop offset="0%" stopColor="#1890ff" stopOpacity={0.8}/>
                      <stop offset="100%" stopColor="#096dd9" stopOpacity={0.6}/>
                    </linearGradient>
                  </defs>
                  <XAxis 
                    dataKey="value"
                    tick={{ fill: '#666', fontSize: 12 }}
                    axisLine={{ stroke: '#e8e8e8' }}
                  >
                    <Label value="推荐指数" offset={0} position="insideBottom" style={{ fill: '#262626', fontSize: 13 }} />
                  </XAxis>
                  <YAxis 
                    tick={{ fill: '#666', fontSize: 12 }}
                    axisLine={{ stroke: '#e8e8e8' }}
                  />
                  <Tooltip content={<CustomTooltip />} />
                  <Bar 
                    name="点评数量" 
                    dataKey="count" 
                    fill="url(#reviewRatingGradient)"
                    radius={[8, 8, 0, 0]}
                    animationDuration={1000}
                  />
                </BarChart>
              </ResponsiveContainer>
            ) : (
              <div style={{ textAlign: "center", padding: "40px", color: "#999" }}>
                暂无数据
              </div>
            )}
          </Card>
        </Col>
        <Col span={figureColSpan}>
          <Card 
            title={<span style={{ fontSize: '16px', fontWeight: 600 }}>课程推荐指数分布</span>}
            style={{
              borderRadius: '12px',
              boxShadow: '0 2px 8px rgba(0,0,0,0.08)',
              border: 'none'
            }}
            bodyStyle={{ padding: '24px' }}
          >
            {indexState?.course_review_avg_dist && indexState.course_review_avg_dist.length > 0 ? (
              <ResponsiveContainer height={chartHeight}>
                <BarChart
                  data={indexState.course_review_avg_dist}
                  margin={{ left: 0, right: 0, top: 5, bottom: 5 }}
                >
                  <defs>
                    <linearGradient id="courseRatingGradient" x1="0" y1="0" x2="0" y2="1">
                      <stop offset="0%" stopColor="#52c41a" stopOpacity={0.8}/>
                      <stop offset="100%" stopColor="#389e0d" stopOpacity={0.6}/>
                    </linearGradient>
                  </defs>
                  <XAxis 
                    dataKey="value" 
                    tick={IntervalAxisTick}
                    tick={{ fill: '#666', fontSize: 12 }}
                    axisLine={{ stroke: '#e8e8e8' }}
                  >
                    <Label value="推荐指数" offset={0} position="insideBottom" style={{ fill: '#262626', fontSize: 13 }} />
                  </XAxis>
                  <YAxis 
                    tick={{ fill: '#666', fontSize: 12 }}
                    axisLine={{ stroke: '#e8e8e8' }}
                  />
                  <Tooltip content={<CustomTooltip />} />
                  <Bar 
                    name="课程数量" 
                    dataKey="count" 
                    fill="url(#courseRatingGradient)"
                    radius={[8, 8, 0, 0]}
                    animationDuration={1000}
                  />
                </BarChart>
              </ResponsiveContainer>
            ) : (
              <div style={{ textAlign: "center", padding: "40px", color: "#999" }}>
                暂无数据
              </div>
            )}
          </Card>
        </Col>
      </Row>
      <Row gutter={[20, 20]}>
        <Col span={24}>
          <Card 
            title={<span style={{ fontSize: '16px', fontWeight: 600 }}>课程点评数量分布</span>}
            style={{
              borderRadius: '12px',
              boxShadow: '0 2px 8px rgba(0,0,0,0.08)',
              border: 'none'
            }}
            bodyStyle={{ padding: '24px' }}
          >
            {indexState?.course_review_count_dist && indexState.course_review_count_dist.length > 0 ? (
              <ResponsiveContainer height={chartHeight}>
                <BarChart
                  data={indexState.course_review_count_dist}
                  margin={{ left: 0, right: 0, top: 5, bottom: 5 }}
                >
                  <defs>
                    <linearGradient id="reviewCountGradient" x1="0" y1="0" x2="0" y2="1">
                      <stop offset="0%" stopColor="#722ed1" stopOpacity={0.8}/>
                      <stop offset="100%" stopColor="#531dab" stopOpacity={0.6}/>
                    </linearGradient>
                  </defs>
                  <XAxis 
                    dataKey="value"
                    tick={{ fill: '#666', fontSize: 12 }}
                    axisLine={{ stroke: '#e8e8e8' }}
                  >
                    <Label value="点评数量" offset={0} position="insideBottom" style={{ fill: '#262626', fontSize: 13 }} />
                  </XAxis>
                  <YAxis 
                    tick={{ fill: '#666', fontSize: 12 }}
                    axisLine={{ stroke: '#e8e8e8' }}
                  />
                  <Tooltip content={<CustomTooltip />} />
                  <Bar 
                    name="课程数量" 
                    dataKey="count" 
                    fill="url(#reviewCountGradient)"
                    radius={[8, 8, 0, 0]}
                    animationDuration={1000}
                  />
                </BarChart>
              </ResponsiveContainer>
            ) : (
              <div style={{ textAlign: "center", padding: "40px", color: "#999" }}>
                暂无数据
              </div>
            )}
          </Card>
        </Col>
      </Row>
      <Row gutter={[16, 16]}>
        <Col span={figureColSpan}>
          <Card title="新增用户">
            {indexState?.user_join_time && indexState.user_join_time.length > 0 ? (
              <ResponsiveContainer height={chartHeight}>
                <LineChart
                  data={indexState.user_join_time}
                  margin={{ left: 0, right: 0, top: 5, bottom: 5 }}
                >
                  <XAxis dataKey="date" />
                  <YAxis />
                  <Tooltip />
                  <Line type="monotone" dataKey="count" stroke="#8884d8" dot={false} />
                  <Brush 
                    dataKey="date" 
                    height={30}
                    startIndex={Math.max(0, (indexState.user_join_time?.length || 0) - 30)}
                    endIndex={(indexState.user_join_time?.length || 0) - 1}
                    tickFormatter={(value) => {
                      if (typeof value === 'string' && value.length > 10) {
                        return value.substring(5);
                      }
                      return value;
                    }}
                  />
                </LineChart>
              </ResponsiveContainer>
            ) : (
              <div style={{ textAlign: "center", padding: "40px", color: "#999" }}>
                暂无数据
              </div>
            )}
          </Card>
        </Col>
        <Col span={figureColSpan}>
          <Card title="新增点评">
            {indexState?.review_create_time && indexState.review_create_time.length > 0 ? (
              <ResponsiveContainer height={chartHeight}>
                <LineChart
                  data={indexState.review_create_time}
                  margin={{ left: 0, right: 0, top: 5, bottom: 5 }}
                >
                  <XAxis dataKey="date" />
                  <YAxis />
                  <Tooltip />
                  <Line type="monotone" dataKey="count" stroke="#8884d8" dot={false} />
                  <Brush 
                    dataKey="date" 
                    height={30}
                    startIndex={Math.max(0, (indexState.review_create_time?.length || 0) - 30)}
                    endIndex={(indexState.review_create_time?.length || 0) - 1}
                    tickFormatter={(value) => {
                      if (typeof value === 'string' && value.length > 10) {
                        return value.substring(5);
                      }
                      return value;
                    }}
                  />
                </LineChart>
              </ResponsiveContainer>
            ) : (
              <div style={{ textAlign: "center", padding: "40px", color: "#999" }}>
                暂无数据
              </div>
            )}
          </Card>
        </Col>
      </Row>
      
      {/* 访问统计图表 */}
      <Row gutter={[20, 20]}>
        <Col span={figureColSpan}>
          <Card 
            title={<span style={{ fontSize: '16px', fontWeight: 600 }}>新增用户</span>}
            style={{
              borderRadius: '12px',
              boxShadow: '0 2px 8px rgba(0,0,0,0.08)',
              border: 'none'
            }}
            bodyStyle={{ padding: '24px' }}
          >
            {indexState?.user_join_time && indexState.user_join_time.length > 0 ? (
              <ResponsiveContainer height={chartHeight}>
                <LineChart
                  data={indexState.user_join_time}
                  margin={{ left: 0, right: 0, top: 5, bottom: 5 }}
                >
                  <defs>
                    <linearGradient id="userJoinGradient" x1="0" y1="0" x2="0" y2="1">
                      <stop offset="0%" stopColor="#1890ff" stopOpacity={0.3}/>
                      <stop offset="100%" stopColor="#1890ff" stopOpacity={0}/>
                    </linearGradient>
                  </defs>
                  <XAxis 
                    dataKey="date" 
                    tick={{ fill: '#666', fontSize: 11 }}
                    axisLine={{ stroke: '#e8e8e8' }}
                  />
                  <YAxis 
                    tick={{ fill: '#666', fontSize: 12 }}
                    axisLine={{ stroke: '#e8e8e8' }}
                  />
                  <Tooltip content={<CustomTooltip />} />
                  <Line 
                    type="monotone" 
                    dataKey="count" 
                    stroke="#1890ff" 
                    strokeWidth={3}
                    dot={{ fill: '#1890ff', r: 4 }}
                    activeDot={{ r: 6 }}
                    animationDuration={1000}
                  />
                  <Brush 
                    dataKey="date" 
                    height={30}
                    startIndex={Math.max(0, (indexState.user_join_time?.length || 0) - 30)}
                    endIndex={(indexState.user_join_time?.length || 0) - 1}
                    tickFormatter={(value) => {
                      if (typeof value === 'string' && value.length > 10) {
                        return value.substring(5);
                      }
                      return value;
                    }}
                    fill="#f0f0f0"
                  />
                </LineChart>
              </ResponsiveContainer>
            ) : (
              <div style={{ textAlign: "center", padding: "40px", color: "#999" }}>
                暂无数据
              </div>
            )}
          </Card>
        </Col>
        <Col span={figureColSpan}>
          <Card 
            title={<span style={{ fontSize: '16px', fontWeight: 600 }}>新增点评</span>}
            style={{
              borderRadius: '12px',
              boxShadow: '0 2px 8px rgba(0,0,0,0.08)',
              border: 'none'
            }}
            bodyStyle={{ padding: '24px' }}
          >
            {indexState?.review_create_time && indexState.review_create_time.length > 0 ? (
              <ResponsiveContainer height={chartHeight}>
                <LineChart
                  data={indexState.review_create_time}
                  margin={{ left: 0, right: 0, top: 5, bottom: 5 }}
                >
                  <defs>
                    <linearGradient id="reviewCreateGradient" x1="0" y1="0" x2="0" y2="1">
                      <stop offset="0%" stopColor="#52c41a" stopOpacity={0.3}/>
                      <stop offset="100%" stopColor="#52c41a" stopOpacity={0}/>
                    </linearGradient>
                  </defs>
                  <XAxis 
                    dataKey="date" 
                    tick={{ fill: '#666', fontSize: 11 }}
                    axisLine={{ stroke: '#e8e8e8' }}
                  />
                  <YAxis 
                    tick={{ fill: '#666', fontSize: 12 }}
                    axisLine={{ stroke: '#e8e8e8' }}
                  />
                  <Tooltip content={<CustomTooltip />} />
                  <Line 
                    type="monotone" 
                    dataKey="count" 
                    stroke="#52c41a" 
                    strokeWidth={3}
                    dot={{ fill: '#52c41a', r: 4 }}
                    activeDot={{ r: 6 }}
                    animationDuration={1000}
                  />
                  <Brush 
                    dataKey="date" 
                    height={30}
                    startIndex={Math.max(0, (indexState.review_create_time?.length || 0) - 30)}
                    endIndex={(indexState.review_create_time?.length || 0) - 1}
                    tickFormatter={(value) => {
                      if (typeof value === 'string' && value.length > 10) {
                        return value.substring(5);
                      }
                      return value;
                    }}
                    fill="#f0f0f0"
                  />
                </LineChart>
              </ResponsiveContainer>
            ) : (
              <div style={{ textAlign: "center", padding: "40px", color: "#999" }}>
                暂无数据
              </div>
            )}
          </Card>
        </Col>
      </Row>
      
      <Row gutter={[20, 20]}>
        <Col span={figureColSpan}>
          <Card 
            title={<span style={{ fontSize: '16px', fontWeight: 600 }}>每日访客统计</span>}
            style={{
              borderRadius: '12px',
              boxShadow: '0 2px 8px rgba(0,0,0,0.08)',
              border: 'none'
            }}
            bodyStyle={{ padding: '24px' }}
          >
            {indexState?.visitor_daily_stats && indexState.visitor_daily_stats.length > 0 ? (
              <ResponsiveContainer height={chartHeight}>
                <LineChart
                  data={indexState.visitor_daily_stats}
                  margin={{ left: 0, right: 0, top: 5, bottom: 5 }}
                >
                  <defs>
                    <linearGradient id="visitorDailyGradient" x1="0" y1="0" x2="0" y2="1">
                      <stop offset="0%" stopColor="#fa8c16" stopOpacity={0.3}/>
                      <stop offset="100%" stopColor="#fa8c16" stopOpacity={0}/>
                    </linearGradient>
                  </defs>
                  <XAxis 
                    dataKey="date" 
                    tick={{ fill: '#666', fontSize: 11 }}
                    axisLine={{ stroke: '#e8e8e8' }}
                  />
                  <YAxis 
                    tick={{ fill: '#666', fontSize: 12 }}
                    axisLine={{ stroke: '#e8e8e8' }}
                  />
                  <Tooltip content={<CustomTooltip />} />
                  <Line 
                    type="monotone" 
                    dataKey="count" 
                    stroke="#fa8c16" 
                    strokeWidth={3}
                    dot={{ fill: '#fa8c16', r: 4 }}
                    activeDot={{ r: 6 }}
                    animationDuration={1000}
                  />
                  <Brush 
                    dataKey="date" 
                    height={30}
                    startIndex={Math.max(0, (indexState.visitor_daily_stats?.length || 0) - 30)}
                    endIndex={(indexState.visitor_daily_stats?.length || 0) - 1}
                    tickFormatter={(value) => {
                      if (typeof value === 'string' && value.length > 10) {
                        return value.substring(5);
                      }
                      return value;
                    }}
                    fill="#f0f0f0"
                  />
                </LineChart>
              </ResponsiveContainer>
            ) : (
              <div style={{ textAlign: "center", padding: "40px", color: "#999" }}>
                暂无数据
              </div>
            )}
          </Card>
        </Col>
        <Col span={figureColSpan}>
          <Card 
            title={<span style={{ fontSize: '16px', fontWeight: 600 }}>访客地理分布</span>}
            style={{
              borderRadius: '12px',
              boxShadow: '0 2px 8px rgba(0,0,0,0.08)',
              border: 'none'
            }}
            bodyStyle={{ padding: '24px' }}
          >
            {indexState?.country_distribution && indexState.country_distribution.length > 0 ? (
              <ResponsiveContainer height={chartHeight}>
                <PieChart>
                  <Pie
                    data={indexState.country_distribution}
                    cx="50%"
                    cy="50%"
                    labelLine={false}
                    label={({ name, percent }: any) => 
                      screens.xs 
                        ? (percent > 0.1 ? `${name} ${(percent * 100).toFixed(0)}%` : '') 
                        : `${name} ${(percent * 100).toFixed(0)}%`
                    }
                    outerRadius={screens.xs ? 60 : 90}
                    fill="#8884d8"
                    dataKey="count"
                    animationDuration={1000}
                  >
                    {indexState.country_distribution.map((entry: any, index: number) => (
                      <Cell 
                        key={`cell-${index}`} 
                        fill={COLORS[index % COLORS.length]}
                        style={{ 
                          filter: 'drop-shadow(0 2px 4px rgba(0,0,0,0.1))',
                          transition: 'all 0.3s'
                        }}
                      />
                    ))}
                  </Pie>
                  <Tooltip content={<CustomTooltip />} />
                  <Legend 
                    verticalAlign="bottom" 
                    height={36}
                    wrapperStyle={{ fontSize: '12px' }}
                  />
                </PieChart>
              </ResponsiveContainer>
            ) : (
              <div style={{ textAlign: "center", padding: "40px", color: "#999" }}>
                暂无数据
              </div>
            )}
          </Card>
        </Col>
      </Row>
      
      {/* 城市分布 */}
      <Row gutter={[20, 20]}>
        <Col span={24}>
          <Card 
            title={<span style={{ fontSize: '16px', fontWeight: 600 }}>热门访问城市</span>}
            style={{
              borderRadius: '12px',
              boxShadow: '0 2px 8px rgba(0,0,0,0.08)',
              border: 'none'
            }}
            bodyStyle={{ padding: '24px' }}
          >
            {indexState?.city_distribution && indexState.city_distribution.length > 0 ? (
              <ResponsiveContainer height={chartHeight}>
                <BarChart
                  data={indexState.city_distribution}
                  margin={{ left: 0, right: 0, top: 5, bottom: 5 }}
                >
                  <defs>
                    <linearGradient id="cityGradient" x1="0" y1="0" x2="0" y2="1">
                      <stop offset="0%" stopColor="#13c2c2" stopOpacity={0.8}/>
                      <stop offset="100%" stopColor="#08979c" stopOpacity={0.6}/>
                    </linearGradient>
                  </defs>
                  <XAxis 
                    dataKey="name"
                    tick={{ fill: '#666', fontSize: 11 }}
                    axisLine={{ stroke: '#e8e8e8' }}
                    angle={-45}
                    textAnchor="end"
                    height={80}
                  >
                    <Label value="城市" offset={0} position="insideBottom" style={{ fill: '#262626', fontSize: 13 }} />
                  </XAxis>
                  <YAxis 
                    tick={{ fill: '#666', fontSize: 12 }}
                    axisLine={{ stroke: '#e8e8e8' }}
                  />
                  <Tooltip content={<CustomTooltip />} />
                  <Bar 
                    name="访客数量" 
                    dataKey="count" 
                    fill="url(#cityGradient)"
                    radius={[8, 8, 0, 0]}
                    animationDuration={1000}
                  />
                </BarChart>
              </ResponsiveContainer>
            ) : (
              <div style={{ textAlign: "center", padding: "40px", color: "#999" }}>
                暂无数据
              </div>
            )}
          </Card>
        </Col>
      </Row>
        </>
      )}
    </>
  );
};

export default StatisticPage;
