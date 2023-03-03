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
 <body>
<!-- 모달 -->
<div class="modal fade" id="reviewWrite" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content" style="width:600px; height: auto;">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">상품 후기 작성</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <div class="mt-4 ms-3 row-cols-md-1">
          <table>
          <tr>
            <td>
              <p style="font-weight: bolder; font-size: medium;">상품 만족도</p>
            </td>
            <td>
              <form class="mb-3" name="myform" id="myform" method="post">
                <fieldset>
                  <input type="radio" name="reviewStar" value="5" id="rate1"><label
                    for="rate1">★</label>
                  <input type="radio" name="reviewStar" value="4" id="rate2"><label
                    for="rate2">★</label>
                  <input type="radio" name="reviewStar" value="3" id="rate3"><label
                    for="rate3">★</label>
                  <input type="radio" name="reviewStar" value="2" id="rate4"><label
                    for="rate4">★</label>
                  <input type="radio" name="reviewStar" value="1" id="rate5"><label
                    for="rate5">★</label>
                </fieldset>
              </form>
            </td>
            <td></td>
            <td></td>
          </tr>

          <tr style="height: 70px;">
            <td>
              <fieldset>
              <p style="font-weight: bolder; font-size: medium; margin-bottom: 0;">사이즈</p>
            </td>
              <td>
                <input type="radio" name="size" value="1" id="size1" style="font-size: medium;">  정사이즈보다 작음
              </td>
              <td>  
              <input type="radio" name="size" value="4" id="size2">  정사이즈
              </td>
              <td>  
              <input type="radio" name="size" value="3" id="size3">  정사이즈보다 큼
              </td>
          </tr>

          <tr style="height: 70px;">
            <td>
              <p style="font-weight: bolder; font-size: medium; margin-bottom: 0;">착화감</p>
            </td>
            <td>
              <input type="radio" name="size" value="1" id="size1">&nbsp;&nbsp;나&nbsp;&nbsp;쁨
            </td>
            <td>  
            <input type="radio" name="size" value="4" id="size2">&nbsp;&nbsp;보&nbsp;&nbsp;통
            </td>
            <td>  
            <input type="radio" name="size" value="3" id="size3">&nbsp;&nbsp;좋&nbsp;음
            </td>
          </tr>

          <tr style="height: 70px;">
            <td>
              <p style="font-weight: bolder; font-size: medium; margin-bottom: 0;">색상</p>
            </td>
            <td>
              <input type="radio" name="size" value="1" id="size1" style="font-size: medium;">  화면보다 어두움
            </td>
            <td>  
            <input type="radio" name="size" value="4" id="size2">  화면과 동일함
            </td>
            <td>  
            <input type="radio" name="size" value="3" id="size3">  화면보다 밝음
            </td>
          </tr>
        </table>
          </div>
          <br>
          <div class="modal-footer">
            <button type="button" class="btn btn-primary">후기 작성</button>
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
          </div>
      </div>
      </div>
    </div>
  </div>
  <!-- 모달 끝 -->
  
        <div class="col-8" style="margin-top: 0px;">
            <h3 style="margin-left: 30px; color: black; font-weight: bolder;">픽업 예약 목록</h3>
              <table class="table" style="width: 100%; margin-left: 30px;">
                <tbody class="table-group-divider">
                 <!-- 나의 픽업 예약 리스트 -->
				<c:choose>
					<c:when test="${fn:length(pickupList) > 0 }">
						<c:forEach items="${pickupList}" var="pickup">
		                  	<tr>
			                    <th scope="rowspan-3" style="width: 25%;">
			                         <a href="#" name="goodsDetail" data-num="${pickup.RESERVATION_NUM}" data-status="${pickup.RESERVATION_STATUS}"><img src="/sk/image/display?fileName=${pickup.GOODS_IMAGE_STD}" height="120" width="120" /></a>
			                    </th>
			                    <td style="text-align: left; width: 45%; margin-left: 1;">
			                        <a href="#"><p style="font-size: small;">${pickup.BRAND_NAME}</p></a>
			                        <p style="font-weight: bolder; font-size: large;">${pickup.RESERVATION_SIZE}</p>
			                        <p style="font-weight: bolder;">${pickup.TOTAL_GOODS_NAME} / ${pickup.TOTAL_GOODS_MODEL}</p>
			                    </td>
			                    <td style="text-align: left; width: 20%; margin-bottom: 1; ">
			                        <p style="font-weight: bolder; font-size: large;">${pickup.TOTAL_GOODS_PRICE}원</p>
			                        <div id="statusDiv_${pickup.RESERVATION_NUM}">
			                        <p style="font-size: medium;">${pickup.RESERVATION_STATUS}</p>
			                        </div>
			                        <p style="font-size: small;">픽업 지정날짜 : ${pickup.RESERVATION_PICKUP_DATE}</p>
			                    </td>
			                    <td style="font-weight: bolder; text-align: center;">
			                        <br>
			                        <p></p>
			                         <c:if test="${pickup.RESERVATION_STATUS == '예약 대기중' || pickup.RESERVATION_STATUS == '픽업 대기중'}">
			                         <div id="deleteBtnDiv_${pickup.RESERVATION_NUM}">
			                        <button type="button" name="reservationDelete" class="btn btn-secondary btn-sm" data-num="${pickup.RESERVATION_NUM}" data-status="${pickup.RESERVATION_STATUS}">취소</button>
			                        </div>
			                        </c:if>
			                        <br>
			                    </td>
		                  </tr>
						</c:forEach>
					</c:when>
				</c:choose>
                
                </tbody>
              </table>

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
	$("a[name='goodsDetail']").on("click", function(e) { // 픽업 예약 상품 상세조회
		e.preventDefault();
		const reservationNum = $(this).attr("data-num");
		location.href="/sk/myPage/reservationDetail?RESERVATION_NUM=" + reservationNum;
	});
	
	$("button[name='reservationDelete']").on("click", function(e) {  // 픽업 예약 취소
		e.preventDefault();
		
		const reservationNum = $(this).attr("data-num");
		const reservationStatus = $(this).attr("data-status");
	
		fn_reservationDelete(reservationNum, reservationStatus);
	}); 
	
	function fn_reservationDelete(reservationNum, reservationStatus){
		
		var formData = new FormData();
		formData.append("RESERVATION_NUM", reservationNum);
		formData.append("RESERVATION_STATUS", reservationStatus);
		
		$.ajax({
			type : 'post',
			url : '/sk/myPage/reservationDelete',
			data : formData,
			processData : false,
			contentType : false,
			 success : function(data){
				 if(data.result == "pass"){
					 alert("픽업 예약이 취소되었습니다.");
					 $("#deleteBtnDiv_"+reservationNum).empty();
					 $("#statusDiv_"+reservationNum).empty();
					 str = '<p style="font-size: medium;">';
					 str += data.RESERVATION_STATUS;
					 str += '</p>';
					 $("#statusDiv_"+reservationNum).append(str);
				 }else if(data.result == "fail") {
					 alert("실패");
				 }
			},
			error : function(){
				alert("오류 발생");
			}
			
		});
		
	}

});


</script>
</html>