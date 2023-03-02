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
            <form class="php-email-form mb-5">
                <div class="form-floating mb-3">
                  <input type="text" name="MEM_NAME" class="form-control" id="findIdName" placeholder="1">
                  <label for="floatingInput">이름을 입력해주세요</label>
                </div>
                <div class="form-floating d-flex">
                  <input type="text" name="MEM_PHONE" class="form-control" id="findIdPhone" placeholder="1">
                  <label for="floatingPassword">전화번호를 입력해주세요</label>
                  <button class="btn btn-outline-secondary" type="button" id="button-addon2" style="font-size: 15px; width: 120px;">본인인증</button>
                </div>
            </form>
            <hr>
            <form class="php-email-form mt-5">
                <div class="form-floating mb-3">
                    <input type="email" class="form-control" id="findIdEmail" placeholder="1">
                    <label for="floatingInput">인증번호를 입력해주세요</label>
                </div>
                <div class="text-end">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#findIdResultModal">아이디 찾기</button>
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
            <h5 class="text-center mt-5 mb-5">spvpt44@naver.com</h5>
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
            <form class="php-email-form mb-5">
                <div class="form-floating mb-3">
                  <input type="text" class="form-control" id="reissuePwName" placeholder="1">
                  <label for="floatingInput">이름을 입력해주세요</label>
                </div>
                <div class="form-floating d-flex">
                  <input type="email" class="form-control" id="reissuePwEmail" placeholder="1">
                  <label for="floatingInput">이메일을 입력해주세요</label>
                  <button class="btn btn-outline-secondary" type="button" id="button-addon2" style="font-size: 15px; width: 120px;">PW재발급</button>
                </div>
            </form>
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
                <form class="php-email-form" id="loginForm">
                    <div class="form-group mt-3 mb-3">
                        <input type="email" class="form-control" id="MEM_EMAIL" name="MEM_EMAIL" placeholder="email" required/>
                    </div>
                    
                    <div class="form-group mb-3">
                        <input type="password" class="form-control" id="MEM_PW" name="MEM_PW" placeholder="password" required/>
                    </div>
                    <div class="form-group mb-3 text-left">
                        <input type="checkbox" value="autoLogin" id="autoLogin">
                        <label class="form-check-label" for="autoLogin">
                          자동로그인
                        </label>
                    </div>
                    <div class="form-group mt-5 mb-5">
                        <button type="button" name="login" class="btn btn-dark" style="width: 300px;">로그인</button>
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
	
	$("button[name='login']").on("click", function(e) {
		e.preventDefault();
		fn_loginForm();
	});
	
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
				alert(data);
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
	
	function fn_findId() { //아이디찾기
		
	       var MEM_NAME = $('#MEM_NAME').val();
	       var MEM_PHONE = $('#MEM_PHONE').val();
	       var findData = {"MEM_NAME" : MEM_NAME, "MEM_PHONE": MEM_PHONE};
	         
	        $.ajax({
	            url:"<c:url value='/findId'/>",
	            type:'post',
	            data:findData,
	            success:function(data) {
	            	if(data != null) {
	            		$(".findIdResultDiv").empty();
	            		$(".findIdResultDiv").append(MEM_NAME+"님의 아이디는 "+data["MEM_EMAIL"]+" 입니다.");
	            		$("#findIdModal").modal("hide");
	            		$("#findIdResultModal").modal("show");
	            	}
	            },
	            error:function() {
	            	$(".findIdResultDiv").empty();
         			$(".findIdResultDiv").append("입력하신 정보와 일치한 회원정보가 없습니다.");
         			$("#findIdModal").modal("hide");
         			$("#findIdResultModal").modal("show");
	            }
	         }); 
	};
		
	function fn_findPw() { //비밀번호찾기
		
	       var MEM_NAME = $('#MEM_NAME2').val();
	       var MEM_EMAIL = $('#MEM_EMAIL').val();
	       var findData = {"MEM_NAME" : MEM_NAME, "MEM_EMAIL": MEM_EMAIL};
	         
	        $.ajax({
	            url:"<c:url value='/findPw'/>",
	            type:'post',
	            data:findData,
	            success:function(data) {
	            	if(data != null) {
	            		$(".findPwResultDiv").empty();
	            		$(".findPwResultDiv").append(MEM_NAME+"님의 비밀번호는 "+data["MEM_PW"]+" 입니다.");
	            		$("#findPwModal").modal("hide");
	            		$("#findPwResultModal").modal("show");
	            	}
	            },
	            error:function() {
	            	$(".findPwResultDiv").empty();
         		$(".findPwResultDiv").append("입력하신 정보와 일치한 회원정보가 없습니다.");
         		$("#findPwModal").modal("hide");
         		$("#findPwResultModal").modal("show");
	            }
	            
	         }); 
	};
});
</script>
</html>