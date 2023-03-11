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
<div class="col-10" style="margin-top: 0px;">
          <h3 style="margin-left: 30px; color: black; font-weight: bolder;">예약 관리</h3>
            <hr style="border: solid 1px rgb(73, 73, 73); width: 100%; ">
              <table class="table" style="width: 100%; margin-left: 30px;">
                <tbody>
                  <c:choose>
					<c:when test="${fn:length(reservationList) > 0 }">
						<c:forEach items="${reservationList}" var="reservation"> 
		                  <tr>
		                    <th scope="rowspan-3" style="width: 20%;">
		                        <a href="#"><img src="/sk/image/display?fileName=${reservation.GOODS_IMAGE_STD}" height="200" width="250"/></a>
		                    </th>
		                    <td style="text-align: left; width: 20%; vertical-align:middle;">
		                        <a href="#"><p style="font-size: small;">${reservation.RESERVATION_NUM}</p></a>
		                        <p style="font-weight: bolder; font-size: large;">${reservation.TOTAL_GOODS_NAME} / ${reservation.TOTAL_GOODS_MODEL}</p>
		                        <div class="row">
		                            <div class="col-md-6 themed-grid-col">${reservation.RESERVATION_SIZE}mm</div>
		                            <div class="col-md-6 themed-grid-col">${reservation.MEM_NAME} | ${reservation.RESERVATION_PHONE}</div>
		                          </div>
		                    </td>
		                    <td style="text-align: center; width: 10%; margin-bottom: 1; vertical-align: middle;">
		                        <p style="font-weight: bolder; font-size: large;">${reservation.TOTAL_GOODS_PRICE}원</p>
		                        <p style="font-size: medium;">${reservation.RESERVATION_STATUS}</p>
		                        <p style="font-size: medium;">${reservation.RESERVATION_DATE}</p>
		                    </td>
		                    <td style="font-weight: bolder; text-align: center; vertical-align:middle; width:10%;">
		                        <c:if test="${reservation.RESERVATION_STATUS == '픽업 대기중'}">
		                        <button type="button" class="btn btn-danger btn-sm" id="cancelReservation">픽업 취소</button>
		                        </c:if>
		                        <c:if test="${reservation.RESERVATION_STATUS == '예약 대기중'}">
		                        <button type="button" class="btn btn-primary btn-sm">예약 승인</button>
                           		<button type="button" class="btn btn-secondary btn-sm">예약 거부</button>
		                        </c:if>
		                    </td>
		                  </tr>
	                    </c:forEach>
                    </c:when>
                 </c:choose>
               </tbody>
             </table>

              <hr class="my-4" style="margin-left: 30px; width: 100%;">
              <nav aria-label="Page navigation example" style="margin-left: 50%;">
                <ul class="pagination">
                  <li class="page-item">
                    <a class="page-link" href="#" aria-label="Previous">
                      <span aria-hidden="true">&laquo;</span>
                    </a>
                  </li>
                  <li class="page-item"><a class="page-link" href="#">1</a></li>
                  <li class="page-item"><a class="page-link" href="#">2</a></li>
                  <li class="page-item"><a class="page-link" href="#">3</a></li>
                  <li class="page-item">
                    <a class="page-link" href="#" aria-label="Next">
                      <span aria-hidden="true">&raquo;</span>
                    </a>
                  </li>
                </ul>
              </nav>
            </div>
</body>
</html>