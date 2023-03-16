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
              <table id="reservationTable" class="table" style="width: 100%; margin-left: 30px;">
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
			                        <div id="cancelBtnDiv_${reservation.RESERVATION_NUM}" data-reservationStatus="${reservation.RESERVATION_STATUS}">
			                        	<button type="button" class="btn btn-danger btn-sm" name="reservationCancel" data-reservationNum="${reservation.RESERVATION_NUM}" data-shopNum="${reservation.RESERVATION_SHOP_NUM}" data-goodsNum="${reservation.RESERVATION_PRONUM}" data-goodsSize="${reservation.RESERVATION_SIZE}" data-reservationStatus="${reservation.RESERVATION_STATUS}">픽업 취소</button>
			                        </div>
		                        </c:if>
		                        <c:if test="${reservation.RESERVATION_STATUS == '예약 대기중'}">
		                       	 	<div id="approveBtnDiv_${reservation.RESERVATION_NUM}">
				                        <button type="button" class="btn btn-primary btn-sm" name="reservationApprove" data-reservationNum="${reservation.RESERVATION_NUM}" data-shopNum="${reservation.RESERVATION_SHOP_NUM}" data-goodsNum="${reservation.RESERVATION_PRONUM}" data-goodsSize="${reservation.RESERVATION_SIZE}">예약 승인</button>
		                           		<button type="button" class="btn btn-secondary btn-sm" name="reservationReject" data-reservationNum="${reservation.RESERVATION_NUM}" data-reservationStatus="${reservation.RESERVATION_STATUS}">예약 거부</button>
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
		const reservationStatus = $(this).attr("data-reservationStatus");
		
		fn_reservationApprove(reservationNum, goodsNum, shopNum, goodsSize, reservationStatus);
	
	});
	
	function fn_reservationApprove(reservationNum, goodsNum, shopNum, goodsSize, reservationStatus){
		
		var formData = new FormData();
		formData.append("RESERVATION_NUM", reservationNum);
		formData.append("RESERVATION_PRONUM", goodsNum);
		formData.append("RESERVATION_SHOP_NUM", shopNum);
		formData.append("RESERVATION_SIZE", goodsSize);
		formData.append("RESERVATION_STATUS", reservationStatus);
		formData.append("paymentKey", localStorage.getItem(reservationNum));
		
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
					str += data.RESERVATION_STATUS;
					str += '</p>';
					
					$("#statusDiv_"+reservationNum).append(str);
					
					str2 = '<button type="button" class="btn btn-danger btn-sm" name="reservationCancel" ';
					str2 += 'data-reservationNum="';
					str2 += reservationNum;
					str2 += '" data-shopNum="';
					str2 += shopNum;
					str2 += '" data-goodsNum="';
					str2 += goodsNum;
					str2 += '" data-goodsSize="';
					str2 += goodsSize;
					str2 += '" data-reservationStatus="';
					str2 += data.RESERVATION_STATUS;
					str2 += '">픽업 취소</button>';
					
					alert(str2);
					$("#approveBtnDiv_"+reservationNum).append(str2);
				}else if(data.result == "fail"){
					alert("실패");
				}
				
			},
			error : function(){
				alert("오류 발생");
			}
		});
	}
	
	
 	$("button[name='reservationReject']").on("click", function(e){  // 예약 거부 
		e.preventDefault();
 	
 		const reservationNum = $(this).attr("data-reservationNum");
 		const reservationStatus = $(this).attr("data-reservationStatus");
 		
		fn_reservationReject(reservationNum, reservationStatus);
		
	});
	
	function fn_reservationReject(reservationNum, reservationStatus){
		var formData = new FormData();
		
		formData.append("RESERVATION_NUM", reservationNum);
		formData.append("RESERVATION_STATUS", reservationStatus);
		formData.append("paymentKey", localStorage.getItem(reservationNum));
		
		
		if(confirm("픽업 예약을 거부하시겠습니까?")){
			$.ajax({
				type : 'post',
				url : '/sk/tossPaymentsCancel',
				data : formData,
				processData : false,
				contentType : false,
				success : function(data){
					if(data.result == "pass"){
						alert("픽업 예약이 거부되었습니다.");
						$("#approveBtnDiv_"+reservationNum).empty();
						$("#statusDiv_"+reservationNum).empty();
						str = '<p style="font-size: medium;">';
						str += data.RESERVATION_STATUS;
						str += '</p>';
						
						$("#statusDiv_"+reservationNum).append(str);
					 }else if(data.result == "fail"){
						 alert("실패");
					 }
				},
				error : function(){
					alert("오류 발생");
				}
			});
			
		}
		
	} 
	
	//이벤트 상속(#reservationTable를 이벤트 대상으로 지정하고 "click"이벤트 대상을 "button[name='reservationCancel']"에게 상속)
	//이벤트를 상속받는 태그("button[name='reservationCancel']")는 페이지가 로드될 때 존재하지 않아도 "#reservationTable"가 페이지 로드 시 존재할 경우 이벤트 상속 가능
	$("#reservationTable").on("click", "button[name='reservationCancel']", function(e){  // 픽업 취소 
		e.preventDefault();
 	
 		const reservationNum = $(this).attr("data-reservationNum");
 		const reservationStatus = $(this).attr("data-reservationStatus");
 		
		fn_reservationCancel(reservationNum, reservationStatus);
		
	});
	
	function fn_reservationCancel(reservationNum, reservationStatus){
		var formData = new FormData();
		
		formData.append("RESERVATION_NUM", reservationNum);
		formData.append("RESERVATION_STATUS", reservationStatus);
		formData.append("paymentKey", localStorage.getItem(reservationNum));
		
		
		if(confirm("픽업 예약을 취소하시겠습니까?")){
			$.ajax({
				type : 'post',
				url : '/sk/tossPaymentsCancel',
				data : formData,
				processData : false,
				contentType : false,
				success : function(data){
					if(data.result == "pass"){
						alert("픽업 예약이 취소되었습니다.");
						$("#cancelBtnDiv_"+reservationNum).empty();
						$("#approveBtnDiv_"+reservationNum).empty();
						$("#statusDiv_"+reservationNum).empty();
						str = '<p style="font-size: medium;">';
						str += data.RESERVATION_STATUS;
						str += '</p>';
						
						$("#statusDiv_"+reservationNum).append(str);
					 }else if(data.result == "fail"){
						 alert("실패");
					 }
				},
				error : function(){
					alert("오류 발생");
				}
			});
			
		}
		
	} 
	
});
</script>
</html>