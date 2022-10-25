package com.project.yega.entity;

import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.ColumnDefault;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

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
    
    public BoardContentEntity(int id, BoardEntity board, String contentSub, String authorId, 
			String alarmYn, String displayYn, String lockYn, String contentPw, String contentSbst, int lookUpCnt) {
		super();
		this.id = id;
		this.board = board;
		this.contentSub = contentSub;
		this.authorId = authorId;
		this.alarmYn = alarmYn;
		this.displayYn = displayYn;
		this.lockYn = lockYn;
		this.contentPw = contentPw;
		this.contentSbst = contentSbst;
		this.lookUpCnt = lookUpCnt;
	}
	public BoardContentEntity() {
		super();
		// TODO Auto-generated constructor stub
	}
	private String contentSub;		//글제목 
    private String authorId;  		//작성자아이디
    private String authorEmail;  	//작성자이메일
    private String authorPhoneNum;  //작성자연락처
    @CreationTimestamp
    private LocalDateTime createDt;	//생성일시
    @UpdateTimestamp
    private LocalDateTime updateDt;	//생성일시
    private String alarmYn;			//공지여부
    private String displayYn;		//전시여부
    private String lockYn;			//비밀글여부
    private String contentPw;		//글비밀번호
    private String contentSbst;		//글내용
    
    @ColumnDefault("0") 
    @Column(name="LOOK_UP_CNT", nullable = false, length = 10)
    private int lookUpCnt;			//조회수

}
