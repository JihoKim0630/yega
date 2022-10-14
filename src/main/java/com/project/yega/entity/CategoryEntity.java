package com.project.yega.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name="CATEGORY")
public class CategoryEntity {
    @Id @GeneratedValue
    @Column(name="CATEGORY_ID")
    private int id;

    private String categoryNm;
    private int categoryLvl;


}
