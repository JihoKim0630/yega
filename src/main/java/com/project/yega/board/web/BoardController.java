package com.project.yega.board.web;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.yega.board.dto.EnquiryInDto;
import com.project.yega.entity.BoardContentEntity;

import lombok.Data;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Data
@Controller
@RequestMapping("/board")
public class BoardController {

	private final BoardService boardService;

	//private Logger logger = LoggerFactory.getLogger(LoggingRunner.class);
	 
	/*
	 * 문의사항 게시판
	 */
	@GetMapping(value ="/enquiryList")
     public String getEnquiryList(@RequestParam("boardId") int boardId, Model model) {
    	 
     	List<BoardContentEntity> contentList = boardService.getBoardContentList(boardId);
     	model.addAttribute("contentList", contentList);

     	log.debug("========>contentList\n" + contentList);
     
    	 return "enquiry/enquiryList";
     }

     /*
      * 문의사항 게시글 폼
      */
     @GetMapping(value="/enquiry" )
     public String enquiryForm(@RequestParam("boardId") int boardId, Model model){
    	 model.addAttribute("boardId",boardId);
     	
     	return "enquiry/enquiryForm";
     }
     
     /*
 	 * 문의사항 게시글 상세
 	 */
      @GetMapping(value ="/enquiryDtl/{contentSeq}")
      public String getEnquiryDtl(@PathVariable("contentSeq") int contentSeq, Model model) {
     	 
      	BoardContentEntity content = boardService.getBoardContentDtl(contentSeq);
      	model.addAttribute("reqData", content);
      	model.addAttribute("boardId", content.getBoard().getId());

      	log.debug("========>content\n" + content);
      
     	 return "enquiry/enquiryDtl";
      }
      

     /*
      * 문의사항 게시글 create API
      */
     @PostMapping(value ="/insertContents")
     @ResponseBody
     public BoardContentEntity putBoardContents(@RequestBody EnquiryInDto inputDto) {
    	 
    	 log.debug("========inDTO : \n" + inputDto.toString());
    	 boardService.insertContents(inputDto);
    	 
    	 return null;
     }
     
    
}
