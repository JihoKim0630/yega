<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<%@include file="/WEB-INF/views/common/tagLib.jsp" %>
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
            <form class="col-md-9 m-auto" method="post" role="form" action="" id="contentForm">
                <div class="row">
                    <div class="form-group col-md-6 mb-3">
                        <label for="authorId">이름</label>
                        <input type="text" class="form-control mt-1" value="${reqData.authorId }" id="authorId" name="authorId" placeholder="이름" maxlength="10">
                    </div>
                    <div class="form-group col-md-6 mb-3">
                    	<c:if test="${reqType ne 'modify' }">
                        	<label for="contentPw">비밀번호</label>
                        	<input type="password" class="form-control mt-1" id="contentPw" name="contentPw" maxlength="10" placeholder="글 비밀번호">
                    	</c:if>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-md-6 mb-3">
                        <label for="authorEmail">이메일</label>
                        <input type="email" class="form-control mt-1" value="${reqData.authorEmail }"  id="authorEmail" name="authorEmail" placeholder="이메일" maxlength="30">
                    </div>
                    <div class="form-group col-md-6 mb-3">
                        <label for="authorPhoneNum">전화번호</label>
                        <input type="text" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" value="${reqData.authorPhoneNum }" class="form-control mt-1" id="authorPhoneNum" name="authorPhoneNum" placeholder="-없이 입력하세요" maxlength="11">
                    </div>
                </div>
                <div class="mb-3">
                    <label for="contentSub">제목</label>
                    <input type="text" class="form-control mt-1" value="${reqData.contentSub }" id="contentSub" name="contentSub" placeholder="제목" maxlength="30">
                </div>
                <div class="mb-3">
                    <label for="contentSbst">문의사항</label>
                    <textarea class="form-control mt-1"  id="contentSbst" name="contentSbst" placeholder="문의사항을 입력하세요." rows="8">${reqData.contentSbst }</textarea>
                </div>
                <!-- <div class="row">
                    <div class="form-group col-md-6 mb-3">
	                    <div class="form-check form-switch">
						  	<label class="form-check-label" for="lockYn">비밀글</label>
						  	<input class="form-check-input " type="checkbox"  name="lockYn" id="lockYn">
						</div>
						<br/>
						<div class="form-check form-switch">
						  	<label class="form-check-label" for="alarmYn">공지여부</label>
						  	<input class="form-check-input " type="checkbox"  name="alarmYn" id="alarmYn">
						</div>
					</div>
                </div> -->
                <div class="row">
                    <div class="col text-end mt-2">
                    	<c:if test="${reqType eq 'modify' }">
			                <input type="hidden" id="id" name="id" value="${reqData.id}">
			                <input type="hidden" id="createDt" name="createDt" value="${reqData.createDt}">
	                        <button type="button" id = "modifyCon" class="btn btn-success btn-lg px-3">수정</button>
                    	</c:if>
                    	<c:if test="${reqType eq 'create' }">
                       		<button type="button" id = "insertCon" class="btn btn-success btn-lg px-3">등록</button>
                    	</c:if>
                       		<button type="button" id = "toList" class="btn btn-success btn-lg px-3">취소</button>
                    </div>
                </div>
                <input type="hidden" id="boardId" name="boardId" value="${boardId}">
            </form>
        </div>
    </div>
</body>
<script>

const boardId = ${boardId};
const modifyYn = "${reqType}"=='modify'? true:false;

$( document ).ready(function() {
	$('#contentSbst').summernote({
        height: 300
   });
	
	$('#toList').on('click',function(){
		var url = window.location.protocol + "//" + window.location.host + "/";
		
		if(modifyYn){//수정이면 글상세로
			location.href=url+"board/enquiryDtl/"+ ${reqData.id};
		}else{
			location.href=url+"board/boardList?boardId="+ ${boardId};
		}
	});
	
	$('#insertCon , #modifyCon').on('click',function(){
		//유효성체크
		if(!validationChk()){ 
			return false;
		};
		
		var msg = modifyYn? '수정':'등록';
		if(!confirm("문의사항을 " + msg + "하시겠습니까?")){
			return false;
		}
		putContents();
	});
});


function putContents(){
	/* var lockYn='';
	if($('#lockYn').prop('checked')){
		lockYn='Y';
	}else{
		lockYn='N';
		
	} */
	var param = {
			id				: $('#id').val()
			,createDt		: $('#createDt').val()
			,authorId		: $('#authorId').val()
			,authorPhoneNum : $('#authorPhoneNum').val()
			,authorEmail 	: $('#authorEmail').val()
			,contentSub		: $('#contentSub').val()
			,contentSbst	: $('#contentSbst').val()
			,lockYn			: lockYn
			,contentPw		: $('#contentPw').val()
			,boardId		: $('#boardId').val()
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
		if(modifyYn){
			alert("글이 수정되었습니다.");
		}else{
			alert("글이 등록되었습니다.");
			
		}
		var url = window.location.protocol + "//" + window.location.host + "/";
//		location.href=url+"board/boardList?boardId="+ ${boardId};
		location.href=url+"board/enquiryDtl/"+ $('#id').val();
	})
	.fail(function(xhr, status, errorThrown) {
	    alert("오류 발생..");
	})
	.always(function(xhr, status) {
		//alert("글이 등록되었습니다.");
	});
}


function validationChk(){
	//작성자명
	
	if(	$('#authorId').val() == '' ||$('#authorId').val() == 'undefined'){
		alert("이름을 입력하세요.");
		$('#authorId').focus();
		return false;
	}
		
	//핸드폰번호
	if(	$('#authorPhoneNum').val() == '' ||$('#authorPhoneNum').val() == 'undefined'){
		alert("전화번호를 입력하세요.");
		$('#authorPhoneNum').focus();
		return false;
	}
	//전화번호형식체크
	
	//이메일형식체크

	if(!modifyYn){//등록인 경우에만 비밀번호 체크
		//비밀번호 null체크
		if(	$('#contentPw').val() == '' ||$('#contentPw').val() == 'undefined'){
			alert("비밀번호를 입력하세요.");
			$('#contentPw').focus();
			return false;
		}
		
		//비밀번호 자릿수체크
		if(	$('#contentPw').val().length > 10){
			alert("비밀번호를 입력하세요.");
			$('#contentPw').focus();
			return false;
		}
	}
	
	//제목
	if(	$('#contentSub').val() == '' ||$('#contentSub').val() == 'undefined'){
		alert("제목을 입력하세요.");
		$('#contentSub').focus();
		return false;
	}
	
	//글내용
	if(	$('#contentSbst').val() == '' ||$('#contentSbst').val() == 'undefined'){
		alert("내용을 입력하세요.");
		$('#contentSbst').summernote({focus:true});
		return false;
	}
	return true;
};

</script>

