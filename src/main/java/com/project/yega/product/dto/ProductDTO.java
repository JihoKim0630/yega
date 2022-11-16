package com.project.yega.product.dto;

import java.util.List;

import com.project.yega.category.dto.CategoryDTO;
import com.project.yega.comn.dto.PageDTO;

import lombok.Data;


//문의사항 DTO
@Data
public class ProductDTO {
    private int id;				//상품아이디(키값)
    private String prodNm; 		//상품명
    private CategoryDTO category; 		//카테고리아이디
    private int categoryId; 		//카테고리아이디 
    private String displayYn;	//전시여부
    private String mnfcCompny;  //제조사명
    private long prodPrice; 	//상품가격
    private String prodTag; 	//상품태그
    private ProdImgDTO prodMainImg; //메인이미지
    private List<ProdImgDTO> prodImgList; //상품이미지리스트
    
    private PageDTO pageDTO;
    
}
