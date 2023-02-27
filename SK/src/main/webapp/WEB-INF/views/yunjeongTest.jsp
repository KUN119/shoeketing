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
<br>

<!-- 브랜드관 인기상품 5개 -->
브랜드관 인기상품<br>
<c:choose>
	<c:when test="${fn:length(rankingGoodsList) > 0 }">
		<c:forEach items="${rankingGoodsList}" var="rankingGoods" varStatus="status">
			<tr>  
		      <td>상품 이름 : ${rankingGoods.TOTAL_GOODS_NAME }</td>
		      <td>상품 모델명 : ${rankingGoods.TOTAL_GOODS_MODEL }</td>
		      <td>상품 가격 : ${rankingGoods.TOTAL_GOODS_PRICE}</td>
		      <td>최신상품 이미지 : ${rankingGoodsThumbnailList[status.index].GOODS_IMAGE_STD} </td>
		      <br>
  		 	</tr>
		</c:forEach>
	</c:when>
</c:choose>

rankingGoodsList <br><br>

 
<!-- 매장 정보조회 --> 
매장 아이디 : ${shopInfoMap.SHOP_ID} <br>
지점명 : ${shopInfoMap.SHOP_NAME} <br>
매장 연락처 : ${shopInfoMap.SHOP_TEL} <br>
매장 영업 시간 : ${shopInfoMap.SHOP_START_TIME} ~ ${shopInfoMap.SHOP_END_TIME} <br>
매장주소 :  ${shopInfoMap.SHOP_ADD} <br>
 
<!-- 매장 정보 수정결과 -->
매장 정보 수정결과 : ${updateResultMap.result}

<!-- 매장 문의내역 리스트 (답변여부까지) -->
매장 문의 토탈개수 : ${shopCSCount} <br>
매장 문의 리스트<br>
<c:choose>
	<c:when test="${fn:length(shopCSList) > 0 }">
		<c:forEach items="${shopCSList}" var="shopCS" varStatus="status">
			<tr>  
		      <td>작성자 : ${shopCS.MEM_NUM}</td>
		      <td>제목 : ${shopCS.CS_TITLE}</td>
		      <td>작성날짜 : ${shopCS.CS_DATE}</td>
		      <td>답변 처리상태 : ${csReplyStatusList[status.index].csReplyStatus}</td>
		      <br>
  		 	</tr>
		</c:forEach>
	</c:when>
</c:choose>

<br>
<!-- 매장 문의 상세보기 -->
문의 제목 : ${csDetailMap.CS_TITLE} <br>
문의 작성자 : ${csDetailMap.MEM_EMAIL} <br>
문의 작성일자 : ${csDetailMap.CS_DATE}<br>
문의 내용 : ${csDetailMap.CS_CONTENT} <br>
답변 상태 : ${csReplyStatus}<br>
<br>
문의 댓글 : ${csReplyMap.CS_REPLY_CONTENT} <br>


<!-- 매장 정보 상세조회 -->
shopInfoMap
매장명 : ${shopInfoMap.SHOP_NAME} 
매장 주소 :  ${shopInfoMap.SHOP_ADD}
매장 전화번호 :  ${shopInfoMap.SHOP_TEL}

<!-- 매장 상품번호, 사이즈에 해당하는 재고수량 -->
shopGoodsAmount
재고수량 : ${shopGoodsAmount}


</body>
</html>