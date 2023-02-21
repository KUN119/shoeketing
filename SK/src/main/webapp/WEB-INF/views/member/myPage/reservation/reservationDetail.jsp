<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <div class="py-5 row" style="background-color: black;" >
        <div class="col align-self-center ms-5" style="margin-left: 100px;">
            <h1 class="mb-0 fs-1" style="color: rgb(255, 255, 255);">김성택님</h1>   
    
        </div>
        <div class="col text-end" style="margin-right: 100px;">
            <h1 class="mb-0 fs-1" style="color: rgb(255, 255, 255);">다이아</h1>
            <h1 class="mb-0 fs-5" style="color: rgb(255, 255, 255);">등급혜택</h1>
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
            <h3 style="margin-left: 30px; color: black; font-weight: bolder;">픽업 예약 상세 정보</h3>
            <hr style="border: solid 1px rgb(0, 0, 0); width: 100%; margin-left: 30px">

            <div class="row row-cols-2 row-cols-lg-3 align-items-stretch g-2 py-3">
                <div class="col">
                  <div>
                    <div>
                        <svg class="bd-placeholder-img card-img-top" style="margin-left: 20%;" width="400" height="400" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false">
                            <a href="#"><image href="/Users/mj/Desktop/자바 수업/2_슈케팅/2차 화면구현/assets/img/apple-touch-icon.png" height="300" width="300" /></a>
                           </svg>
                    </div>
                  </div>
                </div>
            
                <div class="mt-4 ms-4 row-cols-md-1">
                    <a href="#"><p style="font-size: small; margin-left: 10%;">예약 번호 : 10299832</p></a>
                    <p style="font-weight: bolder; font-size: x-large; margin-left: 10%;">79,000원</p>
                    <p style="font-weight: bolder; font-size: x-large; margin-left: 10%;">VANS</p>
                    <p style="font-weight: bolder; font-size: large; margin-left: 10%;">어센틱 블랙 마쉬멜로우 / VN005U01K19DU</p>

                    <div class="d-grid gap-2 d-md-flex justify-content-md-start mt-3">
                        <h6 style="color: black; margin-left: 10%;">픽업 만료 기한</h6>
                        <p></p>    
                        <h6 style="color: black;">2023/02/28</h6>
                        <p></p> 
                        <h6 style="color: rgb(0, 0, 0);">매장 마감시간까지</h6>
                    </div>

                    <div class="d-grid gap-2 d-md-flex justify-content-md-start mt-3">
                        <h6 style="color: black; margin-left: 10%;">예약 대기중</h6>
                        <p></p>
                        <p></p>
                        <p></p>      
                        <h6 style="color: black;">2023/02/28</h6>
                    </div>
                    <br>
                    <button style="margin-left: 80%;" type="button" class="btn btn-danger btn-md" >취 소</button>
                </div>
             </div>  
        </div>
</body>
</html>