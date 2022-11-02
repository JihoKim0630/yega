package com.project.yega.board.dto;

import com.project.yega.entity.BoardContentEntity;
import com.project.yega.entity.BoardEntity;

import lombok.Data;


//문의사항 DTO
@Data
public class BoardContentDTO {
    private int id;
    private int boardId;		//게시판 아이디
    private String boardNm;		//게시판이름
    private String contentSub;	//글제목
    private String authorId;  	//작성자아이디
    private String phoneNumber; //전화번호
    private String createDt;	//생성일시
    private String alarmYn;		//공지여부
    private String displayYn;	//전시여부
    private String lockYn;		//비밀글여부
    private String contentPw;	//글비밀번호
    private String contentSbst;	//글내용
    private int lookUpCnt;		//조회수

}
