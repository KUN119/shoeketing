<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <div class="py-5 row" style="background-color: black;" >
        <div class="col align-self-center ms-5" style="margin-left: 100px;">
            <h1 class="mb-0 fs-1" style="color: rgb(255, 255, 255);">${S_MEM_NAME}님</h1>   
     
        </div>
        <div class="col text-end" style="margin-right: 100px;">
            <h1 class="mb-0 fs-1" style="color: rgb(255, 255, 255);">${S_MEM_GRADE}</h2>
            <h1 class="mb-0 fs-5" style="color: rgb(255, 255, 255);">등급혜택</h2>
        </div>
       </div>

       <div class="row g-3" style="margin-top: 4%;">
        <div class="col-ms-5 col-lg-2 order-ms-last" style="margin-top: 0px;">
            <h3 style="margin-left: 13%; color: black;">My Page</h3>
            <hr style="border: solid 1px rgb(73, 73, 73); width: 80%; margin-left: 5%;">
          <ul>
            <li class="list-group-item d-flex justify-content-between lh-sm">
              <div>
                <h4><a href="#">회원 정보 수정</a></h4>
                <small class="text-muted">  </small>
              </div>
            </li>
            <li class="list-group-item d-flex justify-content-between lh-sm mt-4">
              <div>
                <h5 class="my-0">나의 정보</h5>
                <br>
                <h6 class="text-muted" style="margin-left: 25px;"><a href="#">찜 목록</a></h6>
                <h6 class="text-muted" style="margin-left: 25px;"><a href="#">픽업 예약 목록</a></h6>
              </div>
            
            </li>

            <li class="list-group-item d-flex justify-content-between lh-sm mt-4">
              <div>
                <h5 class="my-0">매장 문의</h5>
                <br>
                <h6 class="text-muted" style="margin-left: 25px;"><a href="#">나의 문의 내역</a></h6>
                <h6 class="text-muted" style="margin-left: 25px;"><a href="#">문의 작성하기</a></h6>
            </li>

            <li class="list-group-item d-flex justify-content-between bg-light mt-4">
              <div class="text-success">
                <h5 class="my-0"><a href="#">장바구니</a></h5>
              </div>
            </li>

            <li class="list-group-item d-flex justify-content-between mt-5">
                <h5 class="my-0"><a href="#">회원 탈퇴</a></h5>
            </li>
          </ul>
        </div>

        <div class="col-ms-7 col-lg-8" style="margin-top: 0px;">
            <h3 style="margin-left: 30px; color: black; font-weight: bolder;">찜 목록</h3>
            <div class="d-grid gap-2 d-md-flex justify-content-md-start mt-4">
                <h6 style="margin-left: 30px; color: black; font-weight: bolder;">전체</h6>        
                <h6 style="color: black; font-weight: bolder;">총</h6>
                <h6 style="color: rgb(255, 183, 0); font-weight: bolder;">${goodsLikeCount}</h6>
                <h6 style="color: black; font-weight: bolder;">개</h6>
            </div>
            
            <br>

            <div class="row row-cols-1 row-cols-sm-3 row-cols-md-5 g-5" style="margin-left: 6px;">
                <c:choose>
                	<c:when test="${fn:length(goodsLikeList) > 0}">
                		<c:forEach var="list" items="${goodsLikeList}" varStatus="status">
	                		<a href="#">
	                    		<div class="col">
			                 		 <div class="card shadow-sm">
					                    <svg class="bd-placeholder-img card-img-top" width="150" height="200" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false">
					                        <image href="/Users/mj/Desktop/자바 수업/2_슈케팅/2차 화면구현/assets/img/apple-touch-icon.png" height="100%" width="100%" />
					                    </svg>
					                    <div class="card-body">
					                      <p class="card-text mb-1">${list.BRAND_NAME}</p>
					                      <p class="card-text mb-1" style="font-size: x-small; color: rgb(94, 95, 95);">${list.TOTAL_GOODS_NAME}</p>
					                      <p class="card-text mb-1" style="font-size: x-small; color: rgb(94, 95, 95);">${list.TOTAL_GOODS_MODEL}</p>
					                      <p class="card-text" style="font-size: medium; color: rgb(0, 0, 0); font-weight: bolder;">${list.TOTAL_GOODS_PRICE}원</p>
					                    </div>
					                  </div>
					             </div>
			                </a>
						</c:forEach>
                	</c:when>
                	<c:otherwise>
                		<div class="col" style="margin:auto;">
                			 <h6 style="margin-left: 30px; color: black; font-weight: bolder;"
                			 >찜한 상품이 존재하지 않습니다.</h6>
                		</div>
                	</c:otherwise>
                </c:choose>
                
                <a href="#">
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
                </a>

                <a href="#">
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
                </a>

                <a href="#">
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
                </a>

                <a href="#">
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
                </a>

                <a href="#">
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
                </a>

                <a href="#">
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
                </a>

               <!--  <a href="#">
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
                </a>

                <a href="#">
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
                </a>

                <a href="#">
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
                </a>  -->
		
				<c:choose>
                	<c:when test="${fn:length(goodsLikeList) > 0}">
	                  <nav aria-label="Page navigation example" style="margin-left: 40%;">
	                </c:when>
	                <c:otherwise>
	                   <nav aria-label="Page navigation example" style="margin-top: 50%;">
	                </c:otherwise>
	            </c:choose>    
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
</html>