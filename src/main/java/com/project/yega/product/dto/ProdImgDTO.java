package com.project.yega.product.dto;

import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import com.project.yega.entity.ProductEntity;

import lombok.Data;


//문의사항 DTO
@Data
public class ProdImgDTO {
	private int fileSeq;						//
    private String productId;	//카테고리 ID (외래키)
    private String originImgNm;			//실제이미지명
    private String serverImgNm; 		//서버이미지명()
    private String imgPath; 			//서버이미지경로
    private String mainImgYn; 		//메인이미지여부(상품게시판에 노출)
    
}
