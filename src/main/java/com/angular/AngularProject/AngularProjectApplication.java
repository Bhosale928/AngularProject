package com.angular.AngularProject;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.servlet.ModelAndView;

@SpringBootApplication
@ComponentScan(basePackages = {"com.angular.controllers", "com.angular.AngularProject"})
public class AngularProjectApplication {

	public static void main(String[] args) {
		SpringApplication.run(AngularProjectApplication.class, args);
	}

	@Bean
	public ModelAndView modelAndView() {
		return new ModelAndView();
	}

}
