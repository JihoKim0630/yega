package com.project.config;

import org.json.JSONArray;
import org.modelmapper.ModelMapper;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.project.yega.comn.JsonUtill;
import com.project.yega.comn.Pagination;

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

	@Bean
	public ObjectMapper objectMapper() {
		return new ObjectMapper();
	}
	@Bean
	public JsonUtill jsonUtill() {
		return new JsonUtill();
	}
	@Bean
	public Pagination pagination() {
		return new Pagination();
	}
}
