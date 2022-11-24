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
							
							<div class="table-responsive">
								<table class="table table-striped table-hover">
									<thead>
										<tr>
											<th>번호</th>
											<th>제목</th>
											<th>작성일시</th>
											<th>작성자</th>
											<th>조회수</th>
										</tr>
									</thead>
									<tbody id="contentsBody">
										<c:forEach var="i" items="${contentList}" varStatus="vs">
										     <tr id="row_${vs.current.id}" data-bs-toggle="modal" data-bs-target="#pwModal" name = "conRow" data-content-seq = "${vs.current.id}" data-look-up-cnt="${vs.current.lookUpCnt}">
												<td class="py-1">${vs.current.id}</td>
												<td>${vs.current.contentSub}</td>
												<td>
													<!-- <div class="progress">
														<div class="progress-bar bg-success" role="progressbar"
															style="width: 25%" aria-valuenow="25" aria-valuemin="0"
															aria-valuemax="100"></div>
													</div> -->
													<fmt:parseDate pattern="yyyy-MM-dd'T'HH:mm:ss" value="${vs.current.createDt}" var="parseDateTime" type="date"/>  
													<fmt:formatDate var="fmtedDt" pattern="yy.MM.dd HH:mm" value="${parseDateTime}"/> 
													${fmtedDt}
												</td>
												<td>${vs.current.authorId}</td>
												<td>${vs.current.lookUpCnt}</td>
											</tr>
										</c:forEach>
										
									
									</tbody>
								</table>
							</div>
							<div class="row searchdiv">
							
								<form id="search" action="/board/boardList" method="GET">
					                <div class="input-group mb-2">
										<select id="searchCon" name="searchCon" value="${param.searchCon }" class="form-control searchSel" title="검색구분">
											<option value="1">제목</option>
											<option value="2">작성자</option>
											<option value="3">문의내용</option>
										</select>
					                    <input type="text" class="form-control searchText" value="${param.sWord }" id="sWord" name="sWord" placeholder="Search ...">
					                    <input type="hidden" id="boardId" name="boardId" value="${boardId}">
					                    <input type="hidden" id="page" name="page" value="">
					                    <button type="submit" class="input-group-text bg-success text-light">
					                        <i class="fa fa-fw fa-search text-white"></i>
					                    </button>
					                </div>
					            </form>
								<!-- <table cellpadding="0" cellspacing="0" border="0" class="search_table">
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
												<button id="searchBtn" class="search_btn">
													<i class="fa fa-fw fa-search text-white"></i>
												</button>
											</td>
										</tr>
									</tbody>
								</table> -->
							</div>
						</div>
					</div>
				</div>
			</div>
			<div div="row">
                <ul class="pagination pagination-lg justify-content-end">
	                <c:if test="${pageDTO.hasPrev}">
	                    <li class="page-item" id = "hasPrev">
	                        <a name="pageBtn" data-go-page="${pageDTO.startPage-2}" class="page-link rounded-0 mr-3 shadow-sm border-top-0 border-left-0 text-dark"  href="#"><</a>
	                    </li>
					</c:if>
					<c:forEach var="i" begin="${pageDTO.startPage}" end="${pageDTO.endPage }">
		                <c:if test="${i == pageDTO.currPage+1}">
		                	<li class="page-item disabled">
		                        <a name="pageBtn" data-go-page="${i-1}" class="page-link active rounded-0 mr-3 shadow-sm border-top-0 border-left-0" href="#">${i}</a>
		                    </li>
		                </c:if>
		                <c:if test="${i != pageDTO.currPage+1}">
	    	                <li class="page-item">
		                        <a name="pageBtn" data-go-page="${i-1}" class="page-link rounded-0 mr-3 shadow-sm border-top-0 border-left-0 text-dark" href="#">${i}</a>
		                    </li>
		                </c:if>
					</c:forEach>
	                <c:if test="${pageDTO.hasNext}">
	                    <li class="page-item" id = "hasNext">
	                        <a name="pageBtn" data-go-page="${pageDTO.endPage}" class="page-link rounded-0 mr-3 shadow-sm border-top-0 border-left-0 text-dark" href="#">></a>
	                    </li>
					</c:if>
                </ul>
            </div>
			<div class="row">
				<div class="col text-end mt-2">
					<button class="btn btn-success btn-lg px-3" id = "goToEnquiry">문의하기</button>
				</div>
			</div>
		</div>
	</div>
	
	<!-- Modal -->
   <div class="modal fade bg-white" id="pwModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="w-100 pt-1 mb-5 text-right">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            글 비밀번호 입력:
            <form id="pwChk" action="" method="post" class="modal-content modal-body border-0 p-0">
                <div class="input-group mb-2">
                    <input type="hidden" id="id" name="id" value="">
                    <input type="text" class="form-control" id="contentPw" name="contentPw" placeholder="글 비밀번호 ...">
                    <button id="submitPw" type="button" class="input-group-text bg-success text-light">
                        <i class="fa fa-fw fa-search text-white"></i>
                    </button>
                </div>
            </form>
        </div>
    </div>
</body>
<script>
 
let currConId = '';
let testData = '';
$( document ).ready(function() {
	//drawContents(conList);
	$('tr[name=conRow]').on('click',function(){
		//$('#pwChk').attr("action", "board/enquiryDtl/"+$(this).data('contentSeq') );
		$('#id').val($(this).data('contentSeq'));
		
		/* var contentSeq = $(this).data('contentSeq'); //게시글 아이디
		
		//조회수 증가
		incrsLookCnt(contentSeq);
		var url = window.location.protocol + "//" + window.location.host + "/";
		location.href=url+"board/enquiryDtl/" + contentSeq; */
	});
	
	//페이지 버튼 클릭
	$('a[name=pageBtn]').on('click',function(){
		var goPage = $(this).data('goPage'); //이동할 페이지
		$('#page').val(goPage);
		$('#searchCon').val("${param.searchCon }");
		$('#sWord').val("${param.sWord }");
		$('#search').submit();
	});
	
	//문의하기 버튼
	$('#goToEnquiry').on('click',function(){
		var url = window.location.protocol + "//" + window.location.host + "/";
		location.href=url+"board/enquiry?boardId="+ ${boardId};
	});
	
	//게시글 검색
	$('#searchBtn').on('click',function(){
		var selValue = $("#searchSel option:selected").val();
		var sword = $("#sword").val();
		/* if(sword.length==0){
			alert('검색어를 입력하세요');
			return false;
		} */
		
		var param  = {boardId : ${boardId}
					  ,serchCon : selValue
					  ,sword : sword};
		 $.ajax({
			    url: "/board/searchVal", // 클라이언트가 HTTP 요청을 보낼 서버의 URL 주소
			    dataType:'json',
		        contentType: 'application/json',
			    data: JSON.stringify(param) ,  // HTTP 요청과 함께 서버로 보낼 데이터
			    method: "POST",   // HTTP 요청 메소드(GET, POST 등)
			    async: true, //비동기 여부
			})
			.success(function(data) {
				console.log("conList : " + JSON.stringify(data));
				
				drawContents(data);
			})
			.fail(function(xhr, status, errorThrown) {
			    alert("오류 발생..");
			})
			.always(function(xhr, status) {
				
			});
		
	});
	
	//비밀번호 submint
	$('#submitPw').on('click', function(){
		console.log("submitPw");
		$.ajax({
		    url: "/board/enquiryDtl", // 클라이언트가 HTTP 요청을 보낼 서버의 URL 주소
		    dataType:'json',
	        contentType: 'application/json',
		    data: JSON.stringify(
		    		{id				: $('#id').val()
					,contentPw		: $('#contentPw').val()}
		    	),  // HTTP 요청과 함께 서버로 보낼 데이터
		    method: "POST",   // HTTP 요청 메소드(GET, POST 등)
		    async: true, //비동기 여부
		})
		.success(function(data){
			console.log(">>data>>" + JSON.stringify(data));
		}).fail(function(data){
			console.log(">>fail data>>" + JSON.stringify(data));
			alert(data.responseJSON.message);

		}).always(function(xhr, status) {
			//alert("체크 결과");
		});
		
		
	});
});
function moveToConDtl(){
	
}

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

/* function drawContents(list){
	var html ='';
	$.each(list, function(i, item){
		var pageInfo = '';
		if(i == 0){
			pageInfo = item.pageDTO;
		} 
		
		console.log("item > "+JSON.stringify(item) );
		
													 
		var pattern = "yyyy-MM-dd'T'HH:mm:ss";
		var createDate2 = (item.createDt).substr(0,10);
		
		html+='<tr id="row_'+item.id+'" name = "conRow" data-content-seq = "'+item.id+'" data-look-up-cnt="'+item.lookUpCnt+'"> ';
		html+='	<td class="py-1">'+item.id+'</td>                                                                                            ';
		html+='	<td>'+item.contentSub+'</td>                                                                                              ';
		//html+='	<td>'+createDate+'</td>                                                                                                ';
		html+='	<td>';
		html+=		createDate2;
		html+='	</td>';   
		html+='	<td>'+item.authorId+'</td>                                                                                                ';
		html+='	<td>'+item.lookUpCnt+'</td>                                                                                               ';
		html+='</tr>                                                                                                                            ';
	});
	
	$('#contentsBody').empty().append(html);
} */


</script>
