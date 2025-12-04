import { useEffect, useLayoutEffect } from 'react';

// Use layout effect on client, regular effect on server to avoid hydration issues
const useIsomorphicLayoutEffect = typeof window !== 'undefined' ? useLayoutEffect : useEffect;

export default useIsomorphicLayoutEffect;