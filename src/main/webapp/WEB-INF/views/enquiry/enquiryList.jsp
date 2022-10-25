<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<head>
	<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
</head>
<body>
	<div class="main-panel">
		<div class="content-wrapper">
			<div class="row">
				<div class="col-lg-12 grid-margin stretch-card">
					<div class="card">
						<div class="card-body">
							<h4 class="card-title">문의사항</h4>
							<%-- <p class="card-description">
								Add class
								<code>.table-striped</code>
							</p> --%>
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
										       <%-- <c:set var="weekNum" value="${(i+startWeekDay-2)%7}"></c:set> --%>
										     <tr name = "conRow" data-content-seq = "${vs.current.id}">
												<td class="py-1">${vs.index+1}</td>
												<td>${vs.current.contentSub}</td>
												<td>
													<!-- <div class="progress">
														<div class="progress-bar bg-success" role="progressbar"
															style="width: 25%" aria-valuenow="25" aria-valuemin="0"
															aria-valuemax="100"></div>
													</div> -->
													${vs.current.createDt}
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
			<div class="row">
				<button class="btn btn-success btn-lg px-3" id = "goToEnquiry">문의하기</button>
			</div>
		</div>
	</div>

</body>
<script>
 
 const boardId = '1';
$( document ).ready(function() {
    
});

$('tr[name=conRow]').on('click',function(){
	var contentSeq = $(this).data('contentSeq'); //게시글 아이디
	location.href="enquiryDtl/" + contentSeq;
	
});

$('#goToEnquiry').on('click',function(){
	location.href="enquiry?boardId=" + boardId;
});
</script>
