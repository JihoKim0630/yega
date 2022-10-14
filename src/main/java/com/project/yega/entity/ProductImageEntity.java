package com.project.yega.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name="PRODUCT_IMG_INFO")
public class ProductImageEntity {
    @Id @GeneratedValue
    @Column(name="FILE_SEQ")
    private int fileSeq;

    @ManyToOne
    @JoinColumn(name = "PRODUCT_ID")
    private ProductEntity product;
    
    private String originFileNm; //원본파일이름
    private String serverFileNm; //서버파일이름
    private String thumbNail;	 //썸네일
    private String repTumbNailYn; //대표썸네일 여부
    private int fileSize;		//파일크기
    private String createDt;  //생성날짜
    private String upateDt;	 //수정날짜


}
