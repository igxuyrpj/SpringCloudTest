package cn.atzzy.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class LoginInterceptor implements HandlerInterceptor {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		  HttpSession session=request.getSession();
	        Object obj=session.getAttribute("name");
	        if(obj==null||obj.toString().equals("")){
	        	/*request.getRequestDispatcher("/videos/index").forward(request, response);*/
	        	response.sendRedirect(request.getContextPath()+"/login.jsp");
	            return false;
	        }else if(obj.toString().equals("admin")){
	        	return true;
	        }
	        return true;
	    }
	

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// TODO Auto-generated method stub

	}

}
