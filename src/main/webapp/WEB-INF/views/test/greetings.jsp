<%@include file="/WEB-INF/views/common/tagLib.jsp" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
	<%-- <jsp:include page="/WEB-INF/views/common/header.jsp"/> --%>
<head>
</head>
<body>
	<%@include file="/WEB-INF/views/common/header.jsp" %>
	<!-- Start Banner Hero -->
    <div id="template-mo-zay-hero-carousel" class="carousel slide" data-bs-ride="carousel">
        <ol class="carousel-indicators">
        	<c:forEach var="i" items="${bannerImg}" varStatus="vs">
        		<c:if test="${vs.index == 0 }">
		            <li data-bs-target="#template-mo-zay-hero-carousel active" data-bs-slide-to="${vs.index}"></li>
        		</c:if>
        		<c:if test="${vs.index != 0 }">
		            <li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="${vs.index}"></li>
        		</c:if>
        	</c:forEach>
        </ol>
        <div class="carousel-inner">
        	<c:forEach var="i" items="${bannerImg}" varStatus="vs">
        		<c:if test="${vs.index == 0 }">
		            <div class="carousel-item active">
	                    <img class="img-fluid" style="width:100%" src="${i.ref2 }" alt="">
					</div>
        		</c:if>
        		<c:if test="${vs.index != 0 }">
	            	<div class="carousel-item">
	                     <img class="img-fluid" style="width:100%" src="${i.ref2 }" alt="">
					</div>
        		</c:if>
            </c:forEach>
        </div>
        <a class="carousel-control-prev text-decoration-none w-auto ps-3" href="#template-mo-zay-hero-carousel" role="button" data-bs-slide="prev">
            <i class="fas fa-chevron-left"></i>
        </a>
        <a class="carousel-control-next text-decoration-none w-auto pe-3" href="#template-mo-zay-hero-carousel" role="button" data-bs-slide="next">
            <i class="fas fa-chevron-right"></i>
        </a>
    </div>
    <!-- End Banner Hero -->
    
    <%@include file="/WEB-INF/views/common/footer.jsp" %>
</body>
