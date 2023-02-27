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
            <h1 class="mb-0 fs-1" style="color: rgb(255, 255, 255);">${S_MEM_GRADE}</h1>
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
                <h4><a href="/sk/myPage/accountModifyForm">회원 정보 수정</a></h4>
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
            <h3 style="margin-left: 30px; color: black; font-weight: bolder;">회원 탈퇴</h3>
            <br>                
              <h5 style="margin-left: 30%; margin-right: 25%; color: rgb(83, 83, 83); text-align: center;">그동안 SHOEKETING을 이용해주셔서 감사합니다.</h5>
              <h5 style="margin-left: 30%; margin-right: 25%; color: rgb(255, 2, 2); text-align: center;">회원탈퇴 전 다음 사항을 꼭 숙지하시기 바랍니다.</h5>
              <hr class="my-4" style="margin-left: 15%;">
            <br>
  			<h5 style="margin-left: 30px; color: rgb(83, 83, 83); text-align: left;">1. 회원님이 기존에 작성하신 상품후기, 상품문의 게시물은 회원탈퇴 시에도 삭제되지 않습니다.</h5>
            <h6 style="margin-left: 8%; margin-right: 15%; color: rgb(83, 83, 83); text-align: left;">- 작성하신 게시물의 삭제를 원하실 경우에는 직접 삭제하신 후 탈퇴바라며, 삭제가 불가능한 경우 고객센터로 문의 바랍니다.</h6>
        
            <br>
            <h5 style="margin-left: 30px; color: rgb(83, 83, 83); text-align: left;">2. 회원님의 주문 및 상담 내역, 나의 1:1 문의는 회원탈퇴 시 즉시 삭제되지 않으며 일정기간이 지난 후 파기됩니다.</h5>
            <h6 style="margin-left: 8%; margin-right: 20%; color: rgb(83, 83, 83); text-align: left;">- 주문 내역은 5년이 지난 경우에 자동 파기 처리됩니다.</h6>
            <h6 style="margin-left: 8%; margin-right: 20%; color: rgb(83, 83, 83); text-align: left;">- 주문 상담 내역, 나의 1:1 문의는 3년이 지난 경우 자동 파기 처리됩니다.</h6>
        
            <br>
            <h5 style="margin-left: 30px; color: rgb(83, 83, 83); text-align: left;">3. 현재 진행 중인 거래 건이 있는 경우 탈퇴가 불가능합니다.</h5>
            <h6 style="margin-left: 8%; margin-right: 20%; color: rgb(83, 83, 83); text-align: left;">- 모든 상품의 예약 상태가 예약 대기중, 픽업완료, 픽업취소인 경우에만 탈퇴가 가능합니다.</h6>
        
            <br>
            <h5 style="margin-left: 30px; color: rgb(83, 83, 83); text-align: left;">4. 탈퇴한 회원님은 7일 이내에 재가입하실 수 없습니다.</h5>
            <h6 style="margin-left: 8%; margin-right: 20%; color: rgb(83, 83, 83); text-align: left;">- 회원님이 탈퇴하실 경우 탈퇴일 기준으로 7일이 지나야 재가입하실 수 있습니다.</h6>
        
            <br>
            <div class="form-check form-check-inline" style="width: 45%; margin-left: 30px; color: red;">
                <input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="option1" style="size: large;">
                <label class="form-check-label" for="inlineCheckbox1">회원 탈퇴하는 것에 동의합니다.</label>
            </div>

            <br>
            <div class="d-grid gap-2 d-md-flex justify-content-md-start mt-4">
                <form class="col-5 mb-3 mb-lg-0 me-lg-3" name="pwForm" role="search" style="width: 20%; margin-left:30px; margin-bottom:30px;">
                <input type="search" class="form-control form-control-bright text-bg-bright" placeholder="비밀번호를 입력해 주세요." aria-label="Search" id="MEM_PW" name="MEM_PW">
                <input type="hidden" id="MEM_NUM" name="MEM_NUM" value="2">
                <button type="button" name="delete" class="btn btn-warning">회원 탈퇴</button>
                </form>   
            </div>
        </div>
        
      </div>
      
      
<script type="text/javascript">

$(document).ready(function() {
	
	$("button[name='delete']").on("click", function(e) { //회원 탈퇴 버튼을 누르면
	 e.preventDefault();
	 fn_checkPw();
	});
	
	function fn_checkPw() { //비밀번호 확인 함수 
		//stringify : 일반 문자열을 JSON문자열로 변환해주는 함수
		var inputPw = $("#MEM_PW").val();
		var jsonPw = {"MEM_PW":inputPw};
		
		$.ajax({
			url:"/sk/myPage/accountDeleteForm",
			method:'post',
			contentType:"application/json; charset=utf-8",
			data:JSON.stringify(jsonPw),
			success:function(data) {
				if(data.result == "success") {
					if(confirm("회원을 탈퇴하시겠습니까?")) {
						fn_deleteAccount();
					} else { return false; }
				} else if(data.result == "pwfail") {
					alert("비밀번호가 일치하지 않습니다.");
				} else if(data.result == "deleteFail") {
					alert("진행중인 거래가 존재하므로 탈퇴하실 수 없습니다.");
				}
			},
			error:function() {
				alert("잠시 후 다시 시도해주세요.");
			}	
		});
	}
	
	function fn_deleteAccount() { //회원 탈퇴 처리
		
		$.ajax({
			url:"/sk/myPage/accountDelete",
			type:'post',
			success:function() {
				alert("회원탈퇴가 완료되었습니다.");
				 location.href="/sk/main";
			}
		});
	};
});
</script> 
</body>
</html>