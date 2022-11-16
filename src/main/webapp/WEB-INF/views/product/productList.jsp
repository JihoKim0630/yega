<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<%@include file="/WEB-INF/views/common/tagLib.jsp" %>
<head>
	<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
</head>

<script>
var _rootCtgList = '${rootCtgList}';
var _prodList = JSON.parse('${prodList}');
var _testData;

$( document ).ready(function() {
	console.log("_rootCtgList 0> " +_rootCtgList);
	console.log("_prodList 1> " +_prodList);
	
	$.each($('#rootCtgUl').children('li'), function(){
		console.log($(this).attr('id'));
		var pId = $(this).attr('id');
		var ctgId = $('#'+pId).data('ctgId'); //해당 최상위 카테고리아이디
		getChildCtgList(ctgId);
	});

	drawProdList(_prodList);
	
	function setComma(num){
		
		console.log("setComma num : " +num);
		return num.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
	}
});

/*
 * 상품리스트 그리기
 *
 *
 */
var drawProdList = function(prodList){
	
	console.log("drawProd>>>>>\n" + prodList);
	var html ='';
	$.each(prodList, function(i, item){
		console.log(item);
		html += ' <div class="col-md-4">                                                                                                                      ' ;
		html += '       <div class="card mb-4 product-wap rounded-0">                                                                                         ' ;
		html += '           <div class="card rounded-0">                                                                                                      ' ;
		html += '               <img class="card-img rounded-0 img-fluid" src="'+item.prodImgList[0].imgPath+'">                                               ' ;
		html += '               <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">                     ' ;
		html += '                   <ul class="list-unstyled">                                                                                                ' ;
		html += '                   	<!-- 자세히보기 -->                                                                                                      ' ;
		html += '                       <li><a class="btn btn-success text-white mt-2" href="/product/detail/'+item.id+'"><i class="far fa-eye"></i></a></li> ' ;
		html += '                   	 </ul>                                                                                                                   ';
		html += '               </div>                                                                                                                        ';
		html += '           </div>                                                                                                                            ';
		html += '           <div class="card-body">                                                                                                           ';
		html += '               <a href="shop-single.html" class="h3 text-decoration-none">'+item.prodNm+'</a>                                                 ';
		html += '               <c:set var="commaPrice" value="javascript:setComma('+item.prodPrice+');" />                                                    ';
		html += '               <p class="text-center mb-0">10,000원</p>                                                                                      ';
		html += '           </div>                                                                                                                         ';
		html += '       </div>';
		html +='   </div> ';
	});
	
	$('#prodList').empty().append(html);
	
};
/*
 *	ctgId로 상품 찾기
 *
 */
var searchByCtgId = function(ctgId){
		//var ctgId = $(this).closest('li').attr('id');
		
		console.log("ctgId > " + ctgId);
		 $.ajax({
			    url: "/product/searchByCtgId", // 클라이언트가 HTTP 요청을 보낼 서버의 URL 주소
			    dataType:'json',
		        contentType: 'application/json',
			    data: JSON.stringify({
			    	categoryId : Number(ctgId)
			    }) ,  // HTTP 요청과 함께 서버로 보낼 데이터
			    method: "POST",   // HTTP 요청 메소드(GET, POST 등)
			    async: true, //비동기 여부
			})
			.success(function(data) {
				console.log("ctgProdList : " + JSON.stringify(data));
				
				drawProdList(data);
			})
			.fail(function(xhr, status, errorThrown) {
			    alert("오류 발생..");
			})
			.always(function(xhr, status) {
				
			});
};
/*
 *	2단계 카테고리 그리기
 *
 */
var drawSubCtg = function(data, oppCtgId){
    var sHtml='';
    
    $.each(data, function(index, item){
    	sHtml += '<li id="'+item.id+'"><a name="ctgCd" class="text-decoration-none" onclick="javascript:searchByCtgId('+item.id+');" href="#" >'+item.ctgNm +'</a></li>'
    });
    
	$('#childFor_'+oppCtgId).empty().append(sHtml);
};

/*
 *	상위 카테고리아이디로 하위 카테고리 리스트 받아오는 함수 
 *	
 *
 */
function getChildCtgList(oppCtgId){
	 $.ajax({
		    url: "/category/getChildCtg?oppCtgId="+oppCtgId, // 클라이언트가 HTTP 요청을 보낼 서버의 URL 주소
		    dataType:'json',
	        contentType: 'application/json',
		    //data: "oppCtgId ="+ oppCtgId ,  // HTTP 요청과 함께 서버로 보낼 데이터
		    method: "GET",   // HTTP 요청 메소드(GET, POST 등)
		    async: true, //비동기 여부
		})
		.success(function(data) {
			console.log("childList : " + JSON.stringify(data));
			_testData = data;
			drawSubCtg(data, oppCtgId);
			
		})
		.fail(function(xhr, status, errorThrown) {
		    alert("오류 발생..");
		})
		.always(function(xhr, status) {
			
		});
};

</script>
<body>
	<!-- Modal -->
    <!-- <div class="modal fade bg-white" id="templatemo_search" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="w-100 pt-1 mb-5 text-right">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="" method="get" class="modal-content modal-body border-0 p-0">
                <div class="input-group mb-2">
                    <input type="text" class="form-control" id="inputModalSearch" name="q" placeholder="Search ...">
                    <button type="submit" class="input-group-text bg-success text-light">
                        <i class="fa fa-fw fa-search text-white"></i>
                    </button>
                </div>
            </form>
        </div>
    </div> -->
    <div class="modal fade bg-white" id="templatemo_search" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="w-100 pt-1 mb-5 text-right">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            글 비밀번호 입력:
            <form action="" method="get" class="modal-content modal-body border-0 p-0">
                <div class="input-group mb-2">
                    <input type="text" class="form-control" id="conPw" name="conPw" placeholder="글 비밀번호 ...">
                    <button type="submit" class="input-group-text bg-success text-light">
                        <i class="fa fa-fw fa-search text-white"></i>
                    </button>
                </div>
            </form>
        </div>
    </div>

    <!-- Start Content -->
    <div class="container py-5">
        <div class="row">

            <div class="col-lg-3">
                <h1 class="h2 pb-4">Category</h1>
                <ul class="list-unstyled templatemo-accordion" id="rootCtgUl">
                	<c:forEach items="${rootCtgList}" var = "item" varStatus="vs">
	               		<li class="pb-3" id="rootCtg_${item.id}" data-ctg-id="${item.id }">
	                        <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="#">
	                             ${item.ctgNm }
	                            <i class="fa fa-fw fa-chevron-circle-down mt-1"></i>
	                        </a>
	                        <ul class="collapse show list-unstyled pl-3" id="childFor_${item.id}">
	                            
	                        </ul>
	                    </li>
                	</c:forEach>
                </ul>
            </div>

            <div class="col-lg-9">
                <div class="row" id = "prodList">
                	<%-- <c:forEach items="${prodList}" var = "item" varStatus="vs">
	                    <div class="col-md-4">
	                        <div class="card mb-4 product-wap rounded-0">
	                            <div class="card rounded-0">
	                                <img class="card-img rounded-0 img-fluid" src="${item.prodImgList[0].imgPath}">
	                                <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
	                                    <ul class="list-unstyled">
	                                    	<!-- 좋아요버튼(하트) -->
	                                        <!-- <li><a class="btn btn-success text-white" href="shop-single.html"><i class="far fa-heart"></i></a></li> -->
	                                    	<!-- 자세히보기 -->
	                                        <li><a class="btn btn-success text-white mt-2" href="/product/detail/${item.id }"><i class="far fa-eye"></i></a></li>
	                                    	<!-- 카트 -->
	                                        <!-- <li><a class="btn btn-success text-white mt-2" href="shop-single.html"><i class="fas fa-cart-plus"></i></a></li> -->
	                                    </ul>
	                                </div>
	                            </div>
	                            <div class="card-body">
	                                <a href="shop-single.html" class="h3 text-decoration-none">${item.prodNm}</a>
	                                <!-- <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
	                                    <li>M/L/X/XL</li>
	                                    <li class="pt-2">
	                                        <span class="product-color-dot color-dot-red float-left rounded-circle ml-1"></span>
	                                        <span class="product-color-dot color-dot-blue float-left rounded-circle ml-1"></span>
	                                        <span class="product-color-dot color-dot-black float-left rounded-circle ml-1"></span>
	                                        <span class="product-color-dot color-dot-light float-left rounded-circle ml-1"></span>
	                                        <span class="product-color-dot color-dot-green float-left rounded-circle ml-1"></span>
	                                    </li>
	                                </ul> -->
	                               <!--  <ul class="list-unstyled d-flex justify-content-center mb-1">
	                                    <li>
	                                        <i class="text-warning fa fa-star"></i>
	                                        <i class="text-warning fa fa-star"></i>
	                                        <i class="text-warning fa fa-star"></i>
	                                        <i class="text-muted fa fa-star"></i>
	                                        <i class="text-muted fa fa-star"></i>
	                                    </li>
	                                </ul> -->
	                                <c:set var="commaPrice" value="javascript:setComma(${item.prodPrice});" />
	                                <p class="text-center mb-0">${item.prodPrice}</p>
	                                <p class="text-center mb-0">10,000원</p>
	                            </div>
	                        </div>
	                    </div>
	                </c:forEach> --%>
                <div div="row">
                    <ul class="pagination pagination-lg justify-content-end">
                        <li class="page-item disabled">
                            <a class="page-link active rounded-0 mr-3 shadow-sm border-top-0 border-left-0" href="#" tabindex="-1">1</a>
                        </li>
                        <li class="page-item">
                            <a class="page-link rounded-0 mr-3 shadow-sm border-top-0 border-left-0 text-dark" href="#">2</a>
                        </li>
                        <li class="page-item">
                            <a class="page-link rounded-0 shadow-sm border-top-0 border-left-0 text-dark" href="#">3</a>
                        </li>
                    </ul>
                </div>
            </div>

        </div>
    </div>
    <!-- End Content -->

    <!-- Start Brands -->
    <section class="bg-light py-5">
        <div class="container my-4">
            <div class="row text-center py-3">
                <div class="col-lg-6 m-auto">
                    <h1 class="h1">Our Brands</h1>
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                        Lorem ipsum dolor sit amet.
                    </p>
                </div>
                <div class="col-lg-9 m-auto tempaltemo-carousel">
                    <div class="row d-flex flex-row">
                        <!--Controls-->
                        <div class="col-1 align-self-center">
                            <a class="h1" href="#multi-item-example" role="button" data-bs-slide="prev">
                                <i class="text-light fas fa-chevron-left"></i>
                            </a>
                        </div>
                        <!--End Controls-->

                        <!--Carousel Wrapper-->
                        <div class="col">
                            <div class="carousel slide carousel-multi-item pt-2 pt-md-0" id="multi-item-example" data-bs-ride="carousel">
                                <!--Slides-->
                                <div class="carousel-inner product-links-wap" role="listbox">

                                    <!--First slide-->
                                    <div class="carousel-item active">
                                        <div class="row">
                                            <div class="col-3 p-md-5">
                                                <a href="#"><img class="img-fluid brand-img" src="assets/img/brand_01.png" alt="Brand Logo"></a>
                                            </div>
                                            <div class="col-3 p-md-5">
                                                <a href="#"><img class="img-fluid brand-img" src="assets/img/brand_02.png" alt="Brand Logo"></a>
                                            </div>
                                            <div class="col-3 p-md-5">
                                                <a href="#"><img class="img-fluid brand-img" src="assets/img/brand_03.png" alt="Brand Logo"></a>
                                            </div>
                                            <div class="col-3 p-md-5">
                                                <a href="#"><img class="img-fluid brand-img" src="assets/img/brand_04.png" alt="Brand Logo"></a>
                                            </div>
                                        </div>
                                    </div>
                                    <!--End First slide-->

                                    <!--Second slide-->
                                    <div class="carousel-item">
                                        <div class="row">
                                            <div class="col-3 p-md-5">
                                                <a href="#"><img class="img-fluid brand-img" src="assets/img/brand_01.png" alt="Brand Logo"></a>
                                            </div>
                                            <div class="col-3 p-md-5">
                                                <a href="#"><img class="img-fluid brand-img" src="assets/img/brand_02.png" alt="Brand Logo"></a>
                                            </div>
                                            <div class="col-3 p-md-5">
                                                <a href="#"><img class="img-fluid brand-img" src="assets/img/brand_03.png" alt="Brand Logo"></a>
                                            </div>
                                            <div class="col-3 p-md-5">
                                                <a href="#"><img class="img-fluid brand-img" src="assets/img/brand_04.png" alt="Brand Logo"></a>
                                            </div>
                                        </div>
                                    </div>
                                    <!--End Second slide-->

                                    <!--Third slide-->
                                    <div class="carousel-item">
                                        <div class="row">
                                            <div class="col-3 p-md-5">
                                                <a href="#"><img class="img-fluid brand-img" src="assets/img/brand_01.png" alt="Brand Logo"></a>
                                            </div>
                                            <div class="col-3 p-md-5">
                                                <a href="#"><img class="img-fluid brand-img" src="assets/img/brand_02.png" alt="Brand Logo"></a>
                                            </div>
                                            <div class="col-3 p-md-5">
                                                <a href="#"><img class="img-fluid brand-img" src="assets/img/brand_03.png" alt="Brand Logo"></a>
                                            </div>
                                            <div class="col-3 p-md-5">
                                                <a href="#"><img class="img-fluid brand-img" src="assets/img/brand_04.png" alt="Brand Logo"></a>
                                            </div>
                                        </div>
                                    </div>
                                    <!--End Third slide-->

                                </div>
                                <!--End Slides-->
                            </div>
                        </div>
                        <!--End Carousel Wrapper-->

                        <!--Controls-->
                        <div class="col-1 align-self-center">
                            <a class="h1" href="#multi-item-example" role="button" data-bs-slide="next">
                                <i class="text-light fas fa-chevron-right"></i>
                            </a>
                        </div>
                        <!--End Controls-->
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--End Brands-->
	
</body>