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
          <h3 style="margin-left: 30px; color: black; font-weight: bolder;">회원 정보 수정</h3>
          <br>

          <div class="row g-2">
              <div class="mb-3" style="width: 45%; margin-left: 30%;">
                  <label for="exampleFormControlInput1" class="form-label" style="font-size: large; font-weight: bolder;">아이디(이메일)</label>
                  <input class="form-control" type="text" placeholder="나이키명동_0302" aria-label="Disabled input example" disabled>
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
                  <label for="exampleFormControlInput1" class="form-label" style="font-size: large; font-weight: bolder;">지점명</label>
                  <input class="form-control" type="text" placeholder="나이키 명동" aria-label="Disabled input example" disabled>
                </div>

                <div class="mb-3" style="width: 45%; margin-left: 30%;">
                  <label for="exampleFormControlInput1" class="form-label" style="font-size: large; font-weight: bolder;">연락처</label>
                  <input class="form-control" type="text" placeholder="010-1234-7890" aria-label="Disabled input example" >
                </div>

                <div class="mb-3" style="width: 45%; margin-left: 30%;">
                  <label for="exampleFormControlInput1" class="form-label" style="font-size: large; font-weight: bolder;">매장 영업 시간</label>
                  <table>
                  <tr>
                  <td>
                  <input type="text" name="SHOP_START_TIME" class="form-control" id="exampleFormControlInput1" style="width: 100%;">
                  </td>
                  <td>
                    <label for="exampleFormControlInput1" class="form-label" style="font-size: large; margin-left: 25px;">~</label>
                  </td>
                  <td>
                  <input type="text" name="SHOP_END_TIME" class="form-control" id="exampleFormControlInput1" style="width: 100%; margin-left: 30px;">
                </td>
                </tr>
                </table>
              </div>             
              
              <div class="mb-3" style="width: 45%; margin-left: 30%;">
                <label for="exampleFormControlInput1" class="form-label" style="font-size: large; font-weight: bolder;">매장 주소</label>
                <input type="address" name="SHOP_ADD"class="form-control" id="exampleFormControlInput1">
                <button type="button" style="margin-top: 3%;" class="btn btn-primary">매장 위치 검색</button>
            </div> 

              <hr class="my-4">
              <button class="btn btn-primary btn-lg" style="margin-left: 30%; width: 45%;" type="submit">회원 정보 수정하기</button>
          </div>
      </div>
</body>
</html>