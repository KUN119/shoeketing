<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <div class="container">
      <!--검색창 시작-->
      <div class="row mb-5 mt-5">
        <form>
          <div class="input-group" style="justify-content: center">
            <input
              class="header-input"
              style="
                width: 28rem;
                height: 3rem;
                border-style: none;
                border-bottom: 3px solid black;
                font-size: 20px;
                font-weight: 700;
              "
              type="text"
              name="keyword"
              id="keyword"
            />
            <button
              class="btn"
              type="button"
              style="
                background-color: white;
                border-style: none;
                border-radius: 0;
                border-bottom: 3px thick black;
              "
              id="searchBtn"
              name="searchBtn"
            >
              <svg
                xmlns="http://www.w3.org/2000/svg"
                width="20"
                height="20"
                fill="currentColor"
                class="bi bi-search"
                viewBox="0 0 16 16"
              >
                <path
                  d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"
                />
              </svg>
            </button>
          </div>
        </form>
      </div>
      <!--검색창 끝-->

      <!--검색 키워드 시작-->
      <div class="row mb-3" id="searchKeyword">
      </div>
      <!--검색 키워드 끝-->

      <!--브랜드 검색 결과 시작-->
      <c:forEach var="brand" items="${brandList}" varStatus="status">
      <form id="id=bInfo">
      <div class="row mb-5">
        <a class="d-flex" href="#">
           <div class="col-1">
            <img
              src='/sk/image/display?fileName=${brand.BRAND_LOGO_FILE}'
              class="img-thumbnail"
              style="height: 5rem; width: auto"
            />
          </div>
          <div class="col-1 ms-3 align-self-center">
            <h6 class="mb-0" style="font-weight: 700; font-size: 18px">
              ${brand.BRAND_NAME}<i class="bi bi-chevron-right" style="font-weight: 700"></i>
            </h6>
          </div> 
        </a>
      </div>
      </form>
      </c:forEach>
      <!--브랜드 검색 결과 끝-->

      <!--상품 검색결과 리스트 시작-->
      <div class="row">
        <h5 class="mb-3" style="font-weight: 700">상품 검색결과</h5>
        <hr />
<c:forEach var="goods" items="${goodsList}" varStatus="status">
	<form id='gInfo'>
         <div class="col-6 mt-4 mb-4 d-flex">
          <a href="#" class="d-flex">
            <img
              src='/sk/image/display?fileName=${goods.GOODS_IMAGE_STD}'
              style="width: 14rem"
            />
            <div class="ms-5 align-self-center">
              <p style="font-weight: 700">${goods.BRAND_NAME}</p>
              <p>${goods.TOTAL_GOODS_NAME} / ${goods.TOTAL_GOODS_MODEL}</p>
              <p style="font-weight: 700; font-size: large">${goods.TOTAL_GOODS_PRICE}</p>
            </div>
          </a>
        </div> 
	</form>
</c:forEach>
        <%-- <div class="col-6 mt-4 mb-4 d-flex">
          <a href="#" class="d-flex">
            <img
              src="<%=request.getContextPath()%>/assets/img/a7ae62bb0c3243a2af834df70e9b0d81.jpg"
              style="width: 14rem"
            />
            <div class="ms-5 align-self-center">
              <p style="font-weight: 700">VANS</p>
              <p>어센틱 VR3 블랙 마쉬멜로우 / VN0005UD1KP1</p>
              <p style="font-weight: 700; font-size: large">79,000원</p>
            </div>
          </a>
        </div>
        

        <div class="col-6 mt-4 mb-4 d-flex">
          <a href="#" class="d-flex">
            <img
              src="<%=request.getContextPath()%>/assets/img/a7ae62bb0c3243a2af834df70e9b0d81.jpg"
              style="width: 14rem"
            />
            <div class="ms-5 align-self-center">
              <p style="font-weight: 700">VANS</p>
              <p>어센틱 VR3 블랙 마쉬멜로우 / VN0005UD1KP1</p>
              <p style="font-weight: 700; font-size: large">79,000원</p>
            </div>
          </a>
        </div>

        <div class="col-6 mt-4 mb-4 d-flex">
          <a href="#" class="d-flex">
            <img
              src="<%=request.getContextPath()%>/assets/img/a7ae62bb0c3243a2af834df70e9b0d81.jpg"
              style="width: 14rem"
            />
            <div class="ms-5 align-self-center">
              <p style="font-weight: 700">VANS</p>
              <p>어센틱 VR3 블랙 마쉬멜로우 / VN0005UD1KP1</p>
              <p style="font-weight: 700; font-size: large">79,000원</p>
            </div>
          </a>
        </div> --%>

        <!--상품 검색결과 더보기 시작-->
        <div class="row">
          <a href="#" class="ms-4" style="font-weight: 500">
          	<p>검색결과 더보기<i class="bi bi-chevron-down ms-2"></i></p>
          </a>
          <hr/>
        </div>
        <!--상품 검색결과 더보기 끝-->
      </div>
      <!--상품 검색결과 리스트 끝-->

      <!--매장 검색결과 리스트 시작-->
      <div class="row mt-5">
        <h5 class="mb-3" style="font-weight: 700">매장 검색결과</h5>
        <hr />
        
<c:forEach var="shopList" items="${shopList}" varStatus="status">
<form id='sInfo'>
         <a href="#">   
          <div class="row mt-2 mb-2">
            <div class="col-2 align-self-center text-center">
              <p class="fw-semibold" style="font-size: large">${shopList.SHOP_NAME }</p>
            </div>
            <div class="col-10">
              <div class="row">
                <div class="col-2">
                  <p style="font-weight: 500">전화번호</p>
                </div>
                <div class="col-4">
                  <p>${shopList.SHOP_TEL }</p>
                </div>
                <div class="col-2">
                  <p style="font-weight: 500">영업시간</p>
                </div>
                <div class="col-4">
                  <p>${shopList.SHOP_START_TIME } ~ ${shopList.SHOP_END_TIME}</p>
                </div>
              </div>

              <div class="row mt-3">
                <div class="col-2">
                  <p style="font-weight: 500">주소</p>
                </div>
                <div class="col-4">
                  <p>${shopList.SHOP_ADD }</p>
                </div>
                <div class="col-2">
                  <p style="font-weight: 500">브랜드명</p>
                </div>
                <div class="col-4">
                  <p>${shopList.SHOP_BRAND }</p>
                </div>
              </div>
            </div>
          </div>
        </a>
        <hr /> 
</form>
</c:forEach>

        <!-- <a href="#">
          <div class="row mt-2 mb-2">
            <div class="col-2 align-self-center text-center">
              <p class="fw-semibold" style="font-size: large">나이키 서울</p>
            </div>
            <div class="col-10">
              <div class="row">
                <div class="col-2">
                  <p style="font-weight: 500">전화번호</p>
                </div>
                <div class="col-4">
                  <p>02-3789-9534</p>
                </div>
                <div class="col-2">
                  <p style="font-weight: 500">영업시간</p>
                </div>
                <div class="col-4">
                  <p>10:00 ~ 21:30</p>
                </div>
              </div>

              <div class="row mt-3">
                <div class="col-2">
                  <p style="font-weight: 500">주소</p>
                </div>
                <div class="col-4">
                  <p>서울 서울특별시 중구 명동길 14</p>
                </div>
                <div class="col-2">
                  <p style="font-weight: 500">브랜드명</p>
                </div>
                <div class="col-4">
                  <p>나이키</p>
                </div>
              </div>
            </div>
          </div>
        </a>
        <hr />
        <a href="#">
          <div class="row mt-2 mb-2">
            <div class="col-2 align-self-center text-center">
              <p class="fw-semibold" style="font-size: large">나이키 서울</p>
            </div>
            <div class="col-10">
              <div class="row">
                <div class="col-2">
                  <p style="font-weight: 500">전화번호</p>
                </div>
                <div class="col-4">
                  <p>02-3789-9534</p>
                </div>
                <div class="col-2">
                  <p style="font-weight: 500">영업시간</p>
                </div>
                <div class="col-4">
                  <p>10:00 ~ 21:30</p>
                </div>
              </div>

              <div class="row mt-3">
                <div class="col-2">
                  <p style="font-weight: 500">주소</p>
                </div>
                <div class="col-4">
                  <p>서울 서울특별시 중구 명동길 14</p>
                </div>
                <div class="col-2">
                  <p style="font-weight: 500">브랜드명</p>
                </div>
                <div class="col-4">
                  <p>나이키</p>
                </div>
              </div>
            </div>
          </div>
        </a>

        <hr />
        <a href="#">
          <div class="row mt-2 mb-2">
            <div class="col-2 align-self-center text-center">
              <p class="fw-semibold" style="font-size: large">나이키 서울</p>
            </div>
            <div class="col-10">
              <div class="row">
                <div class="col-2">
                  <p style="font-weight: 500">전화번호</p>
                </div>
                <div class="col-4">
                  <p>02-3789-9534</p>
                </div>
                <div class="col-2">
                  <p style="font-weight: 500">영업시간</p>
                </div>
                <div class="col-4">
                  <p>10:00 ~ 21:30</p>
                </div>
              </div>

              <div class="row mt-3">
                <div class="col-2">
                  <p style="font-weight: 500">주소</p>
                </div>
                <div class="col-4">
                  <p>서울 서울특별시 중구 명동길 14</p>
                </div>
                <div class="col-2">
                  <p style="font-weight: 500">브랜드명</p>
                </div>
                <div class="col-4">
                  <p>나이키</p>
                </div>
              </div>
            </div>
          </div>
        </a>
 -->
        <!--매장 검색결과 더보기 시작-->
        <div class="row">
          <a href="#" class="ms-4" style="font-weight: 500">
          <p>검색결과 더보기<i class="bi bi-chevron-down ms-2"></i></p>
          </a>
          <hr />
        </div>
        <!--매장 검색결과 더보기 끝-->
      </div>
      <!--매장 검색결과 리스트 끝-->
    </div>
  </body>
  
<script type="text/javascript">
$(document).ready(function() {
	
	$("button[name='searchBtn']").on("click", function(e) {
		e.preventDefault();
		fn_searchBtn();
	});
	
	function fn_searchBtn() {
		var formData = new FormData();
		var keyword = $('#keyword').val();
		
		formData.append("keyword", keyword);
		
		$.ajax({
			url: '/sk/totalSearch_ajax',
			type: 'POST',
			data: formData,
			processData: false,
			contentType: false,
			success: function(data) {
				console.log(data);
				
				value = data.keyword;
				//console.log(value);
				
				var str = "";
				str += "<h2 id='searchKeyword' style='font-weight: 700'>검색어: " +value+ "</h2>";
				$("#searchKeyword").empty();
				$("#searchKeyword").prepend(str);
				
				values = data.brandList;
				values2 = data.goodsList;
				values3 = data.shopList;
				
				$("#bInfo").empty();
				$("#gInfo").empty();
				$("#sInfo").empty();
				
				$.each(values, function(index, value) {
					var bName = value.BRAND_NAME;
					var bLogo = value.BRAND_LOGO_FILE;		
					
				var b = "";
				b +="<div class='row mb-5'>";
				b +="<a class='d-flex' href='#'>";
				b += "<div class='col-1'>";
	            b += 	"<img src='/sk/image/display?fileName=" + bLogo + "' class='img-thumbnail'";
	            b +=  		"style='height: 5rem; width: auto'/>";
	            b += "</div>";
	            b += "<div class='col-1 ms-3 align-self-center'>";
	            b += "<h6 class='mb-0' style='font-weight: 700; font-size: 18px'>";
	            b +=   bName + "<i class='bi bi-chevron-right' style='font-weight: 700'></i>";
	            b += "</h6>";
	            b += "</div>";
	            b += "</a>";
	            b += "</div>";
	            
                $("#bInfo").prepend(b);
                
				});
				
                $.each(values2, function(index, value) {
					var bName = value.BRAND_NAME;
					
					var gImg = value.GOODS_IMAGE_STD;
					var gName = value.TOTAL_GOODS_NAME;
					var gModel = value.TOTAL_GOODS_MODEL;
					var gPrice = value.TOTAL_GOODS_PRICE;
                
                var g = "";
                g +="<div class='col-6 mt-4 mb-4 d-flex'>";
                g +=  "<a href='#' class='d-flex'>";
                g += "<img src='/sk/image/display?fileName=" + gImg + "'";
                g +=    "style='width: 14rem'/>";
                g +=  "<div class='ms-5 align-self-center'>";
                g +=   "<p style='font-weight: 700'>" + bName + "</p>";
                g +=  "<p>" + gName + "/" + gModel + "</p>";
                g +=  "<p style='font-weight: 700; font-size: large'>" + gPrice + "</p>";
                g += "</div>";
                g += "</a>";
                g +="</div>";
                
                $("#gInfo").prepend(g);
                
				});
                
                $.each(values3, function(index, value) {
					var sBrand = value.SHOP_BRAND;
					var sName = value.SHOP_NAME;
					var sTel = value.SHOP_TEL;
					var sAdd = value.SHOP_ADD;
					var sOpen = value.SHOP_START_TIME;
                    var sClose = value.SHOP_END_TIME;
                
                var s = "";
                s+="<a href='#'>";
                s+="<div class='row mt-2 mb-2'>";
                s+="  <div class='col-2 align-self-center text-center'>";
                s+="    <p class='fw-semibold' style='font-size: large'>"+sName+"</p>";
                s+=" </div>";
                s+="  <div class='col-10'>";
                s+="    <div class='row'>";
                s+="      <div class='col-2'>";
                s+="        <p style='font-weight: 500'>전화번호</p>";
                s+="   </div>";
                s+="   <div class='col-4'>";
                s+="     <p>"+sTel+"</p>";
                s+="   </div>";
                s+="   <div class='col-2'>";
                s+="  <p style='font-weight: 500'>영업시간</p>";
                s+="      </div>";
                s+="   <div class='col-4'>";
                s+="     <p>"+sOpen+ " ~ " +sClose+"</p>";
                s+="   </div>";
                s+="    </div>";
                s+="    <div class='row mt-3'>";
                s+="    <div class='col-2'>";
                s+="     <p style='font-weight: 500'>주소</p>";
                s+="   </div>";
                s+="   <div class='col-4'>";
                s+="     <p>"+sAdd+"</p>";
                s+="   </div>";
                s+="   <div class='col-2'>";
                s+="     <p style='font-weight: 500'>브랜드명</p>";
                s+="   </div>";
                s+="   <div class='col-4'>";
                s+="    <p>"+sBrand+"</p>";
                s+="      </div>";
                s+=" </div>";
                s+="  </div>";
                s+="</div>";
                s+="</a>";
                s+="<hr />";
                
                $("#sInfo").prepend(s);
                
				});
			},
			error: function(jqXHR, textStatus, errorThrown) {
		        console.log('Ajax request failed: ' + textStatus + ', ' + errorThrown);
		    }
		});
	};
});
</script>
</html>