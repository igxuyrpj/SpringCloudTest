package com.itcast.cloud;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Controller {
   @RequestMapping("/call/{id}")
	public Police get(@PathVariable Integer id,HttpServletRequest request){
	   Police police=new Police();
	   police.setId(id);
	   police.setMessage(request.getRequestURL().toString());
	   police.setName("police:张三");
	   //System.out.println(police.toString());
	   return police;
	   
   }
}
