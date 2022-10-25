package com.project.yega.category.dto;

import lombok.Data;


//카테고리 DTO
@Data
public class CategoryDTO {
    private int id;
    private String ctgNm;	//글제목
    private int ctgLvl;  	//작성자아이디
    private int oppCtgId; //전화번호
    

}
