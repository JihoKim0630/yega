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
@Table(name="PRODUCT")
@Data
@DynamicInsert
public class ProductEntity {
    @Id @GeneratedValue
    @Column(name="PRODUCT_ID")
    private int id;				//

    @Column(name="PROD_NM")
    private String productNm;	//상품명
    
    @Column(name="PROD_PRICE")
    @ColumnDefault("0") 
    private long prodPrice;	//상품가격
    
    @ManyToOne
    @JoinColumn(name = "CTG_ID")
    private CategoryEntity category;	//카테고리 ID (외래키)
    
    @Column(name="MNFC_COMPNY")
    private String mnfcCompny;	//제조사
    @Column(name="DISPLAY_YN")
    private String displayYn; //전시여부
    @Column(name="PROD_TAG")
    private String prodTag; //상품태그 

}
