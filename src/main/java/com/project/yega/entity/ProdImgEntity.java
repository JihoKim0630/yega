package com.project.yega.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.ColumnDefault;
import org.hibernate.annotations.DynamicInsert;

import lombok.Data;

@Entity
@Table(name="PROD_IMG")
@Data
@DynamicInsert
public class ProdImgEntity {
    @Id @GeneratedValue
    @Column(name="FILE_SEQ")
    private int fileSeq;						//

    @ManyToOne
    @JoinColumn(name = "PRODUCT_ID")
    private ProductEntity product;	//카테고리 ID (외래키)
    
    @Column(name="ORIGIN_IMG_NM")
    private String originImgNm;			//실제이미지명
    
    @Column(name="SERVER_IMG_NM")
    private String serverImgNm; 		//서버이미지명()
    
    @Column(name="IMG_PATH")
    private String imgPath; 			//서버이미지경로
    
    @Column(name="MAIN_IMG_YN")
    //@ColumnDefault("N")
    private String mainImgYn; 		//메인이미지여부(상품게시판에 노출)

    
	/*
	 * private int fileSize; //파일크기 private String createDt; //생성날짜 private String
	 * upateDt; //수정날짜
	 */}
