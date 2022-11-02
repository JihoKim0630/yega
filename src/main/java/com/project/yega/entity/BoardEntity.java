package com.project.yega.entity;

import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.ColumnDefault;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;

import lombok.Data;

@Data
@Entity
@Table(name="BOARD")
public class BoardEntity {
    @Id @GeneratedValue
    @Column(name="BOARD_ID")
    private int id;

    @Column(name = "BOARD_NM", nullable = false, length = 255)
    private String boardNm;		//게시판명
    
    @Column(name = "BOARD_TYP_CD", nullable = false, length = 3)
    private String boardTypCd;  //게시판유형코드
    
    @Column(name = "BOARD_ENG_NM", nullable = false, length = 255)
    private String boardEngNm;  //게시판영문명
    
    @Column(name = "USE_YN", nullable = false, columnDefinition = "varchar(1) default 'Y'")
    private String useYn;		//사용여부
    
    @Column(name = "ORDER_SEQ", nullable = false, length = 3)
    private int orderSeq;	//정렬순서

    @CreatedDate
    @Column(name = "CREATE_DT", nullable = false)
    private LocalDateTime createDt;	//생성일시
    @LastModifiedDate
    @Column(name = "UPDATE_DT", nullable = true)
    private LocalDateTime updateDt;	//수정일시
}
