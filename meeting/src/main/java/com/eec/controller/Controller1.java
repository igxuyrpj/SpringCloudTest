package com.eec.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.eec.entity.User;

@Controller
public class Controller1 {

	@Autowired
	private com.eec.service.UserService userService;
	
	
	@RequestMapping("/login")
	public String userLogin(HttpServletRequest request,HttpServletResponse response) throws IOException{
		   
		 String pwd = request.getParameter("password");
	     String name = request.getParameter("username");
	     
	      HttpSession session = request.getSession();
	      
	      session.setAttribute("name", name);
	     // session.setAttribute("num", num);
	      
	    /*  System.out.println(session.getAttribute("userPhone")+"111111111111111111");*/
	      
	/*      
     if ("admin".equals(name) && "111111".equals(pwd)) {
          response.sendRedirect("index.jsp");
	     }*/ 
	      if ("admin".equals(name) && "111111".equals(pwd)) {
	      	
	     	 return "redirect:/meeting/admin";
	 	     }
    
	   
		User stu = userService.getUserName(name);
		if(stu!=null&&pwd.equals(stu.getPassword())){
			
			return "redirect:/index.jsp";
		}else{
			request.setAttribute("info", 1);
			return "forward:login.jsp";
		}
	}
	//注销登录
	@RequestMapping("/logOut")
	public String userlogOut(HttpServletRequest request,HttpServletResponse response) throws IOException{
		
		// String name = request.getParameter("phone");
	    //String pwd = request.getParameter("password");
	     
	     // request.getSession().setAttribute("userPhone", name);
	  
	     // HttpSession session = request.getSession();
	     // 
	     // session.setAttribute("userPhone", name);
	      
	    /*  System.out.println(session.getAttribute("userPhone")+"111111111111111111");*/
	      
		 request.getSession().removeAttribute("name");
		 request.getSession().invalidate();
    
		 return "redirect:/index.jsp";
		
	}
	
	
	
	//验证用户名是否重复
	
	@RequestMapping("/check")
	
	public void CheckUser(HttpServletRequest request,HttpServletResponse response) throws IOException{
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8"); 
		
		String name1 = request.getParameter("name");	
		
		String name=new String(name1.getBytes("ISO8859-1"),"UTF-8");
		
		/*System.out.println(num+"sssssssssssssssssssssssss");*/
		User user = userService.getUserName(name);
		if(user!=null){
			response.getWriter().write("1"); //存在
		}else{
			response.getWriter().write("0"); //不存在
		}
	}
	//获取学校信息
	@RequestMapping("/goSchool") 
	public String getAllStu(HttpServletRequest request,HttpServletResponse response) throws IOException{
		request.setCharacterEncoding("utf-8");  
		response.setCharacterEncoding("utf-8");
		String school=request.getParameter("school");
		
		if(school.equals("巢湖学院")){
			
			return "forward:login.jsp";
		}else{
			request.setAttribute("info", 1);
			return "forward:chinaren.jsp";


		}
		
	}
	
	@RequestMapping("/register")
	public String register(HttpServletRequest request,User user) throws IOException{
		long times = System.currentTimeMillis();
		Date time=new Date(times);
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		user.setDate(sdf.format(time));		 
	      userService.insertUser(user);	      
	      return "forward:login.jsp";
	}
	/*
	@RequestMapping("/forget.do")
	public String getPassword(HttpServletRequest request) {
		int mob;
		if(request.getSession().getAttribute("mob")!=null){
			mob= (int) request.getSession().getAttribute("mob");
		}else{
			return "forward:forgetpassword.jsp";
		}
		
		String code=String.valueOf(mob);
		String tel=request.getParameter("mobile");
		String ucode=request.getParameter("ucode");
		
		User user=  userService.getUserByPhone(tel);
		//if(user==null){
		//	return "forgetpassword.jsp"; 
		//}else
		if(ucode.equals(code)){
			//将数据加入到数据库
			String pwd=request.getParameter("password");
			user.setUserpassword(pwd);//更改密码
			userService.updatePass(user);//更新密码
			return "forward:login.jsp";
		//}else{
		//	return "forgetpassword.jsp";
		//}
		
	}else{
		return "forward:forgetpassword.jsp";
	}
}*/
}
