package com.project.yega.comn.web;

import java.util.Arrays;
import java.util.List;

import javax.persistence.EntityManager;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.yega.category.dto.CategoryDTO;
import com.project.yega.comn.dto.ComnCdDTO;
import com.project.yega.entity.ComnCdId;

import lombok.Data;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Data
@Service
public class ComnCdService {
	@Autowired
	private ComnCdRepository comnCdRepository;
	
	@Autowired
	private ModelMapper modelmapper;
	
	/**    
	 * 상품 카테고리 전체를 가져오는 메소드  
	 * @param  String lCd   
	 * @return List<ComnCdDTO>    
	 * @ 작성자 KJH    
	 * @ version 1.0    
	 * */
	public List<ComnCdDTO> getComnCdByLcd(String lCd) {
//    	List<CategoryEntity> categoryList = categoryRepository.findAll();
    	List<ComnCdDTO> cdList = Arrays.asList(modelmapper.map(comnCdRepository.findByLarCd(lCd),ComnCdDTO[].class));
    	return cdList;
    }
	/**    
	 * 카테고리 아이디로 카테고리 객체 가져오는 베소드  
	 * @param     
	 * @return CategoryEntity  
	 * @ 작성자 KJH    
	 * @ version 1.0    
	 * */
	public ComnCdDTO getComnCdById(String lCd, String mCd) {
		ComnCdDTO comnCdDTO = new ComnCdDTO();
//		ComnCdId comnCdId = new ComnCdId();
//		comnCdId.setLCd(lCd);
//		comnCdId.setMCd(mCd);
		//modelmapper.map(comnCdRepository.findBy(lCd,mCd), comnCdDTO);
		return comnCdDTO; 
	}
	/**    
	 * 대분류코드와 사용여부로 공통코드 가져오는 메소드 
	 * @param     
	 * @return List<ComnCdDTO>    
	 * @ 작성자 KJH    
	 * @ version 1.0    
	 * */
	
	public List<ComnCdDTO> getComnCdByLCdAndUseYn(String lCd, String useYn, int orderSeq) {
		log.debug(">>>>>> " + lCd);
		log.debug(">>>>>>useYn  " + useYn);
		List<ComnCdDTO> comnCdList =
		Arrays.asList(modelmapper.map(comnCdRepository.findByLarCdAndUseYnAndOrderSeqGreaterThanEqual(lCd,useYn,orderSeq), ComnCdDTO[].class));
		log.debug(">>>>>>comnCdList  " + comnCdList.toString());
		
		return comnCdList; 
	}
	
	
}
