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
            <h3 style="margin-left: 30px; color: black; font-weight: bolder;">찜 목록</h3>
            <div class="d-grid gap-2 d-flex justify-content-start mt-4">
                <h6 style="margin-left: 30px; color: black; font-weight: bolder;">전체</h6>        
                <h6 style="color: black; font-weight: bolder;">총</h6>
                <h6 style="color: rgb(255, 183, 0); font-weight: bolder;">${goodsLikeCount}</h6>
                <h6 style="color: black; font-weight: bolder;">개</h6>
            </div>
            
            <br>

            
                <c:choose>
                	<c:when test="${fn:length(goodsLikeList) > 0}">
                		<div class="row row-cols-5 g-5" style="margin-left: 6px;">
                		<c:forEach var="list" items="${goodsLikeList}">
	                		<a href="#" name="goods">
	                    		<div class="col">
			                 		 <div class="card shadow-sm">
					                    <svg class="bd-placeholder-img card-img-top" width="150" height="200" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false">
					                        <%-- <image href="/Users/mj/Desktop/자바 수업/2_슈케팅/2차 화면구현/assets/img/apple-touch-icon.png" height="100%" width="100%" id="like" data-num="${list.TOTAL_GOODS_NUM}"/> --%>
					                        <img src="/sk/image/display?fileName=${list.GOODS_IMAGE_STD}" height="100%" width="100%" id="like" data-num="${list.TOTAL_GOODS_NUM}"/>
					                    </svg>
					                    <div class="card-body">
					                      <p class="card-text mb-1">${list.BRAND_NAME}</p>
					                      <p class="card-text mb-1" style="font-size: x-small; color: rgb(94, 95, 95);">${list.TOTAL_GOODS_NAME}</p>
					                      <p class="card-text mb-1" style="font-size: x-small; color: rgb(94, 95, 95);">${list.TOTAL_GOODS_MODEL}</p>
					                      <p class="card-text" style="font-size: medium; color: rgb(0, 0, 0); font-weight: bolder;"><fmt:formatNumber type="number" maxFractionDigits="3" value="${list.TOTAL_GOODS_PRICE}"/>원</p>
					                    </div>
					                  </div>
					             </div>
			                </a>
						</c:forEach>
						</div>
                	</c:when>
                	<c:otherwise>
                		<div class="col" style="margin:auto;">
                			 <h6 class="text-center" style="margin-left: 30px; color: black; font-weight: bolder;"
                			 >찜한 상품이 존재하지 않습니다.</h6>
                		</div>
                	</c:otherwise>
                </c:choose>
                
                <!-- <a href="#">
                    <div class="col">
                  <div class="card shadow-sm">
                    <svg class="bd-placeholder-img card-img-top" width="150" height="200" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false">
                        <image href="/Users/mj/Desktop/자바 수업/2_슈케팅/2차 화면구현/assets/img/apple-touch-icon.png" height="100%" width="100%" />
                    </svg>
        
                    <div class="card-body">
                      <p class="card-text mb-1">CLASSICO</p>
                      <p class="card-text mb-1" style="font-size: x-small; color: rgb(94, 95, 95);">밀리터리 오버롤 그레이</p>
                      <p class="card-text mb-1" style="font-size: x-small; color: rgb(94, 95, 95);">FCCDA1U03</p>
                      <p class="card-text" style="font-size: medium; color: rgb(0, 0, 0); font-weight: bolder;">79,000원</p>
                    </div>
                  </div>
                </div>
                </a> -->


			<div class="row text-center justify-content-center align-self-center">
				<div class="col-auto">
	                   <nav aria-label="Page navigation example" class="mt-4">
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
             	</div>
             </div>
</body>
<script type="text/javascript">

$(document).ready(function() {
	
		$("a[name='goods']").on("click", function(e) { //회원 탈퇴 버튼을 누르면
			 e.preventDefault();
			 fn_unlike();
		});

		function fn_unlike() { //찜 취소 처리
			//이 함수를 호출할 버튼이 필요함. 임시로 이미지 a태그에 넣어서 구현해봄
			var goodsNum = $('img').attr("data-num");
			if(confirm("상품을 목록에서 삭제하시겠습니까?")) {
				$.ajax({
					url:"/sk/myPage/goodsUnlike",
					method:'get',
					contentType:"application/json; charset=utf-8",
					data:{TOTAL_GOODS_NUM : goodsNum},
					success:function() {
						alert("상품이 삭제되었습니다.");
						location.reload();
					},
					error:function() {
						alert("잠시 후 다시 시도해주세요.");
					}	
				});
			} else { return false; }
		}
});
</script>  
</html>