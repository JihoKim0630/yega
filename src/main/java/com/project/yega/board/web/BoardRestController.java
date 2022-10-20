package com.project.yega.board.web;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.project.yega.LoggingRunner;
import com.project.yega.board.dto.EnquiryInDto;
import com.project.yega.entity.BoardContentEntity;

import lombok.Data;

@Data
@RestController
@RequestMapping("/board")
public class BoardRestController {

	private final BoardService boardService;

	private Logger logger = LoggerFactory.getLogger(LoggingRunner.class);
	 
	/*
	 * 문의사항 게시판
	 */
     @RequestMapping(value ="/enquiryList")
     public String getEnquiryList(@RequestParam("boardId") int boardId, Model model) {
    	 
     	List<BoardContentEntity> contentList = boardService.getBoardContentList(boardId);
     	model.addAttribute("contentList", contentList);

     	System.out.println("========>contentList\n" + contentList);
     
    	 return "enquiry/enquiryList";
     }

     /*
      * 문의사항 게시글 폼
      */
     @RequestMapping(value="/enquiry" )
     public String enquiryForm(Model model){
     	
     	
     	return "enquiry/enquiryForm";
     }

     /*
      * 문의사항 게시글 create API
      */
     @PostMapping(value ="/insertContents")
     public BoardContentEntity putBoardContents(EnquiryInDto inputDto) {
    	 
    	 logger.debug("========inDTO : \n" + inputDto.toString());
    	 boardService.insertContents(inputDto);
    	 
    	 return null;
     }
     
    
}
