<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.container {
        width: 1200px; /*기본값 1500px*/
        max-width: none !important;
      }
</style>
</head>
<body>
    <div class="container">
      <h3 class="mb-4 mt-5" style="font-weight: 700">장바구니</h3>

      <div class="row">
        <div class="form-check col ms-3 align-self-end">
          <input class="form-check-input" type="checkbox" id="selectAll" />
          <label class="form-check-label" for="selectAll"> 전체선택 </label>
        </div>
        <div class="col text-end">
          <button class="btn btn-secondary" type="button">삭제</button>
        </div>
      </div>
      <hr class="mt-3" style="border: 1px solid black;"/>
      <!--장바구니 리스트 시작-->
      <div class="row" style="border: 1px solid rgba(0, 0, 0, 0.226)">
        <!--장바구니 데이터 한줄 시작-->
        <c:forEach var="list" items="${basketList}">
	        <div class="row mt-4 mb-4">
	          <div class="col-auto align-self-center ms-2">
	            <div class="form-check">
	              <input class="form-check-input" type="checkbox" value="" />
	            </div>
	          </div>
	          <div class="col-2 align-self-center">
	            <img
	              src="../assets/img/a7ae62bb0c3243a2af834df70e9b0d81.jpg"
	              style="width: 10rem"
	            />
	          </div>
	          <div class="col-4">
	            <div class="ms-1 align-self-center">
	              <p class="mb-2" style="font-weight: 700">${list.BRAND_NAME}</p>
	              <p class="mb-2" style="font-weight: 700">
	                ${list.TOTAL_GOODS_NAME} /${list.TOTAL_GOODS_MODEL}
	              </p>
	              <p class="mb-2">${list.SHOP_NAME} - ${list.SHOP_ADD}</p>
	              <p class="mb-2">${list.BASKET_SIZE}</p>
	            </div>
	          </div>
	          <div
	            class="col-auto align-self-center text-center"
	            style="width: 10rem"
	          >
	            <h5 class="mb-4">상품가격</h5>
	            <div class="d-flex justify-content-center">
	              <h5><fmt:formatNumber type="number" maxFractionDigits="3" value="${list.TOTAL_GOODS_PRICE}"/></h5>
	              <h6 class="align-self-end">원</h6>
	            </div>
	          </div>
	          <div
	            class="col-auto align-self-center text-center"
	            style="width: 10rem"
	          >
	            <h5 class="mb-4">예약금</h5>
	            <div class="d-flex justify-content-center">
	              <h5 id="">30,000</h5>
	              <h6 class="align-self-end">원</h6>
	            </div>
	          </div>
	          <div
	            class="col-auto d-flex align-self-center justify-content-center"
	            style="flex-direction: column; width: 13rem"
	          >
	            <button
	              class="btn btn-sm btn-secondary mb-3 ms-5"
	              type="button"
	              style="width: 5rem"
	            >
	              픽업예약
	            </button>
	            <button
	              class="btn btn-sm btn-secondary ms-5"
	              type="button"
	              style="width: 5rem"
	            >
	              삭제
	            </button>
	          </div>
	        </div>	
        </c:forEach>
        <!--장바구니 데이터 한줄 끝-->
      </div>
      <!--장바구니 리스트 끝-->

      <!--예약금액, 할인금액, 결제금액 시작-->
      <div
        class="row pt-3 pb-3 mb-5"
        style="
          background-color: rgba(0, 0, 0, 0.128);
          border: 1px solid rgba(0, 0, 0, 0.226);
        "
      >
        <div class="col-3 align-self-center text-center">
          <p class="mb-1">예약금액</p>
          <div class="d-flex justify-content-center">
            <c:set var="sum" value="0"/>
            <h4>90,000</h4>
            <h5 class="align-self-end ms-1">원</h5>
          </div>
        </div>

        <div class="col-auto align-self-center">
          <i class="bi bi-dash-circle fs-3"></i>
        </div>

        <div class="col-3 align-self-center text-center">
          <p class="mb-1">할인금액</p>
          <div class="d-flex justify-content-center">
            <h4>9,000</h4>
            <h5 class="align-self-end ms-1">원</h5>
          </div>
        </div>

        <div class="col-auto align-self-center">
          <i class="bi bi-chevron-double-right fs-3"></i>
        </div>

        <div class="col-3 align-self-center text-center">
          <p class="mb-1">결제금액</p>
          <div class="d-flex justify-content-center">
            <h4 class="fw-bold">99,000</h4>
            <h4 class="align-self-end ms-1 fw-bold">원</h4>
          </div>
        </div>

        <div class="col-auto align-self-center text-center">
          <button
              class="btn btn-sm btn-secondary ms-2"
              type="button"
              style="width: 5rem"
            >
            선택 예약
            </button>
        </div>
      </div>
      <!--예약금액, 할인금액, 결제금액 끝-->
    </div>
  </body>
</html>