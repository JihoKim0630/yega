<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<head>
	<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
                        <label for="inputemail">이메일</label>
                        <input type="text" class="form-control mt-1" id="phoneNumber" name="phoneNumber" value='${reqData.authorEmail}' disabled>
                    </div>
                </div>
                <div class="mb-3">
                    <label for="inputsubject">제목</label>
                    <input type="text" class="form-control mt-1" id="contentSub" name="contentSub" value='${reqData.contentSub}' disabled>
                </div>
                <div class="mb-3">
                    <label for="inputmessage">문의사항</label>
                    <textarea class="form-control mt-1" id="contentSbst" name="contentSbst" rows="20" disabled >${reqData.contentSbst}</textarea>
                </div>
                <div class="row">
                    <div class="col text-end mt-2">
                        <button id ='toList' class="btn btn-success btn-lg px-3">목록으로</button>
                    </div>
                </div>
        </div>
    </div>
</body>
<script>
$( document ).ready(function() {
    
});

$('#toList').on('click',function(){
	console.log('목록으로 가자');
	location.href="../enquiryList?boardId="+ ${boardId};
});
</script>
