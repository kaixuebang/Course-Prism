/** @type {import('next').NextConfig} */
const nextConfig = {
  reactStrictMode: true,
  images: {
    unoptimized: true, // 暂时禁用图片优化以避免问题
  },
  async rewrites() {
    const remoteUrl = process.env.REMOTE_URL || process.env.NEXT_PUBLIC_REMOTE_URL || 'http://localhost:8000';
    return [
      {
        source: "/api/:path*",
        destination: `${remoteUrl}/api/:path*/`,
      },
      {
        source: "/oauth/:path*",
        destination: `${remoteUrl}/oauth/:path*/`,
      },
      {
        source: "/upload/:path*",
        destination: `${remoteUrl}/upload/:path*/`,
      },
      {
        source: "/static/:path*",
        destination: `${remoteUrl}/static/:path*/`,
      },
    ];
  },
};

module.exports = nextConfig;
