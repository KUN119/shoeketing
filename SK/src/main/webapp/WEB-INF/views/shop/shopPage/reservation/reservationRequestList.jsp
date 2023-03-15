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
		                        <div id="statusDiv_${reservation.RESERVATION_NUM}">
		                        	<p style="font-size: medium;">${reservation.RESERVATION_STATUS}</p>
		                       	</div>
		                        <p style="font-size: medium;">${reservation.RESERVATION_DATE}</p>
		                    </td>
		                    <td style="font-weight: bolder; text-align: center; vertical-align:middle; width:10%;">
		                        <c:if test="${reservation.RESERVATION_STATUS == '픽업 대기중'}">
			                        <div id="cancelOrRejectBtnDiv_${reservation.RESERVATION_NUM}">
			                        	<button type="button" class="btn btn-danger btn-sm" name="reservationCancelOrReject" data-reservationNum="${reservation.RESERVATION_NUM}" data-shopNum="${reservation.RESERVATION_SHOP_NUM}" data-goodsNum="${reservation.RESERVATION_PRONUM}" data-goodsSize="${reservation.RESERVATION_SIZE}">픽업 취소</button>
			                        </div>
		                        </c:if>
		                        <c:if test="${reservation.RESERVATION_STATUS == '예약 대기중'}">
		                       	 	<div id="approveBtnDiv_${reservation.RESERVATION_NUM}">
				                        <button type="button" class="btn btn-primary btn-sm" name="reservationApprove" data-reservationNum="${reservation.RESERVATION_NUM}" data-shopNum="${reservation.RESERVATION_SHOP_NUM}" data-goodsNum="${reservation.RESERVATION_PRONUM}" data-goodsSize="${reservation.RESERVATION_SIZE}">예약 승인</button>
		                           		<button type="button" class="btn btn-secondary btn-sm" name="reservationCancelOrReject" data-reservationNum="${reservation.RESERVATION_NUM}">예약 거부</button>
			                        </div>
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

<script type="text/javascript">
$(document).ready(function() {
	$("button[name='reservationApprove']").on("click", function(e){  // 예약 승인
		e.preventDefault();
	
		const reservationNum = $(this).attr("data-reservationNum");
		const goodsNum = $(this).attr("data-goodsNum");
		const shopNum = $(this).attr("data-shopNum");
		const goodsSize = $(this).attr("data-goodsSize");
		
		fn_reservationApprove(reservationNum, goodsNum, shopNum, goodsSize);
	
	});
	
	function fn_reservationApprove(reservationNum, goodsNum, shopNum, goodsSize){
		
		var formData = new FormData();
		formData.append("RESERVATION_NUM", reservationNum);
		formData.append("RESERVATION_PRONUM", goodsNum);
		formData.append("RESERVATION_SHOP_NUM", shopNum);
		formData.append("RESERVATION_SIZE", goodsSize);
		
		$.ajax({
			type : 'post',
			url : '/sk/shopPage/reservationApprove', 
			data : formData,
			processData : false,
			contentType : false,
			success : function(data){
				if(data.result == "pass"){
					alert("픽업 예약을 승인하였습니다.");
					$("#approveBtnDiv_"+reservationNum).empty();
					$("#statusDiv_"+reservationNum).empty();
					str = '<p style="font-size: medium;">';
					str += '픽업 대기중';
					str += '</p>';
					
					$("#statusDiv_"+reservationNum).append(str);
					
					str2 = '<button type="button" class="btn btn-danger btn-sm" name="reservationCancelOrReject"';
					str2 += 'data-reservationNum="';
					str2 += data.RESERVATION_NUM;
					str2 += 'data-shopNum="';
					str2 += data.RESERVATION_SHOP_NUM;
					str2 += 'data-goodsNum="';
					str2 += data.RESERVATION_PRONUM;
					str2 += 'data-goodsSize="';
					str2 += data.RESERVATION_SIZE;
					str2 += '">픽업 취소</button>';
					
					$("#cancelOrRejectBtnDiv_"+reservationNum).append(str2);
				}else if(data.result == "fail"){
					alert("실패");
				}
				
			},
			error : function(){
				alert("오류 발생");
			}
		});
	}
	
	
/* 	$("button[name='reservationCancelOrReject']").on("click", function(e){  // 예약 거부 or 픽업 취소
		e.preventDefault();
		fn_reservationCancelOrReject();
		
	});
	
	function fn_reservationApprove(){
		
	} */
});
</script>
</html>