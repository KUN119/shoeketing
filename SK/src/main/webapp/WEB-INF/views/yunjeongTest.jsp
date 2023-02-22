<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>윤정 테스트용</title>
</head>
<body>

테스트용 jsp!!! <br/><br/>

<%-- 브랜드 위치 조회 <br/>
매장 이름 : ${shopLocationInfoMap.SHOP_NAME}<br>
매장 위치 : ${shopLocationInfoMap.SHOP_ADD}<br>
매장 전화번호 : ${shopLocationInfoMap.SHOP_TEL}<br>
매장 영업 시작시간 : ${shopLocationInfoMap.SHOP_START_TIME}<br>
매장 영업 종료시간 : ${shopLocationInfoMap.SHOP_END_TIME}<br> --%>

 	<%-- <c:choose>
		 	<c:when test="${fn:length(shopRequestList) > 0 }">
		 		<c:forEach items="${shopRequestList}" var="shop">
		 			<tr>  <!-- SHOP_TEL, SHOP_ADD, SHOP_START_TIME, SHOP_END_TIME -->
					      <td>매장 이름 : ${shop.SHOP_NAME }</td>
					      <td>매장 전화번호 : ${shop.SHOP_TEL }</td>
					      <td>매장 위치 : ${shop.SHOP_ADD }</td> 
					      <td>매장 영업 시작시간 : ${shop.SHOP_START_TIME }</td>
					      <td>매장 영업 종료시간 : ${shop.SHOP_END_TIME }</td>
					      <br>
		   		 	</tr>
		 		</c:forEach>
		 	</c:when>
		 </c:choose> --%>

<!-- 브랜드관 테스트 -->

<!-- 브랜드관 최신상품 5개 -->

브랜드관 최신상품<br>
<c:choose>
	<c:when test="${fn:length(recentGoodsList) > 0 }">
		<c:forEach items="${recentGoodsList}" var="recentGoods" varStatus="status">
			<tr>  
		      <td>상품 이름 : ${recentGoods.TOTAL_GOODS_NAME }</td>
		      <td>상품 모델명 : ${recentGoods.TOTAL_GOODS_MODEL }</td>
		      <td>상품 가격 : ${recentGoods.TOTAL_GOODS_PRICE}</td>
		      <td>최신상품 이미지 : ${recentGoodsThumbnailList[status.index].GOODS_IMAGE_STD} </td>
		      <br>
  		 	</tr>
		</c:forEach>
	</c:when>
</c:choose>



<!-- 브랜드관 인기상품 5개 -->
rankingGoodsList

</body>
</html>