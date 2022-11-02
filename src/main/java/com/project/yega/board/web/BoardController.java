package com.project.yega.board.web;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.web.PageableDefault;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.yega.board.dto.BoardContentDTO;
import com.project.yega.entity.BoardContentEntity;

import lombok.Data;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Data
@Controller
@RequestMapping("/board")
public class BoardController {

	private final BoardService boardService;

	 
	/*
	 * 게시판
	 */
	@GetMapping(value ="/boardList")
     public String geBoardList( Model model,
    		 					@RequestParam("boardId") int boardId, 
    		 					@RequestParam(value="serchCon",required = false) String serchCon, //검색조건
    		 					@RequestParam(value="sword",required = false) String sword,//검색어
    		 					@PageableDefault(sort = "id", direction = Direction.DESC, size = 10) Pageable pageable) {
		String boardNm = boardService.getBoard(boardId).getBoardNm();
		String boardEngNm = boardService.getBoard(boardId).getBoardEngNm();

		Page<BoardContentEntity> contentList;
		
		if(!"".equals(serchCon) ) {//검색조건이 있으면
			contentList = boardService.searchContents(serchCon, sword, pageable);
		}else {
			contentList = boardService.getBoardContentList(boardId, pageable);
		}
     	
     	/*페이징처리 관련 S*/
     	int startPage = Math.max(1, contentList.getPageable().getPageNumber()/10*10+1);
     	int endPage = Math.min(contentList.getTotalPages(), startPage+9);
     	boolean hasNext = true;
     	boolean hasPrev = true;
     	if(startPage <=1) {
     		hasPrev = false;
     	}
     	if(endPage >= contentList.getTotalPages()) {
     		hasNext = false;
     	}
     	model.addAttribute("startPage", startPage);
     	model.addAttribute("endPage", endPage);
     	model.addAttribute("currPage", contentList.getPageable().getPageNumber());
     	model.addAttribute("hasPrev", hasPrev);
     	model.addAttribute("hasNext", hasNext);
     	/*페이징처리 관련 E*/
     	
     	model.addAttribute("contentList", contentList.getContent());
     	model.addAttribute("boardNm", boardNm);
     	model.addAttribute("boardId", boardId);

     	String rtn = "board/"+boardEngNm+"List";
    	return "board/enquiryList";
     }

     /*
      * 문의사항 게시글 폼
      */
     @GetMapping(value="/enquiry" )
     public String enquiryForm(@RequestParam("boardId") int boardId, Model model){
    	model.addAttribute("boardId",boardId);
     	
     	return "board/enquiryForm";
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
      
     	 return "board/enquiryDtl";
      }
      

     /*
      * 게시글 create API
      */
     @PostMapping(value ="/insertContents")
     @ResponseBody
     public BoardContentEntity putBoardContents(@RequestBody BoardContentDTO inputDto) {
    	 
    	 log.debug("========inDTO : \n" + inputDto.toString());
    	 boardService.insertContents(inputDto);
    	 
    	 return null;
     }
     /*
      * 조회수 증가 API
      */
     @GetMapping(value ="/updateLookCnt/{contentSeq}")
     @ResponseBody
     public <T> ResponseEntity<T> updateLookCnt(@PathVariable("contentSeq") int contentSeq) {
    	 
    	 log.debug("========contentSeq : \n" + contentSeq);
    	 boardService.increaseLookCnt(contentSeq);
    	 
    	 return null;
     }
     
    
}
