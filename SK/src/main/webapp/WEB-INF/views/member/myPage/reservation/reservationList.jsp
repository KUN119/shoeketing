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
<div class="modal fade" id="reviewModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
                <input type="radio" name="size" value="0" id="size1" style="font-size: medium;"><span>  정사이즈보다 작음</span>
              </td>
              <td>  
              <input type="radio" name="size" value="1" id="size2"><span>  정사이즈</span>
              </td>
              <td>  
              <input type="radio" name="size" value="2" id="size3"><span>  정사이즈보다 큼</span>
              </td>
          </tr>

          <tr style="height: 70px;">
            <td>
              <p style="font-weight: bolder; font-size: medium; margin-bottom: 0;">착화감</p>
            </td>
            <td>
              <input type="radio" name="comfort" value="0" id="size1"><span>  나   쁨</span>
            </td>
            <td>  
            <input type="radio" name="comfort" value="1" id="size2"><span>  보   통</span>
            </td>
            <td>  
            <input type="radio" name="comfort" value="2" id="size3"><span>  좋   음</span>
            </td>
          </tr>

          <tr style="height: 70px;">
            <td>
              <p style="font-weight: bolder; font-size: medium; margin-bottom: 0;">색상</p>
            </td>
            <td>
              <input type="radio" name="color" value="0" id="size1" style="font-size: medium;"><span>  화면보다 어두움</span>
            </td>
            <td>  
            <input type="radio" name="color" value="1" id="size2"><span>  화면과 동일함</span>
            </td>
            <td>  
            <input type="radio" name="color" value="2" id="size3"><span>  화면보다 밝음</span>
            </td>
          </tr>
        </table>
          </div>
          <br>
          <div class="modal-footer">
          	<c:set var="totalGoodsNum" value="${pickup.TOTAL_GOODS_NUM}"/>
            <button type="button" class="btn btn-primary" data-bs-dismiss="modal" name="write" data-num="${totalGoodsNum}">후기 작성</button>
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
			                        <p style="font-weight: bolder; font-size: large;"><fmt:formatNumber type="number" maxFractionDigits="3" value="${pickup.TOTAL_GOODS_PRICE}"/>원</p>
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
			                         <c:if test="${pickup.RESERVATION_STATUS == '픽업 완료'}">
			                         <div id="deleteBtnDiv_${pickup.TOTAL_GOODS_NUM}">
			                        <button type="button" class="btn btn-secondary btn-sm" name="openForm" data-num="${pickup.TOTAL_GOODS_NUM}">리뷰<br/>작성</button>
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
	 var star = "";
	 var size = "";
	 var comfort = "";
	 var color = "";
	 var goodsNum = "";
	
	// 토스 페이먼츠 결제 후, 픽업 예약 리스트 화면이 표시될 때 웹 스토리지에 paymentKey값 저장
	//주문번호 받아와서, 웹 스토리지에 key=주문번호, value=paymentKey로 저장
	var paymentKey = "${paymentKey}";
	localStorage.setItem("${orderId}", paymentKey);

	
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
	
	 $("button[name='openForm']").on("click", function(e) {  // 목록에서 리뷰 작성 버튼
		e.preventDefault();
		goodsNum = $(this).attr("data-num");
		$("button[name='write']").attr("data-num", goodsNum);
		
		checkReviewExists(goodsNum);
			
		});  
	
	 $("button[name='write']").on("click", function(e) {  // 모달에서 리뷰 등록 버튼
		e.preventDefault();
		var goodsNum = $(this).attr("data-num");
		//alert(goodsNum);
		
		writeReview(goodsNum, star, size, comfort, color);
	});  
	 
	 $("label").on("click", function(e) { //별점 선택 시
		 star = $(this).prev("input").val(); //prev() : 이전 형제노드를 찾음
		//alert(star);	
	 });
	 
	 $("input[name='size']").on("click", function(e) { //사이즈 후기 선택 시
		 size = $.trim($(this).next("span").text()); //선택한 문자열 가져옴
		// alert(size);	
	 });
	 
	 $("input[name='comfort']").on("click", function(e) { //착화감 후기 선택 시
		var str = $(this).next("span").text(); //선택한 착화감 가져오기
	 	comfort = str.replaceAll(' ', ''); //문자열 사이 공백 제거
	 	//alert(comfort);
	 });
	  	
	 $("input[name='color']").on("click", function(e) { //색상 후기 선택 시
		 color = $.trim($(this).next("span").text());
		 //alert(color);
	 });
	
	function fn_reservationDelete(reservationNum, reservationStatus){
		
		var formData = new FormData();
		formData.append("RESERVATION_NUM", reservationNum);
		formData.append("RESERVATION_STATUS", reservationStatus);
		formData.append("paymentKey", localStorage.getItem(reservationNum))
		
		if(confirm("예약을 취소하시겠습니까?")) {
			$.ajax({
			type : 'post',
			url : '/sk/reservationCancel',
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
	}
	
	function checkReviewExists(goodsNum) { //리뷰 등록 전에 리뷰 작성 이력을 검사
		var jsonGoodsNum = {TOTAL_GOODS_NUM:goodsNum};
	
		$.ajax({
			type : 'post',
			url : '/sk/myPage/checkReviewExists',
			contentType:"application/json; charset=UTF-8",
			data:JSON.stringify(jsonGoodsNum),
			 success : function(data){
				 if(data > 0) { //리뷰가 존재하면
					 alert("이미 리뷰를 작성한 상품입니다!");
				 } else {
					 $('#reviewModal').modal('show'); //모달창 열기
				 }
			},
			error : function(){
				alert("잠시 후 다시 시도해주세요.");
			}
		});
	}
	
	function writeReview(goodsNum, star, size, comfort, color) { //리뷰 등록 처리
		var formData = new FormData();
		formData.append("TOTAL_GOODS_NUM", goodsNum);
		formData.append("REVIEW_SCORE", star);
		formData.append("REVIEW_SIZE", size);
		formData.append("REVIEW_COMFORT", comfort);
		formData.append("REVIEW_COLOR", color);
		
		
		if(confirm("리뷰를 등록하시겠습니까?")) {
			$.ajax({
			type : 'post',
			url : '/sk/myPage/reviewWrite',
			data : formData,
			processData : false,
			contentType : false,
			 success : function(data){
				 alert("리뷰가 등록되었습니다.");
				 location.reload();
			},
			error : function(){
				alert("잠시 후 다시 시도해주세요.");
			}
		});
		}
	}
});


</script>
</html>