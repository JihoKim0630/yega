package com.project.yega.entity;

import lombok.Data;

import javax.persistence.*;

@Entity
@Data
public class Product {
    @Id @GeneratedValue
    private int id;

    private String productNm;
    private String productDtl;
    @ManyToOne
    @JoinColumn(name = "CATEGORY_ID")
    private Category category;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getProductNm() {
        return productNm;
    }

    public void setProductNm(String productNm) {
        this.productNm = productNm;
    }

    public String getProductDtl() {
        return productDtl;
    }

    public void setProductDtl(String productDtl) {
        this.productDtl = productDtl;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }
}
