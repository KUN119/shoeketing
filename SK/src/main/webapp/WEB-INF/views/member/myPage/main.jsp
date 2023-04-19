<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
        <div class="col-10" style="margin-top: 0px;">
            <h3 style="margin-left: 30px; color: black; font-weight: bolder;">나의 회원 등급</h3>
            <br>

            <div class="row g-2">
                <div class="py-3 row" style="background-color: rgb(74, 74, 74); margin-left: 20%; width: 70%;" >
                    <div class="col align-self-center ms-5" style="margin-left: 100px;">
                        <h1 class="mb-0 fs-1" style="color: rgb(255, 255, 255); text-align: center;">${session_MEM_INFO.MEM_NAME}님의 회원 등급은 ${session_MEM_INFO.MEM_GRADE}입니다.</h1>   
                    </div>
                   </div>
              </div>

              <h3 style="margin-left: 30px; margin-top: 100px; color: black; font-weight: bolder;">등급 혜택</h3>
              <hr style="border: solid 1px rgb(73, 73, 73); ">

              <table class="table" style="width: 70%; margin-left: 20%;">
                <tbody class="table-group-divider">
                  <tr>
                    <th scope="row" style="width: 15%; text-align: center;">회원 등급</th>
                    <td style="font-weight: bolder; text-align: center;">골드</td>
                    <td style="font-weight: bolder; text-align: center;">플래티넘</td>
                    <td style="font-weight: bolder; text-align: center;">다이아</td>
                  </tr>
                  <tr>
                    <th scope="row" style="width: 15%; text-align: center;">등급 조건</th>
                    <td style="text-align: center;">신규 가입 회원</td>
                    <td style="text-align: center;">픽업 예약 6회 이상</td>
                    <td style="text-align: center;">픽업 예약 11회 이상</td>
                  </tr>
                  <tr>
                    <th scope="row" style="width: 15%; text-align: center;">등급 혜택</th>
                    <td style="text-align: center;">X</td>
                    <td style="text-align: center;">예약금 3천원 할인</td>
                    <td style="text-align: center;">예약금 5천원 할인</td>
                  </tr>
                </tbody>
              </table>
              <br>
              <br>
              <h4 style="margin-left: 30px; color: black; font-weight: bolder;">멤버쉽 안내</h4>
              <h6 style="margin-left: 30px; color: rgb(83, 83, 83);">최근 6개월 동안 픽업 완료 횟수 기준으로 매월 1일에 멤버십 등급에 반영됩니다.</h6>
            </div>
</body>
</html>