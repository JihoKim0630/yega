package com.project.yega.entity;

import lombok.Data;

import javax.persistence.*;

@Entity
@Table(name="PRODUCT")
@Data
public class ProductEntity {
    @Id @GeneratedValue
    @Column(name="PRODUCT_ID")
    private int id;

    private String productNm;
    private String productDtl;
    @ManyToOne
    @JoinColumn(name = "CATEGORY_ID")
    private CategoryEntity category;
    
}
