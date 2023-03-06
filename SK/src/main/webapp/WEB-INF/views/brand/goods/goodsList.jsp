<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
                    type="text"
                  />
                  <button
                    class="btn"
                    type="button"
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
                </p>
            </div>
            
            <br>

            <div class="row row-cols-5 g-5" style="margin-left: 6px;">
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