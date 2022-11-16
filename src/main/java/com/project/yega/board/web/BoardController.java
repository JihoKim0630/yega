package com.project.yega.board.web;

import java.util.Arrays;
import java.util.List;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.web.PageableDefault;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.http.ResponseEntity.BodyBuilder;
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
import com.project.yega.comn.JsonUtill;
import com.project.yega.comn.Pagination;
import com.project.yega.comn.dto.PageDTO;
import com.project.yega.entity.BoardContentEntity;

import lombok.Data;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Data
@Controller
@RequestMapping("/board")
public class BoardController {

	private final BoardService boardService;
	
	@Autowired
	private JsonUtill jsonUtill;
	
	@Autowired
	private Pagination pagination;

	@Autowired
	private ModelMapper modelmapper;

	 
	/*
	 * 게시판
	 */
	@GetMapping(value ="/boardList")
     public String geBoardList( Model model,
    		 					@RequestParam(value="boardId", defaultValue = "0") int boardId, 
    		 					@RequestParam(value="searchCon", required = false) String searchCon, 
    		 					@RequestParam(value="sWord", required = false) String sWord, 
    		 					@PageableDefault(sort = "id", direction = Direction.DESC, size = 10) Pageable pageable) {
		String boardNm = boardService.getBoard(boardId).getBoardNm();

		Page<BoardContentEntity> entityList;
		log.debug("boardId :"+boardId);
		log.debug("serchCon: "+searchCon);
		log.debug("검색어 없음 :"+sWord);
		if("".equals(sWord)||sWord==null) {//검색어가 없으면
			entityList= boardService.getBoardContentList(boardId, pageable);
			
		}else {
			entityList = boardService.searchContents(boardId, searchCon, sWord, pageable);
		}
		log.debug("entityList :" + entityList.getContent().toString());
		PageDTO pageDTO = pagination.pagination(entityList, 5);
		
		
		List<BoardContentDTO> contentList = Arrays.asList(modelmapper.map(entityList.getContent(),BoardContentDTO[].class));
		//contentList.get(0).setPageDTO(pageDTO);
		/*
		 * for(int i = 0 ; i < contentList.size(); i++) { try {
		 * contentList.get(i).setContentSbst(URLEncoder.encode(
		 * contentList.get(i).getContentSbst(),"UTF-8")); } catch
		 * (UnsupportedEncodingException e) { // TODO Auto-generated catch block
		 * e.printStackTrace(); }
		 * 
		 * }
		 */
//     	model.addAttribute("contentList", jsonUtill.ObjToJson(contentList));
     	model.addAttribute("contentList",contentList);
     	log.debug("contentList :" + contentList.toString());
     	model.addAttribute("boardNm", boardNm);
     	model.addAttribute("boardId", boardId);
     	model.addAttribute("pageDTO", pageDTO);

    	return "board/enquiryList";
     }

	/*
	 * 문의사항 게시글 검색
	 */
	/*
	 * @PostMapping(value="/searchVal" )
	 * 
	 * @ResponseBody public ResponseEntity<List<BoardContentDTO>>
	 * getListBySword(@RequestBody BoardConSearchDto boardConSearchDto,
	 * 
	 * @PageableDefault(sort = "id", direction = Direction.DESC, size = 10) Pageable
	 * pageable){
	 * 
	 * log.debug("serchCon : " +boardConSearchDto.getSerchCon());
	 * Page<BoardContentEntity> entityList;
	 * 
	 * //String boardNm = boardService.getBoard(boardId).getBoardNm(); entityList =
	 * boardService.searchContents(boardConSearchDto.getSerchCon(),
	 * boardConSearchDto.getSWord(), pageable); List<BoardContentDTO> contentList =
	 * Arrays.asList(modelmapper.map(entityList.getContent(),BoardContentDTO[].class
	 * ));
	 * 
	 * contentList.get(0).setPageDTO(pagination.pagination(entityList, 10)); //첫번째에
	 * 페이징 관련 변수 축 log.debug("contentList.getContent() : " +contentList); return
	 * ResponseEntity.ok(contentList); }
	 */
	
     /*
      * 문의사항 게시글 폼
      */
     @GetMapping(value="/enquiry" )
     public String enquiryForm(@RequestParam(value="boardId",defaultValue = "0", required = false) int boardId,
				    		   @RequestParam(value="contentSeq",defaultValue = "0", required = false) int contentSeq, 
				    		    Model model){
    	 
    	 
    	 if(contentSeq!= 0) {//수정일 때
    		 BoardContentEntity content = boardService.getBoardContentDtl(contentSeq);
    		 model.addAttribute("reqData", content);
    		 model.addAttribute("boardId", content.getBoard().getId());
    		 model.addAttribute("reqType", "modify");
    		 log.debug("content : " + content.getContentSub());
    		 
    	 }else {//신규작성일 때
    		 model.addAttribute("boardId",boardId);
    		 model.addAttribute("reqType", "create");
    	 }
     	
    	 
     	return "board/enquiryForm";
     }
     
     /*
 	 * 문의사항 게시글 상세
 	 */
      @PostMapping(value ="/enquiryDtl")
      public String getEnquiryDtl(BoardContentDTO boardContentDTO, Model model) {
    	  log.debug("========>boardContentDTO\n" + boardContentDTO);
    	 if(boardContentDTO == null) {
    		 //잘못된 접근
    	 }
      	BoardContentEntity content = boardService.getBoardContentDtl(boardContentDTO.getId());
      	
      	
      	model.addAttribute("reqData", content);
      	model.addAttribute("boardId", content.getBoard().getId());

      	log.debug("========>content\n" + content);
      
     	 return "board/enquiryDtl";
      }
      
      /*
       * 게시글 비밀번호 확인
       */
      @PostMapping(value ="/pwCheck")
      @ResponseBody
      public <T> BodyBuilder pwCheck(@RequestBody BoardContentDTO boardContentDTO) {
    	  
    	  BoardContentEntity content = boardService.getBoardContentDtl(boardContentDTO.getId());
    	  
    	  if(content.getContentPw() != null && !content.getContentPw().equals(boardContentDTO.getContentPw())) {
        		log.debug("비밀번호 오류!!");
        		return ResponseEntity.status(HttpStatus.UNAUTHORIZED);
    	  }
    	  
    	  return ResponseEntity.ok();
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
