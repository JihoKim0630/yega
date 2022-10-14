<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<head>
	<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
</head>
<body>
	<div class="bg-dark text-white p-5">
	<!--    <h1>{{userName}} 님, 반갑습니다.</h1>-->
	    <h1> ${userName}님, 반갑습니다. nice to meet you~~</h1>
	    <%-- ${pageContext.request.contextPath} --%>
	</div>
</body>
