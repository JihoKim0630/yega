package com.project.yega.entity;

import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.ColumnDefault;
import org.hibernate.annotations.DynamicInsert;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;

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
    
    @Column(name="ORIGIN_IMG_NM", nullable = false, length = 500)
    private String originImgNm;			//실제이미지명
    
    @Column(name="SERVER_IMG_NM", nullable = false, length = 500)
    private String serverImgNm; 		//서버이미지명()
    
    @Column(name="IMG_PATH", nullable = false, length = 1000)
    private String imgPath; 			//서버이미지경로
    
    @Column(name="MAIN_IMG_YN", nullable = false, columnDefinition = "varchar(1) default 'N'")
    private String mainImgYn; 		//메인이미지여부(상품게시판에 노출)
    
    @CreatedDate
    @Column(name="CREATE_DT")
    private LocalDateTime createDt;	//생성일시
    @LastModifiedDate
    @Column(name="UPDATE_DT")
    private LocalDateTime updateDt;	//수정일시

    
	/*
	 * private int fileSize; //파일크기 private String createDt; //생성날짜 private String
	 * upateDt; //수정날짜
	 */}
