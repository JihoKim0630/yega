package com.project.yega.board.web;

import java.util.List;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.yega.board.dto.EnquiryInDto;
import com.project.yega.entity.BoardContentEntity;
import com.project.yega.entity.BoardEntity;

@Service
public class BoardService {
	@Autowired
	private BoardRepository boardRepository;
	@Autowired
    private BoardContentRepository boardContentRepository;
	@Autowired
	private ModelMapper modelmapper;
	
	
	/**    
	 * board아이디로 BoardEntity객체를 가져오는 메소드  
	 * @param boardId    
	 * @return BoardEntity    
	 * @ 작성자 KJH    
	 * @ version 1.0    
	 * */
	public BoardEntity getBoard(int boardId) {
    	BoardEntity returnBoard = new BoardEntity();
    	
    	returnBoard = boardRepository.findById((Integer)boardId).get();
    	
    	return returnBoard;
    }
	
	/**    
	 * board아이디로 해당 게시판의 게시글 전체를 가져오는 메소드  
	 * @param boardId    
	 * @return List<BoardContentEntity>   
	 * @ 작성자 KJH    
	 * @ version 1.0    
	 * */
	public List<BoardContentEntity> getBoardContentList(int boardId) {
    	List<BoardContentEntity> contentsList = boardContentRepository.findAll();
    	
    	return contentsList;
    }
	
	/**    
	 * contents 아이디로 해당 게시판의 게시글 상세를 가져오는 메소드  
	 * @param contentSeq    
	 * @return BoardContentEntity   
	 * @ 작성자 KJH    
	 * @ version 1.0    
	 * */
	public BoardContentEntity getBoardContentDtl(int contentSeq) {
    	BoardContentEntity contents = boardContentRepository.findById(contentSeq).get();
    	
    	return contents;
    }
	
	/**    
	 * 게시글을 등록하는 메소드  
	 * @param boardId    
	 * @return List<BoardContentEntity>   
	 * @ 작성자 KJH    
	 * @ version 1.0    
	 * */
	public int insertContents(EnquiryInDto inputDto) {

    	//0.받아온 boardId로 Board 가져오기
    	BoardEntity board = getBoard(inputDto.getBoardId());
    	
    	System.out.println("board.tostring() >>>>>>> " + board.toString());
    	
    	//1.dto를 entity로 변환
    	BoardContentEntity boardContent = new BoardContentEntity();
    			//inputDto.toEntity();
    	modelmapper.map(inputDto, boardContent);
    	//2.board객체 셋팅
    	boardContent.setBoard(board);
    	
    	//3. Repository에게 Entity를 처리하도록,,
    	boardContentRepository.save(boardContent);
    	return 1;//나중에 Map<String,String>리턴으로 바꿔서 에러처리,예외처리 하기..
    }

}
