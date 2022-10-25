package com.project.yega.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Data;

@Data
@Entity
@Table(name="CATEGORY")
public class CategoryEntity {
    @Id @GeneratedValue
    @Column(name="CTG_ID")
    private int id;

    @Column(name="CTG_NM")
    private String ctgNm;
    @Column(name="CTG_LVL")
    private int ctgLvl;
    
    @ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "OPP_CTG_ID")
    @JsonIgnore
	private CategoryEntity parent;
	
	/*
	 * @OneToMany(mappedBy = "parent", fetch = FetchType.LAZY) private
	 * List<CategoryEntity> child = new ArrayList<>();
	 */
}
