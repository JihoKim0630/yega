package com.project.yega.comn.dto;

import java.util.List;
import java.util.function.Function;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import lombok.Data;

@Data
public class PageDTO{

	    // 총 페이지 번호
	    private int totalPage;

	    // 현재 페이지 번호
	    private int currPage;

	    // 목록 사이즈
	    private int size;

	    // 시작페이지,끝페이지 번호
	    private int startPage,endPage;

	    // 이전, 다음
	    private boolean hasPrev, hasNext;

	    // 페이지 번호 목록
	    private List<Integer> pageList;

}
