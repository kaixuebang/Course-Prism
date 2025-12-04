import { useUser } from '@/services/user';
import { useRouter } from 'next/router';
import { message } from 'antd';

interface AuthGuardLinkProps {
  href: string;
  children: React.ReactNode;
  loginMessage?: string;
}

const AuthGuardLink: React.FC<AuthGuardLinkProps> = ({ 
  href, 
  children, 
  loginMessage = "请先登录后再进行此操作" 
}) => {
  const { user, loading } = useUser();
  const router = useRouter();

  const handleClick = (e: React.MouseEvent) => {
    e.preventDefault();
    
    if (loading) {
      return;
    }
    
    if (!user) {
      message.warning(loginMessage);
      router.push(`/login?next=${encodeURIComponent(href)}`);
      return;
    }
    
    router.push(href);
  };

  return (
    <a href={href} onClick={handleClick}>
      {children}
    </a>
  );
};

export default AuthGuardLink;