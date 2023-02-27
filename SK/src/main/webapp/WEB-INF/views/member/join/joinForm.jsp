<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container" style="width: 600px;">
      <div class="box-shadow-full" style="margin-top: 100px">
        <div class="row mb-4 text-center">
          <h1>SHOEKETING</h1>
        </div>
        <div class="row">
          <div class="mb-3">
            <label
              for="exampleFormControlInput1"
              class="form-label"
              style="font-size: large; font-weight: bolder"
              >아이디(이메일)</label
            >
            <div class="d-flex">
	            <input
	              class="form-control"
	              type="email"
	              id="MEM_EMAIL"
	              name="MEM_EMAIL"
	              placeholder="abcde@gmail.com"
	              required
	            />
	            <button class="btn btn-outline-secondary" type="button" id="button-addon2" style="font-size: 15px; width: 100px;">중복확인</button>
            </div>
          </div>

          <div class="mb-3">
            <label
              for="MEM_PW"
              class="form-label"
              style="font-size: large; font-weight: bolder"
              >비밀번호*</label
            >
            <input
              type="text"
              class="form-control"
              id="MEM_PW"
              name="MEM_PW"
              required
            />
          </div>

          <div class="mb-3">
            <label
              for="MEM_PW2"
              class="form-label"
              style="font-size: large; font-weight: bolder"
              >비밀번호 확인*</label
            >
            <input
              type="email"
              class="form-control"
              id="MEM_PW2"
              name="MEM_PW2"
              required
            />
          </div>

          <div class="mb-3">
            <label
              for="MEM_NAME"
              class="form-label"
              style="font-size: large; font-weight: bolder"
              >이름</label
            >
            <input
              class="form-control"
              type="text"
              id="MEM_NAME"
              name="MEM_NAME"
              required
            />
          </div>

          <div class="mb-3">
            <label
              for="MEM_PHONE"
              class="form-label"
              style="font-size: large; font-weight: bolder"
              >휴대전화</label
            >
            <div class="d-flex">
	            <input
	              class="form-control"
	              type="text"
	              id="MEM_PHONE"
	              name="MEM_PHONE"
	              required
	            />
	            <button class="btn btn-outline-secondary" type="button" id="button-addon2" style="font-size: 15px; width: 100px;">본인인증</button>
            </div>
          </div>

          <div
            class="form-check form-check-inline ms-3 mb-3"
          >
            <input
              class="form-check-input"
              type="checkbox"
              id="MEM_INFORM_AGREE"
              name="MEM_INFORM_AGREE"
              value="Y"
            />
            <label class="form-check-label" for="inlineCheckbox1"
              >(선택) 광고 메시지 수신을 동의합니다.</label
            >
          </div>
        </div>

        <h6 style="color: rgb(83, 83, 83)">
          네이버에서 제공하는 이벤트/혜택 등 다양한 정보를 휴대전화(네이버앱
          알림 또는 문자), 이메일로 받아보실 수 있습니다. 일부 서비스(별도 회원
          체계로 운영하거나 네이버 가입 이후 추가 가입하여 이용하는 서비스 등)의
          경우, 개별 서비스에 대해 별도 수신 동의를 받을 수 있으며, 이때에도
          수신 동의에 대해 별도로 안내하고 동의를 받습니다.
        </h6>

        <hr class="my-4" />
        <button
          class="btn btn-primary btn-lg"
          style="margin-left: 30%; width: 45%"
          type="submit"
        >
          가입하기
        </button>
      </div>
    </div>
</body>
</html>