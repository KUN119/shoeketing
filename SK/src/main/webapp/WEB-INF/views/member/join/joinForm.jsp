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

<form id="memberJoinForm" class="needs-validation" novalidate>

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
	              pattern="^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$"
	              required
	            />
	            
	            <button class="btn btn-outline-secondary" name="idCheck" type="button" id="button-addon2" style="font-size: 15px; width: 100px;">중복확인</button>
           
            </div>
              <div id="email-null" class="invalid-feedback">
		      이메일을 입력해주세요
		  	</div>
            <div id="email-type" class="invalid-feedback">
		      이메일 형식을 확인해주세요
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
              type="password"
              class="form-control"
              id="MEM_PW"
              name="MEM_PW"
              pattern="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,16}$"
              placeholder="특수문자, 문자, 숫자 포함 형태의 8~16자리 이내"
              required
            />
            <!-- <div id="pw-null" class="invalid-feedback">
		      비밀번호를 입력해주세요
		  	</div>
		  	<div id="pw-type" class="invalid-feedback">
		      비밀번호 형식이 올바르지 않습니다
		  	</div> -->
          </div>

          <div class="mb-3">
            <label
              for="MEM_PW2"
              class="form-label"
              style="font-size: large; font-weight: bolder"
              >비밀번호 확인*</label
            >
            <input
              type="password"
              class="form-control"
              id="MEM_PW2"
              name="MEM_PW2"
              pattern="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,16}$"
              required
            />
            <!-- <div id="pw2-null" class="invalid-feedback">
		      비밀번호 확인이 필요합니다
		  	</div>
            <div id="pw2-same" class="invalid-feedback">
		      비밀번호가 일치하지 않습니다
		  	</div> -->
           
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
              value=""
              required
            />
            <div class="invalid-feedback">
		      이름을 입력해주세요
		  	</div>
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
	              id="phone"
	              name="phone"
	              placeholder="휴대전화 입력"
	              required
	            />
	            <button class="btn btn-outline-secondary" name="phoneCheck" type="button" id="button-addon2" style="font-size: 15px; width: 100px;">인증번호 보내기</button>
            </div>
            
            <!-- <div class="d-flex">
	            <input
	              class="form-control"
	              type="text"
	              id="phone2"
	              name="phone2"
	              placeholder="인증번호 입력"
	              disabled
	              required
	            />
	            <button class="btn btn-outline-secondary" name="phoneCheck2" type="button" id="button-addon2" style="font-size: 15px; width: 100px;">본인 인증</button>
            </div>
            <div class="point successPhoneChk">휴대폰 번호 입력후 인증번호 보내기를 해주십시오.</div>
            <input
            	type="hidden"
            	id="phoneDoubleCheck"
            	/> -->
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
          id="userJoin"
          name="userJoin"
        >
          가입하기
        </button>
      </div>
      </form>
    </div>
    
     <script type="text/javascript">

     
     // 회원가입
		$(document).ready(function() {
			  $("button[name='userJoin']").on("click", function(e) {  
			    e.preventDefault();
			    fn_userJoin();
			  });
			  
			  function fn_userJoin() {
			    var memEmail = $('#MEM_EMAIL').val();
			    var memPw = $('#MEM_PW').val();
			    var memName = $('#MEM_NAME').val();
			    var memPhone = $('#MEM_PHONE').val();

			    var formData = new FormData();
			    formData.append("MEM_EMAIL", memEmail);
			    formData.append("MEM_PW", memPw);
			    formData.append("MEM_NAME", memName);
			    formData.append("MEM_PHONE", memPhone);

			    $.ajax({
			      url:'/sk/memberJoin/joinSuccess',
			      type:'POST',
			      data:formData,
			      processData:false,
			      contentType:false,
			      success:function(data) {
			        if(data === 'fail'){
			          alert("회원가입 실패");
			        } else if (data === 'success'){
			          alert("회원가입 성공");
			        }
			      },
			      error:function() {
			        alert("에러입니다.");
			      }
			    });
			  }
			});
    
		
     //이메일 중복확인
     $(document).ready(function() {
    	
    	$("button[name='idCheck']").on("click", function(e) { // 이메일아이디 중복확인
    		e.preventDefault();
    		fn_idCheck();
    	});

    		 	//alert가 fail까지 표시되어 두번 뜸
    	function fn_idCheck() { //함수를 ajax 형식으로 수정 필요
    		      
    	var MEM_EMAIL = $('#MEM_EMAIL').val();
    	alert(MEM_EMAIL);
    		         
    		$.ajax({
    			  url:'/sk/memberJoin/emailCheck?MEM_EMAIL=' + MEM_EMAIL,
    			  type:'get',
    			  success:function(data) {
    			       if(data == 'fail') {
    			            alert("아이디가 중복되었습니다.")
    			       } else if(data == 'success') {
    			            alert("success")
    			       }
    			  },
    			  error:function() {
    			        alert("에러입니다.");
    			  }
    		});
    	};
    });
    
   //휴대폰 번호 인증
   
    /* var code2 = "";
    $("#phoneCheck").click(function(){
    	alert("인증번호 발송이 완료되었습니다.\n휴대폰에서 인증번호 확인을 해주십시오.");
    	var phone = $("#MEM_PHONE").val();
    	$.ajax({
            type:"GET",
            url:"/sk//memberJoin/phoneAuth?phone=" + MEM_PHONE,
            cache : false,
            success:function(data){
            	if(data == "error"){
            		alert("휴대폰 번호가 올바르지 않습니다.")
    				$(".successPhoneChk").text("유효한 번호를 입력해주세요.");
    				$(".successPhoneChk").css("color","red");
    				$("#MEM_PHONE").attr("autofocus",true);
            	}else{	        		
            		$("#MEM_PHONE2").attr("disabled",false);
            		$("#phoneChk2").css("display","inline-block");
            		$(".successPhoneChk").text("인증번호를 입력한 뒤 본인인증을 눌러주십시오.");
            		$(".successPhoneChk").css("color","green");
            		$("#MEM_PHONE2").attr("readonly",true);
            		code2 = data;
            	}
            }
        });
    });  
    
  //유효성검증
	(() => {
		  'use strict'

		  // Fetch all the forms we want to apply custom Bootstrap validation styles to
		  const forms = document.querySelectorAll('.needs-validation')

		  // Loop over them and prevent submission
		  Array.from(forms).forEach(form => {
		    form.addEventListener('submit', event => {
		    	
		    	var pass = true;
		    	
		      if (!form.checkValidity()) {
		        event.preventDefault();
		        event.stopPropagation();
		        pass = false;
		      }
		      
		      form.classList.add('was-validated')
		      
		      
		      
		      let pwdval = $('#MEM_PW').val()
		      let pwdokval = $('#MEM_PW2').val()
		      let pwdcheck = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,16}$/;
		      
		      if(pwdval == null || $.trim(pwdval) == "") {
		    	  $("#pw-null").show();
				  $("#pw-type").hide();
			      $("#MEM_PW").focus();
		      } else if(!pwdcheck.test(pwdval)) {
		    	  $("#pw-null").hide();
				  $("#pw-type").show();
			      $("#MEM_PW").focus();
		      } else {
		    	  $("#pw-null").hide();
				  $("#pw-type").hide();
		      }
		      
		      if(pwdokval == null || $.trim(pwdokval) == "") {
		    	  $("#pw2-null").show();
				  $("#pw2-same").hide();
			      $("#MEM_PW2").focus();
		      } else if(pwdval!==pwdokval) {
		    	  $("#pw2-null").hide();
				  $("#pw2-same").show();
			      $("#MEM_PW2").focus();
		      }
		      
		      
		      
		   //  회원이름 전송
			   function fn_sendMemName(){
			      var comSubmit = new ComSubmit();
			      var memName = $('#MEM_NAME').val();
			 
			      comSubmit.setUrl("/sk/memberJoinForm");  
			      comSubmit.addParam("MEM_NAME", memName);
			      comSubmit.submit();
			   }
		   
			// 회원가입 가능한지 여부 확인 및 회원가입 폼 데이터 넘겨주기
			  	function fn_checkMember() {
			  		var memEmail = $('#MEM_EMAIL').val();
			  		var memPw = $('#MEM_PW').val();
			  		var memName = $('#MEM_NAME').val();
			  		var memPhone = $('#MEM_PHONE').val();
			  	
			  	var formData = new FormData();
			          formData.append("MEM_EMAIL", memEmail);
			          formData.append("MEM_PW", memPw);
			          formData.append("MEM_NAME", memName);
			          formData.append("MEM_PHONE", memPhone);
			   
			          $.ajax({ 
			              url:"/sk/joinAvailable",
			              type:"post",
			              data:formData,
			              processData:false,
			              contentType:false,
			              success:function(data){
			                 console.log("탈퇴이력 조회 성공");
			                 
			                 // 회원 탈퇴한지 7일 지나지 않았을 경우 경고창 띄우기
			                 if(data == 'fail') {
			                       alert("탈퇴 후 재가입은 7일 후에 가능합니다.");
			                    } else if(data == 'success') {  // 회원 탈퇴한지 7일 지났을 경우 joinSuccess로 이동
			                  	  fn_sendMemName();
			                    }
			                 },
			  	            error:function() {
			  	               alert("에러입니다.");
			  	            }
			  	  	 });
			  	   }
				}, false)
			  })
	})() */
    </script> 
    
    
</body>

</html>