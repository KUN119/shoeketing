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
                <h5><a href="#">기본 정보 수정</a></h5>
                <small class="text-muted">  </small>
              </div>
            </li>
            <li class="list-group-item d-flex justify-content-between lh-sm mt-4">
              <div>
                <h5 class="my-0">상품 관리</h5>
                <br>
                <h6 class="text-muted" style="margin-left: 25px; text-decoration: underline; font-weight: bolder;" ><a href="#">전체 상품 리스트</a></h6>
                <h6 class="text-muted" style="margin-left: 25px;"><a href="#">상품 등록</a></h6>
              </div>
            
            </li>

            <li class="list-group-item d-flex justify-content-between lh-sm mt-4">
              <div>
                <h5 class="my-0">매장 관리</h5>
                <br>
                <h6 class="text-muted" style="margin-left: 25px;"><a href="#">입점 매장 리스트</a></h6>
                <h6 class="text-muted" style="margin-left: 25px;"><a href="#">매장 가입 승인</a></h6>
            </li>
          </ul>
        </div>

        <div class="col-ms-7 col-lg-8" style="margin-top: 0px;">
            <h3 style="margin-left: 30px; color: black; font-weight: bolder;">전체 상품 리스트</h3>
            <div class="d-grid gap-2 d-md-flex justify-content-lg-start mt-4">
                <h5 style="margin-left: 30px; width: 70px; color: black; font-weight: bolder;">전체</h5>        
                <h5 style="color: black; font-weight: bolder;">총</h5>
                <h5 style="color: rgb(255, 183, 0); font-weight: bolder;">18</h5>
                <h5 style="color: black; font-weight: bolder;">개</h5>
                <p>
                    <div class="dropdown" style="margin-left: 60%;">
                        <button class="btn btn-secondary btn-md dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                          검색 조건
                        </button>
                        <ul class="dropdown-menu">
                          <li><button class="dropdown-item" type="button">모델명</button></li>
                          <li><button class="dropdown-item" type="button">모델 번호</button></li>
                        </ul>
                    </div>
                    <div class="search">
                        <input type="text" placeholder="검색어 입력">
                        <img src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png">
                      </div>
                </p>
            </div>
            
            <br>

            <div class="row row-cols-1 row-cols-sm-3 row-cols-md-5 g-5" style="margin-left: 6px;">
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
</body>
</html>