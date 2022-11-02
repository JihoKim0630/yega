package com.project.yega.entity;

import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.ColumnDefault;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@AllArgsConstructor
@NoArgsConstructor
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
    
    @Column(name = "CONTENT_SUB", nullable = false, length = 100)
	private String contentSub;		//글제목 
    @Column(name = "AUTHOR_ID", nullable = false, length = 100)
    private String authorId;  		//작성자아이디
    @Column(name = "AUTHOR_EMAIL", nullable = true, length = 100)
    private String authorEmail;  	//작성자이메일
    @Column(name = "AUTHOR_PHONE_NUM", nullable = true, length = 20)
    private String authorPhoneNum;  //작성자연락처
    @ColumnDefault("N") 
    @Column(name = "ALARM_YN", nullable = false, length = 1)
    private String alarmYn;			//공지여부
    @ColumnDefault("Y") 
    @Column(name = "DISPLAY_YN", nullable = false, length = 1)
    private String displayYn;		//전시여부
    @ColumnDefault("N") 
    @Column(name = "LOCK_YN", nullable = false, length = 1)
    private String lockYn;			//비밀글여부
    @Column(name = "CONTENT_PW", nullable = true, length = 10)
    private String contentPw;		//글비밀번호
    @Lob
    private String contentSbst;		//글내용
    
    @ColumnDefault("0") 
    @Column(name="LOOK_UP_CNT", nullable = false, length = 10)
    private int lookUpCnt;			//조회수
    
    @CreatedDate
    @Column(name = "DREATE_DT", nullable = false)
    private LocalDateTime createDt;	//생성일시
    @LastModifiedDate
    @Column(name = "UPDATE_DT", nullable = true)
    private LocalDateTime updateDt;	//수정일시

}
