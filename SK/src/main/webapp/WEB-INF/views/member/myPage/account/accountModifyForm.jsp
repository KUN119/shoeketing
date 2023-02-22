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
            <h3 style="margin-left: 30px; color: black; font-weight: bolder;">회원 정보 수정</h3>
            <br>

            <div class="row g-2">
                <div class="mb-3" style="width: 45%; margin-left: 30%;">
                    <label for="exampleFormControlInput1" class="form-label" style="font-size: large; font-weight: bolder;">아이디(이메일)</label>
                    <input class="form-control" type="text" placeholder="abcde@gmail.com" aria-label="Disabled input example" disabled>
                  </div>

                  <div class="mb-3" style="width: 45%; margin-left: 30%;">
                    <label for="exampleFormControlInput1" class="form-label" style="font-size: large; font-weight: bolder;">비밀번호*</label>
                    <input type="email" class="form-control" id="exampleFormControlInput1">
                  </div>

                  <div class="mb-3" style="width: 45%; margin-left: 30%;">
                    <label for="exampleFormControlInput1" class="form-label" style="font-size: large; font-weight: bolder;">비밀번호 확인*</label>
                    <input type="email" class="form-control" id="exampleFormControlInput1">
                  </div>

                  <div class="mb-3" style="width: 45%; margin-left: 30%;">
                    <label for="exampleFormControlInput1" class="form-label" style="font-size: large; font-weight: bolder;">이름</label>
                    <input class="form-control" type="text" placeholder="김성택" aria-label="Disabled input example" disabled>
                  </div>

                  <div class="mb-3" style="width: 45%; margin-left: 30%;">
                    <label for="exampleFormControlInput1" class="form-label" style="font-size: large; font-weight: bolder;">휴대전화</label>
                    <input class="form-control" type="text" placeholder="010-1234-5678" aria-label="Disabled input example" disabled>
                  </div>

                  <div class="form-check form-check-inline" style="width: 45%; margin-left: 30%;">
                    <input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="option1">
                    <label class="form-check-label" for="inlineCheckbox1">(선택) 광고 메시지 수신을 동의합니다.</label>
                  </div>
              </div>

              <h6 style="margin-left: 30%; margin-right: 25%; color: rgb(83, 83, 83);">네이버에서 제공하는 이벤트/혜택 등 다양한 정보를 휴대전화(네이버앱 알림 또는 문자), 이메일로 받아보실 수 있습니다. 일부 서비스(별도 회원 체계로 운영하거나 네이버 가입 이후 추가 가입하여 이용하는 서비스 등)의 경우, 개별 서비스에 대해 별도 수신 동의를 받을 수 있으며, 이때에도 수신 동의에 대해 별도로 안내하고 동의를 받습니다.</h6>
              
                <hr class="my-4">
                <button class="btn btn-primary btn-lg" style="margin-left: 30%; width: 45%;" type="submit">회원 정보 수정하기</button>
            </div>
        </div>
</body>
</html>