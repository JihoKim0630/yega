package com.project.yega.comn;

import java.util.Map;

import org.springframework.data.domain.Page;

public class Pagination {
	
	
	/**
	 * paging처리 공통 함수
	 * @param <T>
	 */
	public <T> Map<String,T> pagination(Page<T> list, int contentsNum ) {
		
		Map<String,T> pagingResult = null ;
		
		pagingResult.clear();
		
		int startPage = Math.max(1, list.getPageable().getPageNumber()/10*10+1);
     	int endPage = Math.min(list.getTotalPages(), startPage+9);
     	boolean hasNext = true;
     	boolean hasPrev = true;
     	if(startPage <=1) {
     		hasPrev = false;
     	}
     	if(endPage >= list.getTotalPages()) {
     		hasNext = false;
     	}
     	

		pagingResult.put("startPage", startPage);
		pagingResult.put("endPage", endPage);
		pagingResult.put("currPage", list.getPageable().getPageNumber());
		pagingResult.put("hasPrev", hasPrev);
		pagingResult.put("hasNext", hasNext);
     	
     	return pagingResult;
	}
}
