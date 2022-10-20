<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<head>
	<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
</head>
<body>

	<div class="container py-5">
        <div class="row py-5">
            <form class="col-md-9 m-auto" method="post" role="form" action="/board/insertContents">
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
                        <button type="submit" class="btn btn-success btn-lg px-3">등록</button>
                    </div>
                </div>
                <!-- 일단 하드코딩으로 넘김 ->추후 게시판 아이디 받아서 넘기도록 수정 필요 -->
                <input type="hidden" id="boardId" name="boardId" value="1">
            </form>
        </div>
    </div>
</body>
