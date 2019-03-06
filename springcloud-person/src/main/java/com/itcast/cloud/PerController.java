package com.itcast.cloud;

import org.springframework.cloud.client.loadbalancer.LoadBalanced;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;

@Controller
@Configuration
public class PerController {
     @Bean
     @LoadBalanced	
	public RestTemplate getRestTemplate(){
		return new RestTemplate();
	}
     @RequestMapping("/router")
     @ResponseBody
     public String router(){
    	 RestTemplate tpl=getRestTemplate();
    	String str=tpl.getForObject("http://first-police/call/5", String.class);
         return str;
     }
}
