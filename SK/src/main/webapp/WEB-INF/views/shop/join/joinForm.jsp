<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- shopLocationModal -->
    <div class="modal fade" id="shopLocationModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
          <div class="modal-header">
            <h1 class="modal-title fs-5" id="exampleModalLabel">매장 주소</h1>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">
            <form class="php-email-form mb-5">
                <div class="form-floating d-flex">
                  <input type="text" class="form-control" id="SHOP_ADD" name="SHOP_ADD" placeholder="1">
                  <label for="floatingInput">매장 주소를 입력해주세요</label>
                  <button class="btn btn-outline-secondary" type="button" id="button-addon2" style="font-size: 15px; width: 120px;">검색</button>
                </div>
            </form>
            <!--카카오 지도 api 적용-->
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
          </div>  
        </div>
      </div>
    </div>

<div class="container" style="width: 600px">
      <div class="box-shadow-full" style="margin-top: 100px">
        <form id="joinForm" class="php-email-form">
          <div class="row mb-4 text-center">
            <h1>SHOEKETING</h1>
            <h6>(매장회원)</h6>
          </div>
          <div class="row">
            <div class="mb-3">
              <label
                for="SHOP_ID"
                class="form-label"
                style="font-size: large; font-weight: bolder"
                >아이디</label
              >
              <input
                class="form-control"
                type="text"
                id="SHOP_ID"
                name="SHOP_ID"
                required
              />
            </div>

            <div class="mb-3">
              <label
                for="SHOP_PW"
                class="form-label"
                style="font-size: large; font-weight: bolder"
                >비밀번호*</label
              >
              <input
                type="password"
                class="form-control"
                id="SHOP_PW"
                name="SHOP_PW"
                required
              />
            </div>

            <div class="mb-3">
              <label
                for="SHOP_PW2"
                class="form-label"
                style="font-size: large; font-weight: bolder"
                >비밀번호 확인*</label
              >
              <input
                type="password"
                class="form-control"
                id="SHOP_PW2"
                name="SHOP_PW2"
                required
              />
            </div>

            <div class="mb-3">
              <label
                for="SHOP_NAME"
                class="form-label"
                style="font-size: large; font-weight: bolder"
                >지점명</label
              >
              <input
                class="form-control"
                type="text"
                id="SHOP_NAME"
                name="SHOP_NAME"
                required
              />
            </div>

            <div class="mb-3">
              <label
                for="SHOP_TEL"
                class="form-label"
                style="font-size: large; font-weight: bolder"
                >연락처</label
              >
              <input
                class="form-control"
                type="tel"
                id="SHOP_TEL"
                name="SHOP_TEL"
                required
              />
            </div>

            <div class="mb-3">
              <label
                for="SHOP_START_TIME"
                class="form-label"
                style="font-size: large; font-weight: bolder"
                >매장 영업시간</label
              >
              <div class="d-flex">
              <input
                class="form-control me-3"
                type="time"
                id="SHOP_START_TIME"
                name="SHOP_START_TIME"
                placeholder="시작 시간"
                required
              />
                ~
              <input
                class="form-control ms-3"
                type="time"
                id="SHOP_END_TIME"
                name="SHOP_END_TIME"
                placeholder="마감 시간"
                required
              />
            </div>
            </div>

            <div class="mb-3">
              <label
                for="SHOP_ADD"
                class="form-label"
                style="font-size: large; font-weight: bolder"
                >매장 주소</label
              >
              <input
                class="form-control"
                type="text"
                id="SHOP_ADD"
                name="SHOP_ADD"
                required
              />
              <button type="button" class="btn btn-outline-primary mt-3" data-bs-toggle="modal" data-bs-target="#shopLocationModal">
                매장 위치 검색
              </button>
            </div>
          </div>

          <hr class="my-4" />
          <button
            class="btn btn-primary btn-lg"
            style="margin-left: 30%; width: 45%"
            type="submit"
          >
            가입하기
          </button>
        </form>
      </div>
    </div>
</body>
</html>