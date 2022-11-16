package com.project.yega.comn;

import java.util.Map;

import org.springframework.data.domain.Page;

import com.project.yega.comn.dto.PageDTO;

public class Pagination {
	
	/**
	 * paging처리 공통 함수
	 * @param <T>
	 * @param <T>
	 */
	public <T> PageDTO pagination(Page<T> list, int contentsNum ) {
		
		PageDTO pateDTO = new PageDTO();
		int startPage = Math.max(1, list.getPageable().getPageNumber()/contentsNum*contentsNum+1);
     	int endPage = Math.min(list.getTotalPages(), startPage+contentsNum-1);
     	boolean hasNext = true;
     	boolean hasPrev = true;
     	if(startPage <=1) {
     		hasPrev = false;
     	}
     	if(endPage >= list.getTotalPages()) {
     		hasNext = false;
     	}
     	
     	pateDTO.setStartPage(startPage);
     	pateDTO.setEndPage(endPage);
     	pateDTO.setCurrPage(list.getPageable().getPageNumber());
     	pateDTO.setHasPrev(hasPrev);
     	pateDTO.setHasNext(hasNext);
     	
     	return pateDTO;
	}
}
