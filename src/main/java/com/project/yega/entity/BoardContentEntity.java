package com.project.yega.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name="BOARD_CONTENT")
public class BoardContentEntity {
    @Id @GeneratedValue
    @Column(name="CONTENT_SEQ")
    private int id;

    @ManyToOne
    @JoinColumn(name = "BOARD_ID")
    private BoardEntity board;
    
    private String contentSub;	//글제목
    private String authorId;  	//작성자아이디
    private String createDt;	//생성일시
    private String alarmYn;		//공지여부
    private String displayYn;	//전시여부
    private String lockYn;		//비밀글여부
    private String contentPw;	//글비밀번호
    private String contentSbst;	//글내용
    private int lookUpCnt;		//조회수

}
