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
	  <div class="col-10" style="margin-top: 0px">
        <h3 style="margin-left: 30px; color: black; font-weight: bolder">
          전체 상품 리스트
        </h3>
        <form id="searchForm" action="/sk/brandPage/goodsList">
        <div class="row mt-3">
        	<div class="col-8 align-self-center">
        		<h5 style="margin-left: 30px;">전체 총 ${TOTAL } 개</h4>
        	</div>
	        <div class="col-4 d-flex align-self-center">
	            <div class="dropdown" style="width:10rem;">
	              <select
	                class="form-select"
	                style="border-color: rgba(0, 0, 0, 0.263)"
	                id="searchType"
	                name="searchType"
	              >
	                <option selected <c:out value="${searchType eq '모델명' ? 'selected' :''}"/>>모델명</option>
	                <option <c:out value="${searchType eq '모델 번호' ? 'selected' :''}"/>>모델 번호</option>
	              </select>
	            </div>
	            <div class="input-group">
	              <input
	                class="header-input"
	                style="
	                  height: 38px;
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
	                "
	              >
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
	            </div>
	          </div>
	       </div>
        </form>
      </div>
      <br />
      <div
        class="row"
        style="margin-left: 6px"
        id="goodsListDiv"
      >
        <c:forEach var="list" items="${list}">
          <a href="#" name="goodsImg" data-num="${list.TOTAL_GOODS_NUM}">
            <div class="col-3">
              <div class="card shadow-sm">
                  <img src="/sk/image/display?fileName=${list.GOODS_IMAGE_STD}"
                  class="bd-placeholder-img card-img-top"
                  width="150"
                  height="200" />
                <div class="card-body">
                  <p class="card-text mb-1" id="brandName">
                    ${list.BRAND_NAME}
                  </p>
                  <p
                    class="card-text mb-1"
                    style="font-size: x-small; color: rgb(94, 95, 95)"
                  >
                    ${list.TOTAL_GOODS_NAME}
                  </p>
                  <p
                    class="card-text mb-1"
                    style="font-size: x-small; color: rgb(94, 95, 95)"
                  >
                    ${list.TOTAL_GOODS_MODEL}
                  </p>
                  <p
                    class="card-text"
                    style="
                      font-size: medium;
                      color: rgb(0, 0, 0);
                      font-weight: bolder;
                    "
                  >
                    <fmt:formatNumber
                      type="number"
                      maxFractionDigits="3"
                      value="${list.TOTAL_GOODS_PRICE}"
                    />원
                  </p>
                </div>
              </div>
            </div>
          </a>
        </c:forEach>

        <!-- <nav aria-label="Page navigation example" style="margin-left: 40%;">
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
                </nav> -->
      </div>
      <!-- 페이징 화면 처리 부분 시작 -->
      <div id="PAGE_NAVI"></div>
      <input type="hidden" id="PAGE_INDEX" name="PAGE_INDEX" />
      <!--  페이징 화면 처리 부분 끝 -->
<script type="text/javaScript">

$(document).ready(function() {
   
   fn_selectGoodsList(1);
   
      $("a[name='goodsImg']").on("click", function(e) { //상품 이미지를 클릭하면 상품 디테일로 이동
       e.preventDefault();
      const brandName = $("#brandName").text();
      const goodsNum = $(this).attr("data-num");

      location.href="/sk/goods/goodsDetail?TOTAL_GOODS_NUM="+goodsNum;
   });  
      
});


 function fn_selectGoodsList(pageNo) { //페이징 함수
    var comAjax = new ComAjax();
    comAjax.setUrl("/sk/brandPage/goodsList/paging");
    comAjax.setCallback("fn_selectGoodsListCallback");
    comAjax.addParam("PAGE_INDEX", pageNo);
    comAjax.addParam("PAGE_ROW", 10); //한 페이지에 보여줄 게시물의 개수
    comAjax.addParam("BRAND_NAME", $("#brandName").text());
    comAjax.ajax();
 }
 
 function fn_selectGoodsListCallback(data) {
    var total = data.TOTAL; //게시물의 개수
    var body = $("#goodsListDiv");
    
    body.empty(); //현재 페이지의 게시물을 지우고 알맞은 페이지의 내용을 집어넣기 위해
    
    if(total == 0) {
       var str =  "<div class='row row-cols-5 g-5' style='margin-auto: 6px;'>" +
                "<span>아직 등록된 상품이 없습니다. 상품을 등록해주세요.</span>";
       body.append(str);
    } else {
        var params = {
       divId : "PAGE_NAVI",
       pageIndex : "PAGE_INDEX",
       totalCount : total,
       recordCount : 10,
       eventName : "fn_selectGoodsList"
    };
    gfn_renderPaging(params);
    
    var str="";
    
    $.each(data.list, function(key, value) {
       
          str +=    "<a href='#' name='goodsImg' data-num='"+ value.TOTAL_GOODS_NUM +"' >";
          str +=     "<div class='col-3'>";
          str +=     "<div class='card shadow-sm'>";
          str +=     "<img src='/sk/image/display?fileName="+value.GOODS_IMAGE_STD + "' class='bd-placeholder-img card-img-top' width='150' height='200' />";
          str +=     "<div class='card-body>";
          str +=     "<p class='card-text mb-1' id='brandName'>"+value.BRAND_NAME+"</p>";
          str +=     "<p class='card-text mb-1' style='font-size: x-small; color: rgb(94, 95, 95);'>"+value.TOTAL_GOODS_NAME+"</p>";
          str +=     "<p class='card-text mb-1' style='font-size: x-small; color: rgb(94, 95, 95);'>"+value.TOTAL_GOODS_MODEL+"</p>";
          str +=     "<p class='card-text' style='font-size: medium; color: rgb(0, 0, 0); font-weight: bolder;'>"+value.TOTAL_GOODS_PRICE+"원</p>";
          str +=      "</div>";
          str +=     "</div>";
          str +=      "</div>";
          str +=     "</a>";
         });
         body.append(str);
    }
    
 }
 
    
      
</script>
</body>
</html>