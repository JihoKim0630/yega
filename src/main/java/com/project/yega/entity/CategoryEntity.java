package com.project.yega.entity;

import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Data;

@Data
@Entity
@Table(name="CATEGORY")
public class CategoryEntity {
    @Id @GeneratedValue
    @Column(name="CTG_ID")
    private int id;

    @Column(name="CTG_NM", nullable = false, length = 255)
    private String ctgNm;
    @Column(name="CTG_LVL", nullable = false, length = 3)
    private int ctgLvl;
    
    @ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "OPP_CTG_ID")
    @JsonIgnore
	private CategoryEntity parent;
	
    @CreatedDate
    @Column(name = "CREATE_DT", nullable = false)
    private LocalDateTime createDt;	//생성일시
    @LastModifiedDate
    @Column(name = "UPDATE_DT", nullable = true)
    private LocalDateTime updateDt;	//수정일시
    
	/*
	 * @OneToMany(mappedBy = "parent", fetch = FetchType.LAZY) private
	 * List<CategoryEntity> child = new ArrayList<>();
	 */
}
