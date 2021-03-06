package com.itcast.shiro;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.config.IniSecurityManagerFactory;
import org.apache.shiro.mgt.SecurityManager;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.util.Factory;

public class ShiroUtil {
  public static Subject login(String configFile,String userName,String password){
	//读取配置文件，初始化SecurityManager工厂
			Factory<SecurityManager> factory=new IniSecurityManagerFactory(configFile);
		     //x获取securityManager实例
			SecurityManager securityManager=factory.getInstance();
			  //把securityManager绑定到SecurityUtils
			SecurityUtils.setSecurityManager(securityManager);
			//得到当前执行的用户
			Subject currentUser=SecurityUtils.getSubject();
			//创建token令牌，用户名，密码
			UsernamePasswordToken token=new UsernamePasswordToken(userName,password);   
			System.out.println("token:"+token);
			try {
				currentUser.login(token);
				System.out.println("用户认证成功！");
			} catch (AuthenticationException e) {
				System.out.println("用户认证失败!");
			}
			//退出
			//currentUser.logout();
	       return currentUser;
  }
}
