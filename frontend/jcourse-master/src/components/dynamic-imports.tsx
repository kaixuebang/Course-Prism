import dynamic from 'next/dynamic';
import { ComponentType } from 'react';

// Lazy load heavy components to improve initial page load
export const DynamicMDEditor = dynamic(() => import('@/components/md-editor'), {
  loading: () => <div>加载编辑器中...</div>,
  ssr: false, // Editor might have client-specific features
});

export const DynamicCharts = dynamic(() => import('recharts').then(mod => ({ default: mod.BarChart })), {
  loading: () => <div>加载图表中...</div>,
  ssr: false,
});

// Lazy load the markdown preview component 
export const DynamicMDPreview = dynamic(() => import('@/components/md-preview'), {
  loading: () => <div>加载预览中...</div>,
});

// Admin-only components
export const DynamicReportModal = dynamic(() => import('@/components/report-modal'), {
  loading: () => <div>加载中...</div>,
});

export const DynamicReviewRevisionModal = dynamic(() => import('@/components/review-revision-modal'), {
  loading: () => <div>加载中...</div>,
});

// Export a utility type for dynamic imports
export type DynamicComponent<T = {}> = ComponentType<T>;