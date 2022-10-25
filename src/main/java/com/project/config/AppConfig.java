package com.project.config;

import org.json.JSONArray;
import org.modelmapper.ModelMapper;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class AppConfig {
	
	@Bean
	public ModelMapper modelmapper(){
		return new ModelMapper();
	}
	
	@Bean
	public JSONArray jsonArray() {
		return new JSONArray();
	}

}
