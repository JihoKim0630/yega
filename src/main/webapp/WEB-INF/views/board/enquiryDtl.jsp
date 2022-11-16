<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<head>
	<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
   <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
   <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
</head>
<body>
	<div class="container py-5">
        <div class="row py-5">
                <div class="row">
                    <div class="form-group col-md-6 mb-3">
                        <label for="inputname">이름</label>
                        <input type="text" class="form-control mt-1" id="authorId" name="authorId" value='${reqData.authorId}' disabled>
                    </div>
                    <div class="form-group col-md-6 mb-3">
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-md-6 mb-3">
                        <label for="authorEmail">이메일</label>
                        <input type="email" class="form-control mt-1" value="${reqData.authorEmail }" disabled>
                    </div>
                    <div class="form-group col-md-6 mb-3">
                        <label for="authorPhoneNum">전화번호</label>
                        <input type="text" value="${reqData.authorPhoneNum }" class="form-control mt-1" disabled>
                    </div>
                </div>
                <div class="mb-3">
                    <label for="contentSub">제목</label>
                    <input type="text" class="form-control mt-1" id="contentSub" name="contentSub" value='${reqData.contentSub}' disabled>
                </div>
                <div class="mb-3">
                    <label for="contentSbst">문의사항</label>
                    <textarea class="form-control mt-1" id="contentSbst" name="contentSbst" rows="20" disabled >${reqData.contentSbst}</textarea>
                </div>
                <div class="row">
                    <div class="col text-end mt-2">
                        <button id ='modify' class="btn btn-success btn-lg px-3">수정하기</button>
                        <button id ='toList' class="btn btn-success btn-lg px-3">목록으로</button>
                    </div>
                </div>
        </div>
    </div>
</body>
<script>
$( document ).ready(function() {
	$('#contentSbst').summernote({height: 300});//높이조절
	$('#contentSbst').summernote("disable");//비활성화

	$('#toList').on('click',function(){
		var url = window.location.protocol + "//" + window.location.host + "/";
		location.href=url+"board/boardList?boardId="+ ${boardId};
	});
	
	$('#modify').on('click',function(){
		var url = window.location.protocol + "//" + window.location.host + "/";
		location.href=url+"board/enquiry?contentSeq="+${reqData.id};
	});
});
</script>
