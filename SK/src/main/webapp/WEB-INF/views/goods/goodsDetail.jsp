<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <div class="container">
      <!--상단 상품 정보 시작-->
      <div class="row mt-5 mb-5">
        <!--상품 썸네일-->
        <div class="col-6 ps-4 pe-4">
          <img
            src="<%=request.getContextPath()%>/assets/img/a7ae62bb0c3243a2af834df70e9b0d81.jpg"
            class="img-thumbnail"
          />
        </div>
        <!--상품 정보-->
        <div class="col-6 ps-5 pe-4 pt-4">
          <div class="d-flex align-self-center">
            <h6 class="mb-0 me-1" style="font-weight: 700">NIKE</h6>
            <p class="mb-0 ms-3" style="font-size: 12px; font-weight: 400">
              <a href="#">브랜드관 <i class="bi bi-chevron-right"></i></a>
            </p>
          </div>
          <h3 class="mt-3" style="font-weight: 700">
            에어맥스 AP 화이트 남성 / cu4826-100
          </h3>
          <div class="d-flex mt-4">
            <h3 class="mb-0" style="font-weight: 700">103,000</h3>
            <p class="mb-0 ms-1 align-self-end">원</p>
          </div>
          <div class="d-flex mt-5">
            <p class="mb-0 me-5 align-self-center" style="font-weight: 500">
              사이즈
            </p>
            <select class="form-select" style="width: 25rem">
              <option selected>사이즈 선택</option>
              <option value="260">260</option>
              <option value="265">265</option>
              <option value="270">270</option>
            </select>
          </div>
          <div class="d-flex mt-4">
            <p class="mb-0 me-5 align-self-center">상품리뷰</p>
            <div class="mb-1">
              <span class="star">
                ★★★★★
                <span class="starView">★★★★★</span>
                <input
                  name="starPoint"
                  type="range"
                  value="8"
                  step="1"
                  min="0"
                  max="10"
                />
                <!-- value 값에 따라서 별점 표시 -->
              </span>
            </div>
            <p class="mb-0 align-self-center ms-2">4.2</p>
          </div>
          <div
            class="d-grid gap-2 col-5"
            style="margin-left: 8rem; margin-top: 2rem"
          >
            <button
              class="btn btn-dark"
              style="border-radius: 15px"
              type="button"
            >
              장바구니
            </button>
            <button
              class="btn btn-light"
              style="
                border: 1px solid rgba(0, 0, 0, 0.345);
                border-radius: 15px;
              "
              type="button"
            >
              위시리스트 <i class="bi bi-heart"></i>
            </button>
            <button
              class="btn btn-secondary"
              style="border-radius: 15px"
              type="button"
            >
              재고찾기
            </button>
          </div>
        </div>
      </div>
      <!--상단 상품 정보 끝-->

      <hr />

      <!--상품 상세 이미지-->
      <div class="row p-5" style="margin: 0 10rem 0 10rem">
        <img
          src="<%=request.getContextPath()%>/assets/img/a7ae62bb0c3243a2af834df70e9b0d81.jpg"
          class="img-thumbnail"
        />
        <img
          src="<%=request.getContextPath()%>/assets/img/b7ae62bb0c3243a2af834df70e9b0d81.jpg"
          class="img-thumbnail"
        />
        <img
          src="<%=request.getContextPath()%>/assets/img/c7ae62bb0c3243a2af834df70e9b0d81.jpg"
          class="img-thumbnail"
        />
      </div>
      <!--상품 상세 이미지 끝-->

      <hr />

      <!--상품만족도 시작-->
      <div class="row pt-3 pb-3">
        <!--상품 별점-->
        <div class="col-3 text-center align-self-center">
          <p class="mb-2">상품만족도</p>
          <div class="d-flex justify-content-center">
            <h2 class="mb-1" style="font-weight: 700">80</h2>
            <h5 class="align-self-center mb-0">%</h5>
          </div>
          <div class="d-flex justify-content-center">
            <div>
              <span class="star star2">
                ★★★★★
                <span class="starView">★★★★★</span>
                <input
                  name="starPoint"
                  type="range"
                  step="1"
                  min="0"
                  max="10"
                />
                <!-- 상단 별점 value에 따라 똑같이 적용됨 -->
              </span>
            </div>
            <p class="mb-0 align-self-center ms-2">4.2</p>
          </div>
        </div>

        <!--사이즈 착화감 색상-->
        <div class="col-8">
          <div class="row justify-content-around">
            <div class="col-3">
              <h5 class="mb-4">사이즈</h5>
              <div class="d-flex justify-content-between">
                <p>정사이즈보다 작음</p>
                <p>10%</p>
              </div>
              <div class="d-flex justify-content-between">
                <p>정사이즈</p>
                <p>80%</p>
              </div>
              <div class="d-flex justify-content-between">
                <p>정사이즈보다 큼</p>
                <p>10%</p>
              </div>
            </div>

            <div class="col-3">
              <h5 class="mb-4">착화감</h5>
              <div class="d-flex justify-content-between">
                <p>나쁨</p>
                <p>10%</p>
              </div>
              <div class="d-flex justify-content-between">
                <p>보통</p>
                <p>20%</p>
              </div>
              <div class="d-flex justify-content-between">
                <p>좋음</p>
                <p>70%</p>
              </div>
            </div>

            <div class="col-3">
              <h5 class="mb-4">색상</h5>
              <div class="d-flex justify-content-between">
                <p>화면보다 밝음</p>
                <p>15%</p>
              </div>
              <div class="d-flex justify-content-between">
                <p>화면과 같음</p>
                <p>75%</p>
              </div>
              <div class="d-flex justify-content-between">
                <p>화면보다 어두움</p>
                <p>10%</p>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!--상품만족도 끝-->
    </div>
  </body>
  
  <script>
 
    $(document).ready(function () {
      const starPoint = $("input[name='starPoint']").val() * 10;
      $(".starView").css('width', starPoint + '%');
    });
  </script>
</html>