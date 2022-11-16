package com.project.yega;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;

@SpringBootApplication
@ComponentScan("com")
@EnableJpaAuditing
public class YegaApplication {

	public static void main(String[] args) {
		SpringApplication.run(YegaApplication.class, args);
	}

}
