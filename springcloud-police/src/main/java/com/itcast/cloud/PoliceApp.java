package com.itcast.cloud;

import java.util.Scanner;

import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;


@SpringBootApplication
@EnableEurekaClient
public class PoliceApp {
	public static void main(String[] args) {
		Scanner scan=new Scanner(System.in);
		String port=scan.nextLine();
		new SpringApplicationBuilder(PoliceApp.class).properties("server.port="+port).run(args);
		//new SpringApplicationBuilder(PoliceApp.class).web(true).run(args);
	}
}
