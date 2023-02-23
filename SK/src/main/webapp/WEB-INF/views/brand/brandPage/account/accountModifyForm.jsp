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
                <h5 style="text-decoration: underline;"><a href="#">기본 정보 수정</a></h5>
                <small class="text-muted">  </small>
              </div>
            </li>
            <li class="list-group-item d-flex justify-content-between lh-sm mt-4">
              <div>
                <h5 class="my-0">상품 관리</h5>
                <br>
                <h6 class="text-muted" style="margin-left: 25px;"><a href="#">전체 상품 리스트</a></h6>
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
            <h3 style="margin-left: 30px; color: black; font-weight: bolder;">회원 정보 수정</h3>
            <br>

            <div class="row g-2">
                <div class="mb-3" style="width: 45%; margin-left: 30%;">
                    <label for="exampleFormControlInput1" class="form-label" style="font-size: large; font-weight: bolder;">아이디(이메일)</label>
                    <input class="form-control" type="text" placeholder="nike0101" aria-label="Disabled input example" disabled>
                  </div>

                  <div class="mb-3" style="width: 45%; margin-left: 30%;">
                    <label for="exampleFormControlInput1" class="form-label" style="font-size: large; font-weight: bolder;">비밀번호*</label>
                    <input type="email" name="MEM_PW" class="form-control" id="exampleFormControlInput1">
                  </div>

                  <div class="mb-3" style="width: 45%; margin-left: 30%;">
                    <label for="exampleFormControlInput1" class="form-label" style="font-size: large; font-weight: bolder;">비밀번호 확인*</label>
                    <input type="email" name="MEM_PW2"class="form-control" id="exampleFormControlInput1">
                  </div>

                  <div class="mb-3" style="width: 45%; margin-left: 30%;">
                    <label for="exampleFormControlInput1" class="form-label" style="font-size: large; font-weight: bolder;">브랜드명</label>
                    <input class="form-control" type="text" placeholder="나이키" aria-label="Disabled input example" disabled>
                  </div>

                  <div class="mb-3" style="width: 45%; margin-left: 30%;">
                    <label for="exampleFormControlInput1" class="form-label" style="font-size: large; font-weight: bolder;">사업자 등록 번호</label>
                    <input class="form-control" type="text" placeholder="119-86-38589" aria-label="Disabled input example" disabled>
                  </div>

                  <div class="mb-3" style="width: 45%; margin-left: 30%;">
                    <label for="exampleFormControlInput1" class="form-label" style="font-size: large; font-weight: bolder;">등록지 주소</label>
                    <input type="email" name="MEM_PW2"class="form-control" id="exampleFormControlInput1">
                </div>             
                
                <div class="mb-3" style="width: 45%; margin-left: 30%;">
                    <table>
                        <label for="exampleFormControlInput1" class="form-label" style="font-size: large; font-weight: bolder;">브랜드 대표 사진</label>
                        <tr>
                        <td style="width: 80%;">
                        <input style="width: 100%;" type="email" name="MEM_PW" class="form-control" placeholder="파일 첨부" id="exampleFormControlInput1">
                        </td>
                        <td>
                        <button type="button" style="width: 90px; margin-left: 35%;" class="btn btn-secondary" data-bs-toggle="modal" data-bs-target="#findFile">파일 찾기</button>
                        </td>
                        </tr>
                    </table>
                </div>  
                
                <div class="mb-3" style="width: 45%; margin-left: 30%;">
                    <label for="exampleFormControlInput1" class="form-label" style="font-size: large; font-weight: bolder;">브랜드 소개말</label>
                    <textarea class="form-control" id="exampleFormControlTextarea1" rows="10"></textarea>
                </div>    

                <hr class="my-4">
                <button class="btn btn-primary btn-lg" style="margin-left: 30%; width: 45%;" type="submit">회원 정보 수정하기</button>
            </div>
        </div>
      </div>
</body>
</html>