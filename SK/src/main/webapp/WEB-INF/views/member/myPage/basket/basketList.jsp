<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
          <input class="form-check-input" type="checkbox" id='selectAll' name="chkAll" onclick='checkAll();' checked/>
          <label class="form-check-label" for="selectAll">전체선택</label>
        </div>
        <div class="col text-end">
          <button class="btn btn-secondary" type="button" id="chkDelete" name="chkDelete">삭제</button>
        </div>
      </div>
      <hr class="mt-3" style="border: 1px solid black;"/>
      
      <!--장바구니 리스트 시작-->
      <div class="row" style="border: 1px solid rgba(0, 0, 0, 0.226)">
      
   	  <c:choose>
      <c:when test="${fn:length(list)>0 }">
      <c:forEach items="${list}" var="basket">
        <!--장바구니 데이터 한줄 시작-->
        <div class="row mt-4 mb-4" id="basketGoods">
          <div class="col-auto align-self-center ms-2">
            <div class="form-check">
            	<c:set var="deposit" value="30000"/>
              <input class="form-check-input" id='chk' name="chk" type="checkbox" value="${basket.BASKET_NUM}"/>
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
              <p class="mb-2" style="font-weight: 700"> ${basket.BRAND_NAME}</p>
              <p class="mb-2" style="font-weight: 700">
                ${basket.TOTAL_GOODS_NAME} / ${basket.TOTAL_GOODS_MODEL}
              </p>
              <p class="mb-2"> ${basket.SHOP_NAME} - ${basket.SHOP_ADD}</p>
              <p class="mb-2"> ${basket.BASKET_SIZE}</p>
            </div>
          </div>
          <div
            class="col-auto align-self-center text-center"
            style="width: 10rem"
          >
            <h5 class="mb-4">상품가격</h5>
            <div class="d-flex justify-content-center">
              <h5><label for="chk"><fmt:formatNumber type="number" maxFractionDigits="3" value="${basket.TOTAL_GOODS_PRICE}"/></label></h5>
              <h6 class="align-self-end">원</h6>
            </div>
          </div>
          <div
            class="col-auto align-self-center text-center"
            style="width: 10rem"
          >
            <h5 class="mb-4">예약금</h5>
            <div class="d-flex justify-content-center">
               <h5 id="deposit"><fmt:formatNumber type="number" maxFractionDigits="3" value="${deposit}"/></h5>
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
              name="delete"
              id="delete"
            >
              삭제
            </button>
          </div>
        </div>
        <!--장바구니 데이터 한줄 끝-->
        </c:forEach>
        </c:when>
        <c:otherwise>
          장바구니에 담긴 상품이 없습니다.
          </c:otherwise>
        </c:choose> 
        
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
         	 <c:set var="totalDeposit" value="<fmt:formatNumber type='number' maxFractionDigits='3' value='0'/>"/>
            <h4 id="totalDeposit">${totalDeposit}</h4>
            <h5 class="align-self-end ms-1">원</h5>
          </div>
        </div>

        <div class="col-auto align-self-center">
          <i class="bi bi-dash-circle fs-3"></i>
        </div>

        <div class="col-3 align-self-center text-center">
          <p class="mb-1">할인금액</p>
          <div class="d-flex justify-content-center">
            <c:choose>
          		<c:when test="${session_MEM_INFO.MEM_GRADE=='플래티넘'}">
          			<c:set var="sale" value="3000"/>
            			<h4 id="sale"><fmt:formatNumber type="number" maxFractionDigits="3" value="${sale}"/></h4>
            	</c:when>
            	<c:when test="${session_MEM_INFO.MEM_GRADE=='다이아'}">
            		<c:set var="sale" value="5000"/>
            			<h4 id="sale"><fmt:formatNumber type="number" maxFractionDigits="3" value="${sale}"/></h4>
            	</c:when>
            	<c:otherwise>
            		<h4 id="sale">0</h4>
            	</c:otherwise>
            </c:choose>
          </div>
        </div>

        <div class="col-auto align-self-center">
          <i class="bi bi-chevron-double-right fs-3"></i>
        </div>

        <div class="col-3 align-self-center text-center">
          <p class="mb-1">결제금액</p>
          <div class="d-flex justify-content-center">
            <h4 class="fw-bold" id="finalPrice"></h4>
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
   </div> 
  </body>
  
<script type="text/javascript">

$(document).ready(function() {
	checkAll();
});

//https://ivory-room.tistory.com/67
function checkAll() { //전체 체크 함수
	if($("#selectAll").is(':checked')) {
		$("input[name=chk]").prop("checked", true);
	} else {
		$("input[name=chk]").prop("checked", false);
	}
}

$(document).on("click", "input:checkbox[name=chk]", function(e) { //개별 체크박스 클릭하면
	var chks = document.getElementsByName("chk");
	var chksChecked = 0;
//	var deposit = $("#deposoit").val();
//	var totalDeposit = document.getElementById("TotalDeposit");
	
	for(var i=0; i<chks.length; i++) {
		var chk = chks[i];
		
		if(chk.checked) {
			chksChecked++; //체크된 체크박스의 개수 집계
			/* depositSum = deposit + chks;
			
			totalDeposit.innerHTML = depositSum;
			 */
		}
		
	}
	
	if(chks.length == chksChecked){ //모든 체크박스가 체크되어있으면
		$("#selectAll").prop("checked", true); //전체선택 버튼을 true로
	}else{
		$("#selectAll").prop("checked",false); //전체선택 버튼 false로
	}
	
});


/* function calcPrice() {
	let array = document.getElementsByName("chk");
	let priceArray = new Array();
	for(let i=0; i<priceArray.length; i++) {
		if(priceArray[i].checked == true) {
			let spanId = priceArray[i].id.replace('chk', 'price');
			let priceTag = document.getElementById(spanId).innerText;
			priceArray.push(price);
		}
	}
	
	let total = 0;
	for(let i=0; i<priceArray.length; i++) {
		total += parseInt(priceArray[i]);
	}
	document.getElementById('totalDeposit').innerText = total;
} */

$(document).ready(function() {
	
	$("button[name='chkDelete']").on("click", function(e) { //개별 삭제 버튼 누르면
		 e.preventDefault();
		 fn_chkDelete();
	});
	
	
	function fn_chkDelete() { //체크된 상품 삭제
		var basketNum = $("#chk").val(); 
		var goodsArr = [];
		var list = $("input[name='chk']");
	//	var dataList = {"basketList":goodsArr};

		
			for(var i=0; i<list.length; i++) {
					if(list[i].checked) { //선택되어 있으면 배열에 값을 저장
						goodsArr.push(list[i].value);
					}
			}
			
			if(goodsArr.length == 0) {
				alert("선택된 상품이 없습니다.");
			} else {
				if(confirm("상품을 장바구니에서 제거하시겠습니까?")) {
					alert("번호 : " + goodsArr);
					$.ajaxSettings.traditional = true;
					$.ajax({
					url:"/sk/basket/basketDelete",
					type:'post',
					contentType:"application/json; charset=UTF-8",
					data:JSON.stringify(goodsArr),
					success:function() {
						alert("상품을 장바구니에서 삭제하였습니다.");
						location.reload(); //페이지 새로고침
					},
					error:function() {
						alert("잠시 후 다시 시도해주세요.");
					}	
					});
					}
				}
		}
});


</script>  
</html>