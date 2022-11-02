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
@Table(name="PRODUCT")
@Data
@DynamicInsert
public class ProductEntity {
    @Id @GeneratedValue
    @Column(name="PRODUCT_ID")
    private int id;				//

    @Column(name="PROD_NM" , nullable = false, length = 500)
    private String prodNm;	//상품명
    
    @ColumnDefault("0") 
    @Column(name="PROD_PRICE" , nullable = false, length = 100)
    private long prodPrice;	//상품가격
    
    @ManyToOne
    @JoinColumn(name = "CTG_ID")
    private CategoryEntity category;	//카테고리 ID (외래키)
    
    @Column(name="MNFC_COMPNY" , nullable = false, length = 500)
    private String mnfcCompny;	//제조사
    
    @ColumnDefault("N")
    @Column(name="DISPLAY_YN" , nullable = false, length = 1)
    private String displayYn; //전시여부
    
    @Column(name="PROD_TAG" , nullable = true, length = 2000)
    private String prodTag; //상품태그 
    
    @CreatedDate
    @Column(name="CREATE_DT")
    private LocalDateTime createDt;	//생성일시
    @LastModifiedDate
    @Column(name="UPDATE_DT")
    private LocalDateTime updateDt;	//수정일시
    

}
