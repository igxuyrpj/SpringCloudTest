package com.itcast.cloud;

import java.util.Scanner;

import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.cloud.netflix.eureka.server.EnableEurekaServer;


@SpringBootApplication
@EnableEurekaServer
public class CloudApp {
public static void main(String[] args) {
	//new SpringApplicationBuilder(CloudApp.class).web(true).run(args);
	Scanner input=new Scanner(System.in);
	String profiles=input.nextLine();
	new SpringApplicationBuilder(CloudApp.class).profiles(profiles).run(args);
	
}
}
