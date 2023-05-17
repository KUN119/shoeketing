<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
    <!-- findIdModal -->
    <div class="modal fade" id="findIdModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
          <div class="modal-header">
            <h1 class="modal-title fs-5" id="exampleModalLabel">아이디 찾기</h1>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">
            <form id="findIdForm" class="php-email-form needs-validation mb-5" novalidate>
                <div class="form-floating mb-3">
                  <input type="text" name="MEM_NAME" class="form-control" id="MEM_NAME" placeholder="1" required>
                  <label for="floatingInput">이름을 입력해주세요</label>
                </div>
                <div class="form-floating d-flex">
                  <input type="text" name="phone" class="form-control" id="phone" placeholder="1" pattern="^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$" required>
                  <label for="floatingPassword">전화번호를 입력해주세요</label>
                  <button class="btn btn-secondary" type="submit" name="phoneChk" id="phoneChk" style="font-size: 15px; width: 125px;">본인인증</button>
                </div>
            </form>
            <hr>
            <form class="php-email-form mt-5">
                <div class="form-floating d-flex mb-3">
                    <input type="text" class="form-control" id="phone2" name="phone2" placeholder="1" disabled required>
                    <label for="floatingInput">인증번호를 입력해주세요</label>
                    <button class="btn btn-outline-secondary" type="button" name="phoneChk2" id="phoneChk2" style="font-size: 15px; width: 120px;" disabled>인증</button>
                </div>
                <p class="point successPhoneChk">휴대폰 번호 입력후 인증번호 보내기를 해주십시오.</p>
                <div class="text-end">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
                    <button type="button" class="btn btn-primary" id="findId2" disabled>아이디 찾기</button>
                </div>
            </form>
          </div>
        </div>
      </div>
    </div>

    <!-- findIdResultModal -->
    <div class="modal fade" id="findIdResultModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
          <div class="modal-header">
            <h1 class="modal-title fs-5" id="exampleModalLabel">아이디 찾기 결과</h1>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">
            <h6>고객님의 정보와 일치하는 아이디</h6>
            <h5 id="emailH5" class="text-center mt-5 mb-5"></h5>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#reissuePwModal">PW재발급</button>
          </div>
        </div>
      </div>
    </div>

    <!-- reissuePwModal -->
    <div class="modal fade" id="reissuePwModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
          <div class="modal-header">
            <h1 class="modal-title fs-5" id="exampleModalLabel">비밀번호 재발급</h1>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">
            <form id="findPwForm" class="php-email-form needs-validation mb-2" novalidate>
                <div class="form-floating mb-3">
                  <input type="text" class="form-control" name="reissuePwName" id="reissuePwName" placeholder="1" required>
                  <label for="floatingInput">이름을 입력해주세요</label>
                </div>
                <div class="form-floating d-flex">
                  <input type="email" class="form-control" id="reissuePwEmail" placeholder="1" pattern="^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$" required>
                  <label for="floatingInput">이메일을 입력해주세요</label>
                  <button class="btn btn-outline-secondary" type="submit" name="findPw" id="button-addon2" style="font-size: 14px; width: 135px;">PW재발급</button>
                </div>
            </form>
            <div class="modal-body findPwResultDiv"></div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
          </div>  
        </div>
      </div>
    </div>

    <div class="container text-center justify-content-center align-self-center" style="width: 600px;">
        <div class="box-shadow-full" style="margin-top: 100px;">
            <div class="row mb-4">
                <h1>SHOEKETING</h1>
            </div>
            <div class="row mb-3">
                <ul class="nav nav-tabs justify-content-center">
                    <li class="nav-item">
                      <a class="nav-link active" href="/sk/loginSelect/member">일반회원</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link text-dark" href="/sk/loginSelect/shop">매장회원</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link text-dark" href="/sk/loginSelect/brand">브랜드회원</a>
                    </li>
                  </ul>
            </div>
            <div class="row">
                <form id="loginForm" class="php-email-form needs-validation" novalidate>
                    <div class="form-group mt-3 mb-3">
                        <input type="email" class="form-control" id="MEM_EMAIL" name="MEM_EMAIL" placeholder="email" required/>
                        <div class="invalid-feedback text-start">
				      		이메일을 입력해주세요
				    	</div>
                    </div>
                    <div class="form-group mb-3">
                        <input type="password" class="form-control" id="MEM_PW" name="MEM_PW" placeholder="password" required/>
                        <div class="invalid-feedback text-start">
				      		비밀번호를 입력해주세요
				    	</div>
                    </div>
                    <div class="form-group mb-3 text-left">
                        <input type="checkbox" value="autoLogin" id="autoLogin">
                        <label class="form-check-label" for="autoLogin">
                          자동로그인
                        </label>
                    </div>
                    <div class="form-group mt-5 mb-5">
                        <button type="submit" name="login" id="login" class="btn btn-dark" style="width: 300px; background-color:black;">로그인</button>
                    </div>
                    <div class="form-group mt-4 mb-3">
                        <button type="button" class="btn btn-dark" style="width: 100px;" data-bs-toggle="modal" data-bs-target="#findIdModal">ID찾기</button>
                        <button type="button" class="btn btn-dark" style="width: 100px;" data-bs-toggle="modal" data-bs-target="#reissuePwModal">PW재발급</button>
                        <button type="button" name="memberJoin" class="btn btn-dark" style="width: 100px;" onclick="location.href='/sk/memberJoinForm'">회원가입</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
  </body>
  
<script type="text/javascript">
$(document).ready(function() {
	//유효성 검사
	(() => {
		  'use strict'
	  // Loop over them and prevent submission
	$("#loginForm").on("submit", function(e) { //등록 버튼 누르면
		e.preventDefault();
		$('#loginForm').addClass('was-validated');
		let MEM_EMAIL = $("#MEM_EMAIL").val();
		let MEM_PW = $("#MEM_PW").val();
		
		if($.trim(MEM_EMAIL) == '' || MEM_EMAIL == null) {
			return false;
		}
		
		if($.trim(MEM_PW) == '' || MEM_PW == null) {
			return false;
		}
		
		 fn_loginForm();
		});
	})()
	
	function fn_loginForm() {
		var formData = new FormData();
		var MEM_EMAIL = $('#MEM_EMAIL').val();
		var MEM_PW = $('#MEM_PW').val();
		
		formData.append("MEM_EMAIL", MEM_EMAIL);
		formData.append("MEM_PW", MEM_PW);
		
		$.ajax({
			url: '/sk/memberLogin',
			type: 'POST',
			data: formData,
			processData: false,
			contentType: false,
			success: function(data) {
				if(data == "emailfail"){
					alert("존재하지 않는 아이디입니다.");
				}else if(data == "pwfail"){
					alert("비밀번호가 일치하지 않습니다.");
				}else if(data == "success"){
					location.href='/sk/main';
				}
			},
			error: function(xhr, status, error) {
				console.log('실패');
			}
		});
	};
        
      //휴대폰 번호 인증
      //https://unknown-coding.tistory.com/16
        var code2 = "";
        var memEmail = "";
        
        $("#findIdForm").on("submit", function(e){
        	e.preventDefault();
        	
        	var phone = $("#phone").val();
        	var MEM_NAME = $("#MEM_NAME").val();
        	
        	$('#findIdForm').addClass('was-validated');
        	
        	if($.trim(MEM_NAME) == '' || MEM_NAME == null) {
    			return false;
    		}
    		
    		if($.trim(phone) == '' || phone == null) {
    			return false;
    		}
    		
        	$.ajax({
                type:"GET",
                url:"/sk/findId?phone=" + phone + "&MEM_NAME=" + MEM_NAME,
                cache : false,
                success:function(data){
                	if(data.result == "error"){
                		alert("일치하는 회원정보가 없습니다. 이름 혹은 전화번호를 확인해주세요.")
        				$("#phone").attr("autofocus",true);
                	}else{	        		
                		$("#phone2").attr("disabled",false);
                		$("#phoneChk2").attr("disabled",false);
                		$(".successPhoneChk").text("인증번호를 입력한 뒤 본인인증을 눌러주십시오.");
                		$(".successPhoneChk").css("color","green");
                		$("#phone").attr("readonly",true);
                		$("#MEM_NAME").attr("readonly",true);
                		code2 = data.randomNumber;
                		memEmail = data.result;
                	}
                }
            });
        });
        
        $("#phoneChk2").click(function(){
        	if($("#phone2").val() == code2){
        		$(".successPhoneChk").text("인증번호가 일치합니다.");
        		$(".successPhoneChk").css("color","green");
        		$("#phone2").attr("disabled",true);
        		$("#findId2").attr("disabled",false);
        	}else{
        		$(".successPhoneChk").text("인증번호가 일치하지 않습니다. 확인해주시기 바랍니다.");
        		$(".successPhoneChk").css("color","red");
        		$(this).attr("autofocus",true);
        	}
        });
        
        $("#findId2").click(function(){
        	$("#emailH5").append(memEmail);
        	$("#findIdModal").modal('hide');
    		$("#findIdResultModal").modal('show');
        });
        
	
	$("#findPwForm").on("submit", function(e) {
		e.preventDefault();
		var MEM_NAME = $('#reissuePwName').val();
	    var MEM_EMAIL = $('#reissuePwEmail').val();
	    var emailRule = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/;
	    
	    $('#findPwForm').addClass('was-validated');
    	
    	if($.trim(MEM_NAME) == '' || MEM_NAME == null) {
			return false;
		}
		
		if($.trim(MEM_EMAIL) == '' || MEM_EMAIL == null) {
			return false;
		} else if (!emailRule.test(MEM_EMAIL)) {
			return false;
		}
	    
	    var findData = new FormData();
	    findData.append('MEM_NAME', MEM_NAME);
	    findData.append('MEM_EMAIL', MEM_EMAIL);
	    
	    $.ajax({
            url: '/sk/join/emailAuth',
            type:'POST',
            data:findData,
            processData: false,
			contentType: false,
            success:function(data) {
            	if(data == "success") {
            		$(".findPwResultDiv").empty();
            		$(".findPwResultDiv").append("입력하신 이메일으로 비밀번호가 재발급 되었습니다.");
            		$(".findPwResultDiv").css("color","green");
            	} else if (data == "fail") {
            		$(".findPwResultDiv").empty();
	         		$(".findPwResultDiv").append("입력하신 정보와 일치한 회원정보가 없습니다.");
	         		$(".findPwResultDiv").css("color","red");
            	}
            },
            error:function() {
            	alert("서버 오류");
            }
       });
		
	});
		
});

</script>
</html>