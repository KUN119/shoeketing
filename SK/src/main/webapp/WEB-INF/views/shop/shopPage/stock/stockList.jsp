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
     <div class="row d-flex">
        <div class="col-8">
	      <h3 style="margin-left: 30px; color: black; font-weight: bolder">
	        재고 관리
	      </h3>
      </div>
      
      <div class="col input-group">
              <select class="form-select-sm" style="width: 5rem; border-color: rgba(0, 0, 0, 0.263)"  id="searchType" name="searchType" value="${searchType}">
                <option selected value="total">전체</option>
                <option value="name" <c:out value="${searchType eq 'name' ? 'selected' : ''}"/>>상품명</option>
                <option value="model" <c:out value="${searchType eq 'model' ? 'selected' : ''}"/>>모델명</option>
              </select>
              <input type="text" class="form-control" name="keyword1" id="keyword1" value="${keyword}"/>
              <button class="btn btn-outline-secondary" type="button" id="stockSearch" name="stockSearch" data-shopNum="${SHOP_NUM}">
                검색
              </button>
            </div>
      </div>
      
      <hr class="mt-2" style="border: solid 1px rgb(73, 73, 73); width: 100%; ">
      <table class="table" style="width: 100%; margin-left: 30px">
        <tbody id="stockListBody"> <!-- 상품명/모델명으로 검색시 stockList_ajax.jsp 동작 -->
        	<c:choose>
				<c:when test="${fn:length(shopStockList) > 0 }">
					<c:forEach items="${shopStockList}" var="shopStock">
			          <tr>
			            <th scope="rowspan-3" style="width: 23%; text-align:center; " >
			                <a href="#">
			                  <img src="/sk/image/display?fileName=${shopStock.GOODS_IMAGE_STD}"
			                    height="200"
			                    width="250"
			                  />
			                </a>
			            </th>
			
			            <td
			              style="
			                text-align: left;
			                width: 35%;
			                padding-left: 5rem;
			                vertical-align: middle;
			              "
			            >
			              <p style="font-weight: bolder; font-size: large">${shopStock.SHOP_BRAND}</p>
			              <p style="font-weight: bolder">
			                ${shopStock.TOTAL_GOODS_NAME} / ${shopStock.TOTAL_GOODS_MODEL}
			              </p>
			              <p style="font-size: small" id="goodsSize">사이즈 : ${shopStock.SHOP_GOODS_SIZE}mm</p>
			            </td>
			            <td
			              style="
			                text-align: center;
			                width: 20%;
			                margin-bottom: 1;
			                vertical-align: middle;
			              "
			            >
			              <p class="mb-0" style="font-weight: bolder; font-size: large">${shopStock.TOTAL_GOODS_PRICE}원</p>
			            </td>
			            <td
			              style="
			                font-weight: bolder;
			                text-align: right;
			                vertical-align: middle;
			                width: 10%;
			              "
			            >
			                <input
			                  class="form-control form-control-sm text-center"
			                  type="text"
			                  style="width: 4rem;
			                  display:inline-block;"
			                  value="${shopStock.SHOP_GOODS_AMOUNT}"
			                  placeholder="재고"
			                  
			                />
			             </td>
			             <td style="text-align: center; vertical-align: middle; width: 10%;">
			                	<button class="btn btn-primary btn-md" id="goodsAmountModify" name="goodsAmountModify" data-goodsNum="${shopStock.SHOP_GOODS_GOODS_NUM}" data-goodsSize="${shopStock.SHOP_GOODS_SIZE}" data-shopNum="${SHOP_NUM}" type="button">저장</button>
			            </td>
			          </tr>
			        </c:forEach>
		        </c:when>
	        </c:choose>
         
        </tbody>
      </table>

      <hr class="my-4" style="margin-left: 30px; width: 100%" />
	      <!-- 페이징 화면 처리 부분 시작 -->
		  <div id="PAGE_NAVI"></div>
		  <input type="hidden" id="PAGE_INDEX" name="PAGE_INDEX"/>
		  <!-- 페이징 화면 처리 부분 끝 -->
    </div>
    
<script>
$(document).ready(function(){
	
	// 페이지 로딩 시 자동으로 1페이지 가져오기
	fn_selectStockList(1);

	$("#stockListBody").on("click", "button[name='goodsAmountModify']", function(e){  // 매장 재고 수량 업데이트
		e.preventDefault();
		const shopNum = $(this).attr("data-shopNum");
		const goodsSize = $(this).attr("data-goodsSize");
		const goodsNum = $(this).attr("data-goodsNum");
		const goodsAmount = $(this).parent().parent().find('input').val();
		
		fn_goodsAmountModify(shopNum, goodsSize, goodsNum, goodsAmount);
	});
	
	/* $("button[name='goodsAmountModify']").on("click", function(e){  
		e.preventDefault();
		const shopNum = $(this).attr("data-shopNum");
		const goodsSize = $(this).attr("data-goodsSize");
		const goodsNum = $(this).attr("data-goodsNum");
		const goodsAmount = $(this).parent().parent().find('input').val();
		
		fn_goodsAmountModify(shopNum, goodsSize, goodsNum, goodsAmount);
		
	}); */
	
	function fn_goodsAmountModify(shopNum, goodsSize, goodsNum, goodsAmount){
		
		var formData = new FormData();
		
		formData.append("SHOP_NUM", shopNum);
		formData.append("SHOP_GOODS_AMOUNT", goodsAmount);
		formData.append("TOTAL_GOODS_NUM", goodsNum);
		formData.append("SHOP_GOODS_SIZE", goodsSize );
		
		$.ajax({
			type : 'post',
			url : '/sk/shopPage/stockModify',
			data : formData,
			processData : false,
			contentType : false,
			success : function(data){
				alert('재고 수량이 업데이트 되었습니다.');
			},
			error : function(){
				alert("오류 발생");
			}
		});	
	}
	
	
	$("button[name='stockSearch']").on("click", function(e){  // 재고 검색 (상품명, 모델명)_ajax구현
		e.preventDefault();
		const shopNum = $(this).attr("data-shopNum");
	
		fn_stockSearch(shopNum);
		
	});
	
	function fn_stockSearch(shopNum){
		//var formData = new FormData();
		
		var searchType = $("#searchType").val();
		var keyword = $("#keyword1").val();
		
/* 		formData.append("searchType", searchType);
		formData.append("keyword", keyword);
		
		$.ajax({
			type : 'post',
			url : '/sk/shopPage/stockList_ajax',
			data : formData,
			processData : false,
			contentType : false,
			success : function(data){
				$("#stockListBody").empty();
				$('#stockListBody')[0].innerHTML=data;
			},
			error: function(xhr, status, error) {
				console.log('실패');
			}
		}); */
		
		fn_selectStockList(1, searchType, keyword);
	}
	
});


//페이징 함수
function fn_selectStockList(pageNo, searchType, keyword){
	var comAjax = new ComAjax();
	comAjax.setUrl("/sk/shopPage/stockList/paging");
	comAjax.setCallback("fn_selectStockListCallback");
	comAjax.addParam("PAGE_INDEX",pageNo);
	comAjax.addParam("PAGE_ROW", 5); //한 페이지에 보여줄 게시글 수 정하기
	
	// 검색시, searchType과 keyword 전송
	comAjax.addParam("searchType", searchType);
	comAjax.addParam("keyword", keyword);
	comAjax.ajax();
}

// 페이징 콜백 함수
function fn_selectStockListCallback(data){ // 페이지 선택 시 화면에 보여줄 결과 콜백함수
	var total = data.TOTAL;
	var body = $("#stockListBody"); // 페이징 한 결과가 반영될 태그
	
	body.empty();
	
	if(total == 0){ // 결과가 없을 경우
		var str = "<tr>" + 
						"<td colspan='3'>조회된 결과가 없습니다.</td>" + 
					"</tr>";
		body.append(str);
	} else { // 결과가 있을 경우
		var params = {
			divId : "PAGE_NAVI",
			pageIndex : "PAGE_INDEX",
			totalCount : total,
			recordCount : 5,
			eventName : "fn_selectStockList" // 페이징 함수이름 동일하게
		};
		gfn_renderPaging(params);
		
		var str = "";
		$.each(data.shopStockList, function(key, value){ // 가져온 게시글 수 만큼 반복 실행
			str += "<tr>" +
				   "<th scope='rowspan-3' style='width: 23%; text-align:center;'>" +
				   "<a href='#'>" +
				   "<img src='/sk/image/display?fileName=" + value.GOODS_IMAGE_STD + "' height='200' width='250'/>" +
				   "</a></th>" +
				   "<td style=' text-align: left; width: 35%; padding-left: 5rem; vertical-align: middle;'>" +
				   "<p style='font-weight: bolder; font-size: large'>" + value.SHOP_BRAND + "</p>" + 
				   "<p style='font-weight: bolder'>" +
				   value.TOTAL_GOODS_NAME + " / " + value.TOTAL_GOODS_MODEL +  
				   "</p>" +
				   "<p style='font-size: small' id='goodsSize'>사이즈 : " + value.SHOP_GOODS_SIZE + "mm</p>" +
				   "</td>" +
				   "<td style=' text-align: center; width: 20%; margin-bottom: 1; vertical-align: middle;'>" +
				   "<p class='mb-0' style='font-weight: bolder; font-size: large'>" + value.TOTAL_GOODS_PRICE + "</p>" + 
				   "</td>" +
				   "<td style=' font-weight: bolder; text-align: right; vertical-align: middle; width: 10%;'>" +
				   "<input class='form-control form-control-sm text-center' type='text' style='width: 4rem; display:inline-block;' " +
				   "value=" + value.SHOP_GOODS_AMOUNT + " placeholder='재고'/>" +
				   "</td>" +
				   "<td style='text-align: center; vertical-align: middle; width: 10%;'>" +
				   "<button class='btn btn-primary btn-md' id='goodsAmountModify' name='goodsAmountModify' " +
				   "data-goodsNum=" + value.SHOP_GOODS_GOODS_NUM +
				   " data-goodsSize=" + value.SHOP_GOODS_SIZE + 
				   " data-shopNum=" + value.SHOP_NUM +
				   " type='button'>저장</button>" + 
				   "</td></tr>"
		});
		body.append(str);
		
	}
}


</script>    
    
  </body>
</html>