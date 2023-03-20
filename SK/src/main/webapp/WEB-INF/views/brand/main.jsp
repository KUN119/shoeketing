<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/include-taglib.jspf" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="col-12 text-center" style="margin-top: 0px; margin-left: 0%">
    <div>
    	<img class="mb-2 mt-2 rounded" style="width: 100px; height: 100px; margin-right: 0%; " src="/sk/image/display?fileName=${brandPageInfoMap.BRAND_LOGO_FILE}">
    </div>
    <h1 class="display-5 fw-bold mt-2">${brandPageInfoMap.BRAND_NAME}</h1>
     	<div class="col-lg-6 mx-auto">
       		<p class="lead mb-4" style="text-align: left;">${brandPageInfoMap.BRAND_INFO}</p>
     	</div>
    <hr style="width: 70%; margin-left: 15%; margin-top: 5%;">
    </div>

      <h1 class="display-5 fw-bold mt-5" style="text-align: center;">NEW PRODUCT</h1>
       	<div class="row row-cols-1 row-cols-sm-3 row-cols-md-5 g-5 px-0 text-center mt-1" style="width: 70%; margin-left: 15%;">
        <c:choose>
			<c:when test="${fn:length(recentGoodsList) > 0 }">
				<c:forEach items="${recentGoodsList}" var="recentGoods" varStatus="status">
				
			        <a href="#">
			            <div class="col">
			          <div class="card shadow-sm">
			            <svg class="bd-placeholder-img card-img-top" width="150" height="200" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false">
			                <image href="/sk/image/display?fileName=${recentGoodsThumbnailList[status.index].GOODS_IMAGE_STD}" height="100%" width="100%" />
			            </svg>
			
			            <div class="card-body">
			              <p class="card-text mb-1">${brandPageInfoMap.BRAND_NAME}</p>
			              <p class="card-text mb-1" style="font-size: x-small; color: rgb(94, 95, 95);">${recentGoods.TOTAL_GOODS_NAME}</p>
			              <p class="card-text mb-1" style="font-size: x-small; color: rgb(94, 95, 95);">${recentGoods.TOTAL_GOODS_MODEL }</p>
			              <p class="card-text" style="font-size: medium; color: rgb(0, 0, 0); font-weight: bolder;">${recentGoods.TOTAL_GOODS_PRICE}원</p>
			            </div>
			          </div>
			        </div>
			        </a>
			         
		       	</c:forEach>
	       	</c:when>
       	</c:choose>
       	</div>

          <hr style="width: 70%; margin-left: 15%; margin-top: 5%;">
          <h1 class="display-5 fw-bold mt-5" style="text-align: center;">RANKING</h1>
          <div class="row row-cols-1 row-cols-sm-3 row-cols-md-5 g-5 px-0 text-center mt-1" style="width: 70%; margin-left: 15%;">
	     	<c:choose>
				<c:when test="${fn:length(rankingGoodsList) > 0 }">
					<c:forEach items="${rankingGoodsList}" var="rankingGoods" varStatus="status">
				      
				        <a href="#">
				            <div class="col">
				          <div class="card shadow-sm">
				            <svg class="bd-placeholder-img card-img-top" width="150" height="200" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false">
				                <image href="/sk/image/display?fileName=${rankingGoodsThumbnailList[status.index].GOODS_IMAGE_STD}" height="100%" width="100%" />
				            </svg>
				
				            <div class="card-body">
				              <p class="card-text mb-1">${brandPageInfoMap.BRAND_NAME}</p>
				              <p class="card-text mb-1" style="font-size: x-small; color: rgb(94, 95, 95);">${rankingGoods.TOTAL_GOODS_NAME }</p>
				              <p class="card-text mb-1" style="font-size: x-small; color: rgb(94, 95, 95);">${rankingGoods.TOTAL_GOODS_MODEL }</p>
				              <p class="card-text" style="font-size: medium; color: rgb(0, 0, 0); font-weight: bolder;">${rankingGoods.TOTAL_GOODS_PRICE}원</p>
				            </div>
				          </div>
				        </div>
				        </a>
			        </c:forEach>
		        </c:when>
	        </c:choose>
          </div>
     <br>
     <br>
</body>
</html>