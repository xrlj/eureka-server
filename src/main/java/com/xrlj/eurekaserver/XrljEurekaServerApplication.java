package com.xrlj.eurekaserver;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.server.EnableEurekaServer;

@EnableEurekaServer
@SpringBootApplication
public class XrljEurekaServerApplication {

	public static void main(String[] args) {
		SpringApplication.run(XrljEurekaServerApplication.class, args);
	}

}

