package com.project.yega.board.dto;

import com.project.yega.entity.BoardContentEntity;
import com.project.yega.entity.BoardEntity;

import lombok.Data;


//문의사항 DTO
@Data
public class EnquiryOutDto {
    private int id;
    private int boardId;		//게시판 아이디
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
    
    public BoardContentEntity toEntity() {
    	//boardID로 BoardEntity를 가져와서 2번쨰 파람에 셋팅
    	
    	return new BoardContentEntity(
    			 0,
    			 null,
    			contentSub,	
    			  authorId,  	
    			  alarmYn,		
    			  displayYn,	
    			  lockYn,		
    			  contentPw,	
    			  contentSbst,
    			lookUpCnt	);
    }

}
