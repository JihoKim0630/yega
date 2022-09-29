package com.project.yega.entity;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Data
@Getter @Setter
@Entity
public class Category {
    @Id @GeneratedValue
    @Column(name="CATEGORY_ID")
    private int id;

    private String categoryNm;
    private int categoryLvl;


}
