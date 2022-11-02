<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<%@include file="/WEB-INF/views/common/tagLib.jsp" %>
<head>
	<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
</head>
<body>

	<div class="container py-5">
        <div class="row py-5">
            <form class="col-md-9 m-auto" method="post" role="form" action="/board/insertContents" id="contentForm">
                <div class="row">
                    <div class="form-group col-md-6 mb-3">
                        <label for="inputname">이름</label>
                        <input type="text" class="form-control mt-1" id="authorId" name="authorId" placeholder="이름">
                    </div>
                    <div class="form-group col-md-6 mb-3">
                        <label for="inputemail">전화번호</label>
                        <input type="text" class="form-control mt-1" id="phoneNumber" name="phoneNumber" placeholder="전화번호">
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-md-6 mb-3">
                        <label for="inputname">비밀글</label>
                        <input type="checkBox"  id="lockYn" name="lockYn" >
                    </div>
                    <div class="form-group col-md-6 mb-3">
                        <label for="inputemail">비밀번호</label>
                        <input type="text" class="form-control mt-1" id="contentPw" name="contentPw" placeholder="글 비밀번호">
                    </div>
                </div>
                <div class="mb-3">
                    <label for="inputsubject">제목</label>
                    <input type="text" class="form-control mt-1" id="contentSub" name="contentSub" placeholder="제목">
                </div>
                <div class="mb-3">
                    <label for="inputmessage">문의사항</label>
                    <textarea class="form-control mt-1" id="contentSbst" name="contentSbst" placeholder="문의사항을 입력하세요." rows="8"></textarea>
                </div>
                <div class="row">
                    <div class="col text-end mt-2">
                        <button type="button" id = "insertCon" class="btn btn-success btn-lg px-3">등록</button>
                    </div>
                </div>
                <input type="hidden" id="boardId" name="boardId" value="${boardId}">
            </form>
        </div>
    </div>
</body>
<script>

const boardId = ${boardId};

$( document ).ready(function() {
    
});

$('#insertCon').on('click',function(){
	var param = {
			authorId	: $('#authorId').val()
			,phoneNumber: $('#authorId').val()
			,contentPw	: $('#contentPw').val()
			,contentSub	: $('#contentSub').val()
			,contentSbst: $('#contentSbst').val()
			,boardId	: $('#boardId').val()
	};
	 $.ajax({
	    url: "/board/insertContents", // 클라이언트가 HTTP 요청을 보낼 서버의 URL 주소
	    dataType:'json',
        contentType: 'application/json',
	    data: JSON.stringify(param),  // HTTP 요청과 함께 서버로 보낼 데이터
	    method: "POST",   // HTTP 요청 메소드(GET, POST 등)
	    async: true, //비동기 여부
	})
	.success(function(json) {
		alert("글이 등록되었습니다.");
		location.href="boardList?boardId=" + boardId;
	})
	.fail(function(xhr, status, errorThrown) {
	    alert("오류 발생..");
	})
	.always(function(xhr, status) {
		//alert("글이 등록되었습니다.");
	});
});





</script>

