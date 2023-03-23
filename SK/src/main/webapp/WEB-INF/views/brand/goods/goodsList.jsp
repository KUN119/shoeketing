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
        <div class="col-8" style="margin-top: 0px;">
            <h3 style="margin-left: 30px; color: black; font-weight: bolder;">전체 상품 리스트</h3>
            <div class="d-grid gap-2 d-flex justify-content-start mt-4">
                <h5 style="margin-left: 30px; width: 100px; color: black; font-weight: bolder;">전체</h5>        
                <h5 style="color: black; font-weight: bolder;">총</h5>
                <h5 style="color: rgb(255, 183, 0); font-weight: bolder;">${BRAND_GOODS_COUNT}</h5>
                <h5 style="color: black; font-weight: bolder;">개</h5>
                <p>
                	
                	<form id="searchForm" action="/sk/brandPage/goodsList">
                    <div class="dropdown" style="margin-left: 60%;">
                    		<select class="form-select-sm" style="width: 4rem; border-color: rgba(0, 0, 0, 0.263);" id="searchType" name="searchType">
          			  		<option selected <c:out value="${searchType eq '모델명' ? 'selected' :''}"/>>모델명</option>
          			  		<option <c:out value="${searchType eq '모델 번호' ? 'selected' :''}"/>>모델 번호</option>
	         			 </select>
                    	
                       <!--  <button class="btn btn-secondary btn-md dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                          검색 조건
                        </button>
                        <ul class="dropdown-menu">
                          <li><button class="dropdown-item" type="button">모델명</button></li>
                          <li><button class="dropdown-item" type="button">모델 번호</button></li>
                        </ul> -->
                    </div>
                      <div class="input-group">
                  <input
                    class="header-input"
                    style="
                      height: 38px;
                      width: 50%;
                      border-style: none;
                      border: solid 1px black;
                      border-right: none;
                      border-top-left-radius: 5px;
                      border-bottom-left-radius: 5px;
                    "
                    name="keyword"
                    type="text"
                    value="${keyword}"
                  />
                  <button
                    class="btn"
                    type="submit"
                    style="
                      background-color: white;
                      border: solid 1px black;
                       height: 38px;
                      border-left: none;
                    ">
                    <svg
                      xmlns="http://www.w3.org/2000/svg"
                      width="15"
                      height="15"
                      fill="currentColor"
                      class="bi bi-search"
                      viewBox="0 0 16 16"
                    >
                      <path
                        d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"
                      />
                    </svg>
                  </button>
                  	</form>
                </div>
                </p>
            </div>
            <br>

            
	            <c:choose>
	             <c:when test="${BRAND_GOODS_COUNT > 0}">
	             <div class="row row-cols-5 g-5" style="margin-left: 6px;">
					<c:forEach var="list" items="${list}">
		               	<a href="#" name="goodsImg" data-num="${list.TOTAL_GOODS_NUM}" >
		                    <div class="col">
		                  <div class="card shadow-sm">
		                    <svg class="bd-placeholder-img card-img-top" width="150" height="200" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false">
		                        <img src="/sk/image/display?fileName=${list.GOODS_IMAGE_STD}" height="100%" width="100%" />
		                    </svg>
		        
		                    <div class="card-body">
		                      <p class="card-text mb-1" id="brandName">${list.BRAND_NAME}</p>
		                      <p class="card-text mb-1" style="font-size: x-small; color: rgb(94, 95, 95);">${list.TOTAL_GOODS_NAME}</p>
		                      <p class="card-text mb-1" style="font-size: x-small; color: rgb(94, 95, 95);">${list.TOTAL_GOODS_MODEL}</p>
		                      <p class="card-text" style="font-size: medium; color: rgb(0, 0, 0); font-weight: bolder;"><fmt:formatNumber type="number" maxFractionDigits="3" value="${list.TOTAL_GOODS_PRICE}"/>원</p>
		                    </div>
		                  </div>
		                </div>
		                </a>
	                 </c:forEach> 
				</c:when>
				<c:otherwise>
					 <div class="row row-cols-5 g-5" style="margin-auto: 6px;">
					 	아직 등록된 상품이 없습니다. 상품을 등록해주세요.
				</c:otherwise>
	            </c:choose>
	           
                 
                  <nav aria-label="Page navigation example" style="margin-left: 40%;">
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

<script type="text/javaScript">

$(document).ready(function() {
	
	   $("a[name='goodsImg']").on("click", function(e) { //상품 이미지를 클릭하면 상품 디테일로 이동
		 e.preventDefault();
		const brandName = $("#brandName").text();
		const goodsNum = $(this).attr("data-num");
	/* 	var searchType = $("#searchType").val();
		
		if(searchType = "모델명") {
			nameKeyword = $("input[type='text']").val();
		} else if (searchType = "모델 번호") {
			modelKeyword = $("input[type='text']").val();
		}
		if(keyword.val() != "" || keyword.val() != null) { //키워드로 입력된 값이 있으면
		}
		var target = document.getElementById("selectBox");
    	alert('선택된 옵션 text 값=' + target.options.text);      */
		
		location.href="/sk/goods/goodsDetail?TOTAL_GOODS_NUM="+goodsNum;
	});  
	   
});
		
</script>
</body>
</html>