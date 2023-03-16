<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/include-taglib.jspf" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	.container {
        width: 1200px; /*기본값 1500px*/
        max-width: none !important;
      }
</style>
<body>
<!-- pickUpDateModal -->
    <div
      class="modal fade"
      id="pickUpDateModal"
      data-bs-backdrop="static"
      data-bs-keyboard="false"
      tabindex="-1"
      aria-labelledby="staticBackdropLabel"
      aria-hidden="true"
    >
      <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
          <div class="modal-header">
            <h1 class="modal-title fs-5" id="staticBackdropLabel">
              픽업 시작 날짜 선택
            </h1>
            <button
              type="button"
              class="btn-close"
              data-bs-dismiss="modal"
              aria-label="Close"
            ></button>
          </div>
          <div class="modal-body">
          <form id="">
            <input type="date" class="form-control" id="RESERVATION_PICKUP_DATE" name="RESERVATION_PICKUP_DATE"/>
          	<input type="hidden" id="RESERVATION_PRONUM" name="RESERVATION_PRONUM" value="">
          	<input type="hidden" id="TOTAL_GOODS_NAME" name="TOTAL_GOODS_NAME" value="">
          	<input type="hidden" id="RESERVATION_SHOP_NUM" name="RESERVATION_SHOP_NUM" value="">
        	<input type="hidden" id="RESERVATION_SIZE" name="RESERVATION_SIZE" value="">
          	
          </form>
          </div>
          <div class="modal-footer">
            <button
              type="button"
              class="btn btn-secondary"
              data-bs-dismiss="modal"
            >
              취소
            </button>
            <!-- 토스 페이먼츠 API -->
            <div id="payment-method"></div>
            <button type="button" class="btn btn-primary" id="payment-button">예약하기</button>
            <!-- 토스 페이먼츠 API 끝-->
          </div>
        </div>
      </div>
    </div>
    
    <!-- CSModal -->
    <div
      class="modal fade"
      id="CSModal"
      data-bs-backdrop="static"
      data-bs-keyboard="false"
      tabindex="-1"
      aria-labelledby="staticBackdropLabel"
      aria-hidden="true"
    >
      <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
          <div class="modal-header">
            <h1 class="modal-title fs-5" id="staticBackdropLabel">매장 문의</h1>
            <button
              type="button"
              class="btn-close"
              data-bs-dismiss="modal"
              aria-label="Close"
            ></button>
          </div>
          <div class="modal-body">
            <form>
              <div class="d-flex">
                <label
                  for="CS_TITLE"
                  class="form-label align-self-center mb-0"
                  style="width: 5rem; font-weight: 500"
                  >제목</label
                >
                <input
                  type="text"
                  class="form-control"
                  id="CS_TITLE"
                  name="CS_TITLE"
                  placeholder="제목을 입력해주세요"
                  required
                />
              </div>

              <hr/>

              <div class="d-flex">
                <label
                  for="CS_CONTENT"
                  class="form-label"
                  style="width: 5rem; font-weight: 500"
                  >내용</label
                >
                <textarea
                  class="form-control"
                  id="CS_CONTENT"
                  name="CS_CONTENT"
                  rows="8"
                  placeholder="내용을 입력해주세요"
                  required
                ></textarea>
              </div>
            </form>
          </div>
          <div class="modal-footer">
            <button
              type="button"
              class="btn btn-secondary"
              data-bs-dismiss="modal"
            >
              취소
            </button>
            <button type="button" class="btn btn-primary">문의작성</button>
          </div>
        </div>
      </div>
    </div>

    <div class="container">
      <div class="row mt-5">
      <form id="findStockForm">
        <h3 class="mb-4" style="font-weight: 700">실시간 재고 검색</h3>

        <div class="d-flex mb-4">
          <div class="col-3 d-flex me-5">
            <label
              for="BRAND_NAME"
              class="form-label align-self-center mb-0"
              style="width: 5rem; font-weight: 500"
              >브랜드</label
            >
            <input
              type="text"
              class="form-control"
              id="BRAND_NAME"
              name="BRAND_NAME"
              value="${brandName }"
              placeholder="브랜드명을 입력해주세요"
              required
            />
          </div>

          <div class="col-3 d-flex me-5">
            <label
              for="GOODS_NAME"
              class="form-label align-self-center mb-0"
              style="width: 5rem; font-weight: 500"
              >제품명</label
            >
            <input
              type="text"
              class="form-control"
              id="GOODS_NAME"
              name="GOODS_NAME"
              value="${goodsName }"
              placeholder="상품명을 입력해주세요"
              required
            />
          </div>

          <div class="col-3 d-flex me-5">
            <label
              for="GOODS_SIZE"
              class="form-label align-self-center mb-0"
              style="width: 5rem; font-weight: 500"
              >사이즈</label
            >
            <input
              type="text"
              class="form-control"
              id="GOODS_SIZE"
              name="GOODS_SIZE"
              value="${goodsSize }"
              placeholder="사이즈를 입력해주세요"
              required
            />
          </div>
        </div>

        <div class="d-flex">
          <div class="d-flex">
            <label
              for="SHOP_NAME"
              class="form-label align-self-center mb-0"
              style="width: 5rem; font-weight: 500"
              >매장</label
            >
            <input
              type="text"
              class="form-control"
              id="SHOP_NAME"
              name="SHOP_NAME"
              placeholder="매장명을 입력해주세요(선택)"
            />
            <button
              class="btn btn-secondary ms-3"
              name="searchShop"
              type="button"
              style="width: 8rem"
            >
              매장검색
            </button>
          </div>
        </div>
        </form>
      </div>

	<div id="shopListDiv">
      <!-- 검색한 매장 리스트 위치 -->
    </div>

      <!--카카오 지도 API 적용 div-->
      <div class="row justify-content-center">
      	<div id="map" style="width: 900px; height: 600px"></div>
      </div>
      <!--카카오 지도 API 적용 div 끝-->
    </div>
    
  </body>
  
  
  <script
    type="text/javascript"
    src="//dapi.kakao.com/v2/maps/sdk.js?appkey=08e2c5126e1c7f5ac14b68c3f37365ad"
  ></script>
  
  <script>
  $(document).ready(function(e) {
	  
	  
	  $("button[name='searchShop']").on("click", function(e) {
		 var formData = new FormData(document.getElementById("findStockForm"));
		 
		 $.ajax({
			url : "/sk/goods/stockSearch",
			type : "POST",
			data : formData,
			contentType : false,
			processData : false,
			success : function(data) {
				$("#shopListDiv").empty();
				$("#shopListDiv")[0].innerHTML = data;
			}
		 });
	  });
	  
		
	  $("#shopListDiv").on("click", "a", function(e) {
		  e.preventDefault();
		  const shopNum = $(this).attr('data-num');
		  const goodsAmount = $(this).attr('data-amount');
		  const goodsNum = $(this).attr('data-goods_num');
		  const goodsName = $(this).attr('data-goods_name');
		  const goodsSize = $(this).attr('data-goods_size');
		  
		  $('#RESERVATION_PRONUM').val(goodsNum);
		  $('#TOTAL_GOODS_NAME').val(goodsName);
		  $('#RESERVATION_SHOP_NUM').val(shopNum);
		  $('#RESERVATION_SIZE').val(goodsSize);
		  
		  var formData2 = new FormData();
		  formData2.append("SHOP_NUM", shopNum);
		  
		  $.ajax({
				url : "/sk/goods/stockShopInfo",
				type : "post",
				data : formData2,
				contentType : false,
				processData : false,
				success : function(data) {
					var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
					mapOption = {
							// ####### 좌표 입력1 #########
					    center: new kakao.maps.LatLng(data.SHOP_POS2, data.SHOP_POS1), // 지도의 중심좌표 SHOP_POS2, SHOP_POS1 값 넣어주기
					    level: 3 // 지도의 확대 레벨
					};
					
					var map = new kakao.maps.Map(mapContainer, mapOption);
					
					//마커가 표시될 위치입니다 ####### 좌표 입력2 #########
					var markerPosition  = new kakao.maps.LatLng(data.SHOP_POS2, data.SHOP_POS1); //SHOP_POS2, SHOP_POS1 값 넣어주기
					
					//마커를 생성합니다
					var marker = new kakao.maps.Marker({
					  position: markerPosition
					});
					
					//마커가 지도 위에 표시되도록 설정합니다
					marker.setMap(map);
					
					//############### 매장 정보가 들어갈 공간 ###################
					
					var iwContent;
					if(goodsAmount > 0){  // 재고 > 0 일경우 (재고가 있을경우 픽업예약버튼, 장바구니 버튼 표시O)
					iwContent = `<div
				        style="
				          padding: 15px 20px 20px 15px;
				          width: 400px;
				          height: 250px;
				          box-shadow: 2px 2px 2px 2px gray;
				          border: none;
				        "
				      >
				        <h4 class="mb-4" style="font-weight: 700">`+data.SHOP_NAME+`</h4>
				        <p class="mb-1">`+data.SHOP_ADD+`</p>
				        <p style="color: forestgreen">`+data.SHOP_TEL+`</p>
				        <h5 style="font-weight: 700">`+goodsName+` (`+goodsSize+`)</h5>
				        <h6 style="font-weight: 700">재고 : `+goodsAmount+`</h6>
				        <div class="d-flex justify-content-between">
				          <a href="#" class="align-self-center" data-bs-toggle="modal"
				              data-bs-target="#CSModal">문의하기</a>
				          <div>
				            <button
				              class="button"
				              type="button"
				              style="border: 1px solid rgba(0, 0, 0, 0.116)"
				              data-bs-toggle="modal" data-bs-target="#pickUpDateModal"
				              data-shop_num=
				            >
				              픽업예약
				            </button>
				            <button
				              class="button"
				              type="button"
				              style="border: 1px solid rgba(0, 0, 0, 0.116)"
				            >
				              장바구니
				            </button>
				          </div>
				        </div>
				      </div>`
					} else{  // 재고 = 0 일경우 (재고가 없을경우 픽업예약버튼, 장바구니 버튼 표시X)
						iwContent = `<div
					        style="
					          padding: 15px 20px 20px 15px;
					          width: 400px;
					          height: 250px;
					          box-shadow: 2px 2px 2px 2px gray;
					          border: none;
					        "
					      >
					        <h4 class="mb-4" style="font-weight: 700">`+data.SHOP_NAME+`</h4>
					        <p class="mb-1">`+data.SHOP_ADD+`</p>
					        <p style="color: forestgreen">`+data.SHOP_TEL+`</p>
					        <h5 style="font-weight: 700">`+goodsName+` (`+goodsSize+`)</h5>
					        <h6 style="font-weight: 700">재고 : `+goodsAmount+`</h6>
					        <div class="d-flex justify-content-between">
					          <a href="#" class="align-self-center" data-bs-toggle="modal"
					              data-bs-target="#CSModal">문의하기</a>
					          <div>
					          </div>
					        </div>
					      </div>`
					}// 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
				      //####### 좌표 입력3 #########
					  iwPosition = new kakao.maps.LatLng(data.SHOP_POS2, data.SHOP_POS1); //인포윈도우 표시 위치입니다 SHOP_POS2, SHOP_POS1 값 넣어주기
					//############### 매장 정보가 들어갈 공간 끝 ###################
					
					//인포윈도우를 생성합니다
					var infowindow = new kakao.maps.InfoWindow({
					  position : iwPosition, 
					  content : iwContent 
					});
					
					//마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
					infowindow.open(map, marker);
				}
			 });
		  
	  });
  });
	  
	  </script>
	  
	   <!-- 토스 페이먼츠 API -->
	  <script src="https://js.tosspayments.com/v1/payment-widget"></script>
	  
	  <script>
	  //토스 페이먼츠 결제  (추후 orderId, orderName, customerEmail, customerName 수정필요)
	  const clientKey = 'test_ck_7XZYkKL4Mrjnv7vJl1ar0zJwlEWR';
	  const customerKey = 'user123'; 
	  const paymentWidget = PaymentWidget(clientKey, customerKey);  // 결제위젯 초기화
	  
	  $("#payment-button").on("click", function(e){
		  
		var goodsNum = $('#RESERVATION_PRONUM').val();
		var goodsName = $('#TOTAL_GOODS_NAME').val();
		var shopNum = $('#RESERVATION_SHOP_NUM').val();
		var goodsSize = $('#RESERVATION_SIZE').val()
		var pickupDate = $("#RESERVATION_PICKUP_DATE").val();
	  	paymentWidget.renderPaymentMethods('#payment-method', 30000);
	  	
	  	paymentWidget.requestPayment({
	    	  orderId: 10000200,   // selectKey로 max 예약번호 가져와서 가져다쓰기!!!!! 구현필요
	    	  orderName: goodsName,
	    	  successUrl: 'http://localhost:8080/sk/tossPaymentsSuccess?goodsNum=' + goodsNum + '&shopNum=' + shopNum + '&goodsSize=' + goodsSize + '&pickupDate=' + pickupDate,
	    	  failUrl: 'http://localhost:8080/sk',
	    	  customerEmail: '${MEM_EMAIL}', 
	    	  customerName: '${MEM_NAME}'
	    	});


  });

	
  </script>
</html>