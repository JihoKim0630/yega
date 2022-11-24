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
    <!-- Start 추천상품 -->
    <section class="container py-5" id = "sectionRecommand">
        <div class="row text-center pt-3">
            <div class="col-lg-6 m-auto">
                <h1 class="h1">추천상품</h1>
                <p>
                    Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia
                    deserunt mollit anim id est laborum.
                </p>
            </div>
        </div>
        <div class="row">
	        <!-- <div class="recommand-wrap"> -->
	            <div class="col-12 col-md-4 p-5 mt-3 recommand-prod">
	                <a href="#"><img src="${recommandProd[0].ref2} " class="rounded-circle img-fluid border"></a>
	                <h5 class="text-center mt-3 mb-3 mainProdNm">${recommandProd[0].ref3}</h5>
	                <p class="text-center"><a class="btn btn-success" href="/product/detail/${recommandProd[0].ref1}">Go Shop</a></p>
	            </div>
	            <div class="col-12 col-md-4 p-5 mt-3 recommand-prod">
	                <a href="#"><img src="${recommandProd[1].ref2}" class="rounded-circle img-fluid border"></a>
	                <h2 class="h5 text-center mt-3 mb-3 mainProdNm">${recommandProd[1].ref3}</h2>
	                <p class="text-center"><a class="btn btn-success" href="/product/detail/${recommandProd[1].ref1}">Go Shop</a></p>
	            </div>
	            <div class="col-12 col-md-4 p-5 mt-3 recommand-prod">
	                <a href="#"><img src="${recommandProd[2].ref2}" class="rounded-circle img-fluid border"></a>
	                <h2 class="h5 text-center mt-3 mb-3 mainProdNm">${recommandProd[2].ref3}</h2>
	                <p class="text-center"><a class="btn btn-success" href="/product/detail/${recommandProd[2].ref1}">Go Shop</a></p>
	            </div>
	        <!-- </div> -->
        </div>
    </section>
    <!-- End 추천상품-->
    <!-- Start 베스트5 -->
    <section class="bg-light" id = "sectionBest5">
        <div class="container py-5">
            <div class="row text-center py-3">
                <div class="col-lg-6 m-auto">
                    <h1 class="h1">Best 3</h1>
                    <p>
                        Reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
                        Excepteur sint occaecat cupidatat non proident.
                    </p>
                </div>
            </div>
            <div class="row">
                <div class="col-12 col-md-4 mb-4">
                    <div class="card h-100">
                        <a href="shop-single.html">
                            <img src="/assets/img/feature_prod_01.jpg" class="card-img-top" alt="...">
                        </a>
                        <div class="card-body">
                            <ul class="list-unstyled d-flex justify-content-between">
                                <li>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-muted fa fa-star"></i>
                                    <i class="text-muted fa fa-star"></i>
                                </li>
                                <li class="text-muted text-right">$240.00</li>
                            </ul>
                            <a href="shop-single.html" class="h2 text-decoration-none text-dark">Gym Weight</a>
                            <p class="card-text">
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt in culpa qui officia deserunt.
                            </p>
                            <p class="text-muted">Reviews (24)</p>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-4 mb-4">
                    <div class="card h-100">
                        <a href="shop-single.html">
                            <img src="/assets/img/feature_prod_02.jpg" class="card-img-top" alt="...">
                        </a>
                        <div class="card-body">
                            <ul class="list-unstyled d-flex justify-content-between">
                                <li>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-muted fa fa-star"></i>
                                    <i class="text-muted fa fa-star"></i>
                                </li>
                                <li class="text-muted text-right">$480.00</li>
                            </ul>
                            <a href="shop-single.html" class="h2 text-decoration-none text-dark">Cloud Nike Shoes</a>
                            <p class="card-text">
                                Aenean gravida dignissim finibus. Nullam ipsum diam, posuere vitae pharetra sed, commodo ullamcorper.
                            </p>
                            <p class="text-muted">Reviews (48)</p>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-4 mb-4">
                    <div class="card h-100">
                        <a href="shop-single.html">
                            <img src="/assets/img/feature_prod_03.jpg" class="card-img-top" alt="...">
                        </a>
                        <div class="card-body">
                            <ul class="list-unstyled d-flex justify-content-between">
                                <li>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                </li>
                                <li class="text-muted text-right">$360.00</li>
                            </ul>
                            <a href="shop-single.html" class="h2 text-decoration-none text-dark">Summer Addides Shoes</a>
                            <p class="card-text">
                                Curabitur ac mi sit amet diam luctus porta. Phasellus pulvinar sagittis diam, et scelerisque ipsum lobortis nec.
                            </p>
                            <p class="text-muted">Reviews (74)</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
     <!--End 베스트5 -->
    <%@include file="/WEB-INF/views/common/footer.jsp" %>
</body>
