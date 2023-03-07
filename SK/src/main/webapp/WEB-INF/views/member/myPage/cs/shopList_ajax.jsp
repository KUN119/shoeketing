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
<c:forEach var="list" items="${shopList}" varStatus="status">
	<tr class='mb-0' style='height: 70px;' id='firstRow'>
		<td style='width: 20%;'>
			<p style='font-weight: bolder; font-size: medium; margin-bottom: 0;' id="shop_name_${status.index}">${list.SHOP_NAME}</p>
		</td>
		<td id="shop_add_${status.index}">${list.SHOP_ADD}</td>
			<td style='width: 25%;'>
				<a href='#' style='text-decoration: underline;' id='m_select' data-num="${list.SHOP_NUM}">선택</a>
			</td>
	</tr>
</c:forEach>	

</body>
</html>