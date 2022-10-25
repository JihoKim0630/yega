package com.project.yega.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.data.annotation.CreatedDate;

import lombok.Data;

@Data
@Entity
@Table(name="COMN_CD")
public class ComnCdEntity {
    @Id @GeneratedValue
    @Column(name="BOARD_ID")
    private int id;

    private String lCd;		//게시판명
    private String mCd;		//게시판명
    private String cdNm;		//게시판명
    private int orderSeq;		//게시판명
    private String useYn;  //게시판유형코드
    private String ref1;		//사용여부
    private String ref2;		//사용여부
    private String ref3;		//사용여부
    
    @CreatedDate
    private String createDt;	//생성일시

}
