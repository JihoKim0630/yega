<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<head>
	<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 <link rel="stylesheet" href="/assets/css/style.css">
</head>
<body>
	<div class="main-panel">
		<div class="content-wrapper">
			<div class="row">
				<div class="col-lg-12 grid-margin stretch-card">
					<div class="card">
						<div class="card-body">
							<div class="row">
								<h4 class="card-title">${boardNm }</h4>
				            </div>
							<div class="row">
								<!-- <div class="">
					                <div class="input-group mb-2">
										<select class="form-control selectpicker noborder"  title="검색구분">
											<option>제목</option>
											<option>작성자</option>
											<option>문의내용</option>
										</select>
					                    <input type="text" class="form-control" id="inputModalSearch" name="q" placeholder="Search ...">
					                    <button type="submit" class="input-group-text bg-success text-light">
					                        <i class="fa fa-fw fa-search text-white"></i>
					                    </button>
					                </div>
					            </div> -->
								<table cellpadding="0" cellspacing="0" border="0" class="search_table">
									<tbody>
										<tr>
											<td class="search_td">
												<select id="searchSel" class="form-control selectpicker noborder" title="검색구분">
													<option value="1">제목</option>
													<option value="2">작성자</option>
													<option value="3">문의내용</option>
												</select>
											</td>
											<td class="search_td">
												<input name="sword" type="text" id="sword" class="search_input" label="검색어" placeholder="SEARCH">
											</td>
											<td style="border-bottom: 1px solid #A9B2B9">
												<button type="submit" id="searchBtn" class="search_btn">
													<i class="fa fa-fw fa-search text-white"></i>
												</button>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="table-responsive">
								<table class="table table-striped table-hover">
									<thead>
										<tr>
											<th>번호</th>
											<th>제목</th>
											<th>작성일</th>
											<th>작성자</th>
											<th>조회수</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="i" items="${contentList}" varStatus="vs">
										     <tr id="row_${vs.current.id}" name = "conRow" data-content-seq = "${vs.current.id}" data-look-up-cnt="${vs.current.lookUpCnt}">
												<td class="py-1">${vs.index+1}</td>
												<td>${vs.current.contentSub}</td>
												<td>
													<!-- <div class="progress">
														<div class="progress-bar bg-success" role="progressbar"
															style="width: 25%" aria-valuenow="25" aria-valuemin="0"
															aria-valuemax="100"></div>
													</div> -->
													<%-- <fmt:parseDate var="parseDate" pattern="yyyy-MM-dd HH:ss" value="${vs.current.createDt}"/> --%> 
													 <fmt:parseDate pattern="yyyy-MM-dd'T'HH:mm:ss" value="${vs.current.createDt}" var="parseDateTime" type="both"/> 
													 <fmt:formatDate pattern="yy.MM.dd HH:mm" value="${parseDateTime}"/> 
													<%-- ${vs.current.createDt} --%>
												</td>
												<td>${vs.current.authorId}</td>
												<td>${vs.current.lookUpCnt}</td>
											</tr>
										</c:forEach>
										
									
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div div="row">
                <ul class="pagination pagination-lg justify-content-end">
	                <c:if test="${hasPrev}">
	                    <li class="page-item">
	                        <a class="page-link rounded-0 mr-3 shadow-sm border-top-0 border-left-0 text-dark" href="/board/boardList?boardId=${boardId}&page=${startPage-2}"><</a>
	                    </li>
					</c:if>
					<c:forEach var="i" begin="${startPage}" end="${endPage }">
		                <c:if test="${i == currPage+1}">
		                	<li class="page-item disabled">
		                        <a class="page-link active rounded-0 mr-3 shadow-sm border-top-0 border-left-0" href="/board/boardList?boardId=${boardId}&page=${i-1}">${i}</a>
		                    </li>
		                </c:if>
		                <c:if test="${i != currPage+1}">
	    	                <li class="page-item">
		                        <a class="page-link rounded-0 mr-3 shadow-sm border-top-0 border-left-0 text-dark" href="/board/boardList?boardId=${boardId}&page=${i-1}">${i}</a>
		                    </li>
		                </c:if>
					</c:forEach>
	                <c:if test="${hasNext}">
	                    <li class="page-item">
	                        <a class="page-link rounded-0 mr-3 shadow-sm border-top-0 border-left-0 text-dark" href="/board/boardList?boardId=${boardId}&page=${endPage}">></a>
	                    </li>
					</c:if>
                </ul>
            </div>
			<%-- <div class="btn-group" role="group" aria-label="Basic example">
				
				<c:if test="${hasPrev}">
              		<button onclick="location.href='/board/boardList?boardId=${boardId}&page=${startPage-2}'" type="button" class="btn btn-outline-secondary"><</button>
				</c:if>
				<c:forEach var="i" begin="${startPage }" end="${endPage }">
	            	<button onclick="location.href='/board/boardList?boardId=${boardId}&page=${i-1}'" type="button" class="btn btn-outline-secondary">${i}</button>
				</c:forEach>
				
				<c:if test="${ hasNext}">
              		<button onclick="location.href='/board/boardList?boardId=${boardId}&page=${endPage}'" type="button" class="btn btn-outline-secondary">></button>
				</c:if>
            </div> --%>
			<div class="row">
				<button class="btn btn-success btn-lg px-3" id = "goToEnquiry">문의하기</button>
			</div>
		</div>
	</div>

</body>
<script>
 
$( document ).ready(function() {
	
    
});

function incrsLookCnt(contentSeq){
	 $.ajax({
	    url: "/board/updateLookCnt/"+contentSeq, // 클라이언트가 HTTP 요청을 보낼 서버의 URL 주소
	    method: "GET",   // HTTP 요청 메소드(GET, POST 등)
	    async: true, //비동기 여부
	})
	.always(function(xhr, status) {
		//alert("글이 등록되었습니다.");
	});
	
}

$('tr[name=conRow]').on('click',function(){
	var contentSeq = $(this).data('contentSeq'); //게시글 아이디
	//조회수 증가
	incrsLookCnt(contentSeq);
	
	location.href="enquiryDtl/" + contentSeq;
	
});

$('#goToEnquiry').on('click',function(){
	
	location.href="enquiry?boardId=" + ${boardId};
});
$('#searchBtn').on('click',function(){
	var selValue = $("#searchSel option:selected").val();
	var sword = $("#sword").val();
	
	if(sword.length==0){
		alert('검색어를 입력하세요');
		return false;
	}
	
});
}
</script>
