package com.project.yega.comn;

import java.io.File;
import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

public class JsonUtill {
	
	@Autowired
	private ObjectMapper objectMapper;

	/**
	 * Object -> JSON Str
	 * 
	 * @param obj : : Json으로 변환하기 위한 데이터 클래스
	 * @return : Json 문자열을 리턴한다.
	 */
	public String ObjToJson(Object obj) {
		if (obj == null) return null;
		
		String res = null;
		
		try {
			res =  objectMapper.writeValueAsString(obj);
		} catch (JsonProcessingException e) { e.printStackTrace(); }
		
		return res;
	}
	
	
	/**
	 * Object -> JSON File
	 * 
	 * @param obj : Json으로 변환하기 위한 데이터 클래스
	 * @param filePath : 출력할 JSON파일 경로
	 * @return : 생성된 파일 객체 리턴
	 */
	public File ObjToJson(Object obj, String filePath) {
		if (obj == null || filePath == null || filePath.equals("")) return null;
		
		File f = null;
		
		try {
			f = new File(filePath);
			objectMapper.writeValue(f, obj);
			
		} catch (IOException ie) { ie.printStackTrace(); }
		
		return f;
	}
}
