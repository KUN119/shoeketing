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
            <h1 class="mb-0 fs-1" style="color: rgb(255, 255, 255);">${S_MEM_NAME}님</h1>   
    
        </div>
        <div class="col text-end" style="margin-right: 100px;">
            <h1 class="mb-0 fs-1" style="color: rgb(255, 255, 255);">${S_MEM_GRADE}</h2>
            <h1 class="mb-0 fs-5" style="color: rgb(255, 255, 255);">등급혜택</h2>
        </div>
       </div>

       <div class="row g-3" style="margin-top: 4%;">
        <div class="col-ms-5 col-lg-2 order-ms-last" style="margin-top: 0px;">
            <h3 style="margin-left: 13%; color: black;">My Page</h3>
            <hr style="border: solid 1px rgb(73, 73, 73); width: 80%; margin-left: 5%;">
          <ul>
            <li class="list-group-item d-flex justify-content-between lh-sm">
              <div>
                <h4><a href="/sk/myPage/accountModifyForm">회원 정보 수정</a></h4>
                <small class="text-muted">  </small>
              </div>
            </li>
            <li class="list-group-item d-flex justify-content-between lh-sm mt-4">
              <div>
                <h5 class="my-0">나의 정보</h5>
                <br>
                <h6 class="text-muted" style="margin-left: 25px;"><a href="/sk/myPage/goodsLikeList">찜 목록</a></h6>
                <h6 class="text-muted" style="margin-left: 25px;"><a href="/sk/myPage/reservationList">픽업 예약 목록</a></h6>
              </div>
            
            </li>

            <li class="list-group-item d-flex justify-content-between lh-sm mt-4">
              <div>
                <h5 class="my-0">매장 문의</h5>
                <br>
                <h6 class="text-muted" style="margin-left: 25px;"><a href="/sk/myPage/csList">나의 문의 내역</a></h6>
                <h6 class="text-muted" style="margin-left: 25px;"><a href="/sk/myPage/csWriteForm">문의 작성하기</a></h6>
            </li>

            <li class="list-group-item d-flex justify-content-between bg-light mt-4">
              <div class="text-success">
                <h5 class="my-0"><a href="/sk/basket/basketList">장바구니</a></h5>
              </div>
            </li>

            <li class="list-group-item d-flex justify-content-between mt-5">
                <h5 class="my-0"><a href="/sk/myPage/accountDeleteForm">회원 탈퇴</a></h5>
            </li>
          </ul>
        </div>

        <div class="col-ms-7 col-lg-8" style="margin-top: 0px;">
            <h3 style="margin-left: 30px; color: black; font-weight: bolder;">나의 회원 등급</h3>
            <br>

            <div class="row g-2">
                <div class="py-3 row" style="background-color: rgb(74, 74, 74); margin-left: 20%; width: 70%;" >
                    <div class="col align-self-center ms-5" style="margin-left: 100px;">
                        <h1 class="mb-0 fs-1" style="color: rgb(255, 255, 255); text-align: center;">${S_MEM_NAME}님의 회원 등급은 다이아입니다.</h1>   
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
                    <td style="text-align: center;">예약금 3000원 할인</td>
                    <td style="text-align: center;">예약금 5천원 할인</td>
                  </tr>
                </tbody>
              </table>
              <br>
              <br>
              <h4 style="margin-left: 30px; color: black; font-weight: bolder;">멤버쉽 안내</h4>
              <h6 style="margin-left: 30px; color: rgb(83, 83, 83);">최근 1년 동안 픽업 완료 횟수 기준으로 매월 1일에 멤버십 등급에 반영됩니다.</h6>
            </div>
        </div>
        
        
<script type="text/javascript">
$(document).ready(function() {
	
	function fn_checkPw() {
		
	
	}
	
})


</script>
</body>
</html>