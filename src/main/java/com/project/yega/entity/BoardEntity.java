package com.project.yega.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name="BOARD")
public class BoardEntity {
    @Id @GeneratedValue
    @Column(name="BOARD_ID")
    private int id;

    private String boardNm;		//게시판명
    private String boardTypCd;  //게시판유형코드
    private String createDt;	//게시판생성일시
    private String useYn;		//사용여부
    private String orderSeq;	//정렬순서

}
