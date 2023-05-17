<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container" style="width: 600px">
	
      <div class="box-shadow-full" style="margin-top: 100px">
        <form id="brandJoinForm" class="needs-validation" novalidate action="/sk/brandJoin/joinSuccess" method="post" enctype="multipart/form-data">
          <div class="row mb-4 text-center">
            <h1>SHOEKETING</h1>
            <h6>(브랜드회원)</h6>
          </div>
          <div class="row">
            <div class="mb-3">
              <label
                for="BRAND_ID"
                class="form-label"
                style="font-size: large; font-weight: bolder"
                >아이디</label
              >
              <input
                class="form-control"
                type="text"
                id="BRAND_ID"
                name="BRAND_ID"
                required
              />
              <div id="id-null" class="invalid-feedback">
		      	아이디를 입력해주세요
		  	  </div>
            </div>

            <div class="mb-3">
              <label
                for="BRAND_PW"
                class="form-label"
                style="font-size: large; font-weight: bolder"
                >비밀번호*</label
              >
              <input
                type="password"
                class="form-control"
                id="BRAND_PW"
                name="BRAND_PW"
                pattern="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,16}$"
              	placeholder="특수문자, 문자, 숫자 포함 형태의 8~16자리 이내"
                required
              />
              <div id="pw-null" class="invalid-feedback">
		        비밀번호를 입력해주세요
		  	  </div>
		  	  <div id="pw-type" class="invalid-feedback">
		        비밀번호 형식이 올바르지 않습니다
		  	  </div>
            </div>

            <div class="mb-3">
              <label
                for="BRAND_PW2"
                class="form-label"
                style="font-size: large; font-weight: bolder"
                >비밀번호 확인*</label
              >
              <input
                type="password"
                class="form-control"
                id="BRAND_PW2"
                name="BRAND_PW2"
                pattern="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,16}$"
                required
              />
              <div id="pw2-null" class="invalid-feedback">
		        비밀번호 확인이 필요합니다
		  	  </div>
              <div id="pw2-same" class="invalid-feedback">
		        비밀번호가 일치하지 않습니다
		  	  </div> 
            </div>

            <div class="mb-3">
              <label
                for="BRAND_NAME"
                class="form-label"
                style="font-size: large; font-weight: bolder"
                >브랜드명</label
              >
              <input
                class="form-control"
                type="text"
                id="BRAND_NAME"
                name="BRAND_NAME"
                required
              />
              <div class="invalid-feedback">
		        브랜드명을 입력해주세요
		  	  </div>
            </div>

            <div class="mb-3">
              <label
                for="BRAND_BUSINESS_NUM"
                class="form-label"
                style="font-size: large; font-weight: bolder"
                >사업자 등록번호</label
              >
              <div class="d-flex">
                <input
                  class="form-control"
                  type="text"
                  id="BRAND_BUSINESS_NUM"
                  name="BRAND_BUSINESS_NUM"
                  pattern="^[0-9]{3}[0-9]{2}[0-9]{5}$"
                  placeholder="사업자 등록번호 입력"
                  required
                />
                <button
                  id="button-addon2"
                  class="btn btn-outline-primary"
                  type="button"
                  name="businessNo"
                  style="font-size: 12px; width: 200px"
                >
                  사업자 등록번호 확인
                </button>
              </div>
              <div id="business-null" class="invalid-feedback">
		      		사업자 등록번호를 입력해주세요.
		  	  </div>
		  	  <div id="business-type" class="invalid-feedback">
		      		사업자 등록번호 형식이 올바르지 않습니다.
		  	  </div>
		  	  <div id="business-auth" class="invalid-feedback">
		      		사업자 등록번호 확인이 필요합니다.
		  	  </div>
		  	  <div id="business-fail" class="invalid-feedback">
		      		사업자 등록번호를 다시 확인해주세요.
		  	  </div>
		  	  <div id="business-success" class="valid-feedback">
		      		사업자 등록번호 확인이 완료되었습니다.
		  	  </div>
            </div>
            
            <div class="mb-3">
              <label
                for="BRAND_ADD"
                class="form-label"
                style="font-size: large; font-weight: bolder"
                >등록지 주소</label
              >
              <div class="d-flex">
	              <input
	                class="form-control"
	                type="text"
	                id="BRAND_ADD"
	                name="BRAND_ADD"
	                required
	                readonly
	              />
	              <button type="button" class="btn btn-outline-primary" style="width:8rem;" onclick="sample6_execDaumPostcode()">주소찾기</button>
              </div>
              <div id="add1-null" class="invalid-feedback">
		        	등록지 주소를 입력해주세요.
		  	  </div>
              <input
	                class="form-control mt-2"
	                type="text"
	                id="BRAND_ADD2"
	                name="BRAND_ADD2"
	                placeholder="나머지 주소를 입력해주세요."
	                required
	              />
		  	  <div id="add2-null" class="invalid-feedback">
		        	나머지 주소를 입력해주세요.
		  	  </div>
            </div>

            <div class="mb-3">
              <label
                for="BRAND_LOGO_FILE"
                class="form-label"
                style="font-size: large; font-weight: bolder"
                >브랜드 로고 파일</label
              >
              <input class="form-control" type="file" id="joinImgUpload" name="BRAND_LOGO_FILE" required>
              <div id="file-null" class="invalid-feedback">
		        	브랜드 로고 파일을 선택해주세요.
		  	  </div>
            </div>
            
            <div class="row">
		      	<div class="col-auto">
		      		<div id="map" style="width: 480px; height: 500px"></div>
		      	</div>
		    </div>
          </div>

          <hr class="my-4" />
          <button
            class="btn btn-primary btn-lg"
            style="margin-left: 30%; width: 45%"
            type="submit"
            id="brandJoin"
          name="brandJoin"
          >
            가입하기
          </button>
        </form>
      </div>
    </div>
</body>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=08e2c5126e1c7f5ac14b68c3f37365ad&libraries=services,clusterer,drawing"></script>

<script
    type="text/javascript"
    src="//dapi.kakao.com/v2/maps/sdk.js?appkey=08e2c5126e1c7f5ac14b68c3f37365ad"
  ></script>
<script type="text/javascript">

function sample6_execDaumPostcode() {
	const brandName = $("#BRAND_NAME").val();
	if(brandName == null || brandName == "") {
		alert("브랜드이름을 먼저 입력해주세요");
		return false;
	}
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수
            
            const mapContainer = document.getElementById("map"), // 지도를 표시할 div
            mapOption = {
              center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
              level: 3, // 지도의 확대 레벨
            };

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById("BRAND_ADD").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("BRAND_ADD").focus();
            
            const address = $("#BRAND_ADD").val();

            // 지도를 생성합니다
            const map = new kakao.maps.Map(mapContainer, mapOption);

            // 주소-좌표 변환 객체를 생성합니다
            const geocoder = new kakao.maps.services.Geocoder();

            // 주소로 좌표를 검색합니다
            geocoder.addressSearch(
              address,
              function (result, status) {
                // 정상적으로 검색이 완료됐으면
                if (status === kakao.maps.services.Status.OK) {
                  var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

                  // 결과값으로 받은 위치를 마커로 표시합니다
                  var marker = new kakao.maps.Marker({
                    map: map,
                    position: coords,
                  });

                  // 인포윈도우로 장소에 대한 설명을 표시합니다
                  var infowindow = new kakao.maps.InfoWindow({
                		  content:
                              '<div style="width:150px; box-shadow: 2px 2px 2px 2px gray; text-align:center;padding:6px 0;">'+ brandName +'</div>',
                  });
                  infowindow.open(map, marker);

                  // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
                  map.setCenter(coords);
                }
              }
            );
        }
    }).open();
}

//https://www.data.go.kr/iim/api/selectAPIAcountView.do#/
$(document).ready(function() {
	$("button[name='businessNo']").on("click", function(e) {
		e.preventDefault();
		fn_businessNo();
	});
	
	function fn_businessNo() {
		let businessNum = $("#BRAND_BUSINESS_NUM").val();
		let businessNumCheck = /^[0-9]{3}[0-9]{2}[0-9]{5}$/;
		
		if(businessNum == null || $.trim(businessNum) == "") {
		  	  $("#business-null").show();
				  $("#business-type").hide();
				  $("#business-auth").hide();
				  $("#business-fail").hide();
			      $("#BRAND_BUSINESS_NUM").focus();
		} else if(!businessNumCheck.test(businessNum)) {
			$("#business-null").hide();
			  $("#business-type").show();
			  $("#business-auth").hide();
			  $("#business-fail").hide();
		      $("#BRAND_BUSINESS_NUM").focus();
		} else {
			var data = {
					"b_no" : [ $('#BRAND_BUSINESS_NUM').val() ]
				// 사업자번호 조회 "b_no" : []의 의미가 뭘까?
				};  
				
				$.ajax({
						url : "https://api.odcloud.kr/api/nts-businessman/v1/status?serviceKey=oQxZdiXR8K8U%2BsFvOZJxW8bP%2FIs0tqBThPnNxNt0FJrjgOZXM537iVGIyUfCPX86eghuF4HLzRaQ7t4I5gfiPQ%3D%3D", // serviceKey 값을 xxxxxx에 입력
						type : "POST",
						data : JSON.stringify(data), // json 을 string으로 변환하여 전송
						dataType : "JSON",
						contentType : "application/json",
						accept : "application/json",
						success : function(result) {
							var success = result.data[0].b_stt_cd;
							if(success == '01') {
								$("#BRAND_BUSINESS_NUM").removeClass('is-invalid');
								$("#BRAND_BUSINESS_NUM").addClass('is-valid');
								$("#business-null").hide();
								  $("#business-type").hide();
								  $("#business-auth").hide();
								  $("#business-fail").hide();
								  $("#business-success").show();
								  $("#BRAND_BUSINESS_NUM").attr('readonly', true);
								  $("#button-addon2").attr('disabled', true);
							} else{
								$("#business-null").hide();
								  $("#business-type").hide();
								  $("#business-auth").hide();
								  $("#business-fail").show();
							      $("#BRAND_BUSINESS_NUM").focus();
							}
						},
						error : function(result) {
							console.log(result.responseText); //responseText의 에러메세지 확인
						}
				});
		}
		
	}
	
	
});

(() => {
	  'use strict'

	  // Fetch all the forms we want to apply custom Bootstrap validation styles to
	  const forms = document.querySelectorAll('.needs-validation');

//Loop over them and prevent submission
Array.from(forms).forEach((form) => {
form.addEventListener('submit', (event) => {
var pass = true;

if (!form.checkValidity() || $("#BRAND_ADD").val() == null || $("#BRAND_ADD").val() == '') {
    event.preventDefault();
    event.stopPropagation();
    pass = false;
}

form.classList.add('was-validated');

//비밀번호
 	let pwdval = $('#BRAND_PW').val()
    let pwdokval = $('#BRAND_PW2').val()
    let pwdcheck = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,16}$/;
    
    if(pwdval == null || $.trim(pwdval) == "") {
  	  $("#pw-null").show();
		  $("#pw-type").hide();
	      $("#BRAND_PW").focus();
	      pass= false;
    } else if(!pwdcheck.test(pwdval)) {
  	  $("#pw-null").hide();
		  $("#pw-type").show();
	      $("#BRAND_PW").focus();
	      pass= false;
    } else {
  	  $("#pw-null").hide();
		  $("#pw-type").hide();
    }
    
    if(pwdokval == null || $.trim(pwdokval) == "") {
  	  $("#pw2-null").show();
		  $("#pw2-same").hide();
	      $("#BRAND_PW2").focus();
	      pass= false;
    } else if(pwdval!==pwdokval) {
  	  $("#pw2-null").hide();
		  $("#pw2-same").show();
	      $("#BRAND_PW2").focus();
	      pass= false;
    } else {
  	  $("#pw2-null").hide();
		  $("#pw2-same").hide();
    }
    
    if(!$("#BRAND_BUSINESS_NUM").attr("readonly")) {
    	  $("#business-null").hide();
		  $("#business-type").hide();
		  $("#business-auth").show();
		  $("#business-fail").hide();
	      pass= false;
    }
    
    let brandAdd = $("#BRAND_ADD").val();
    let brandAdd2 = $("#BRAND_ADD2").val();
    if (brandAdd == null || $.trim(brandAdd) == "") {
  	    $("#BRAND_ADD").addClass('is-invalid');
      	$("#add1-null").show();
        	pass = false;
    } else {
  	    $("#BRAND_ADD").addClass('is-valid');
  	    $("#BRAND_ADD").removeClass('is-invalid');
  	    $("#add1-null").hide();
    }
    
    if (brandAdd2 == null || $.trim(brandAdd2) == "") {
  	    $("#BRAND_ADD2").addClass('is-invalid');
      	$("#add2-null").show();
        	pass = false;
    } else {
  	    $("#BRAND_ADD2").addClass('is-valid');
  	    $("#BRAND_ADD2").removeClass('is-invalid');
  	    $("#add2-null").hide();
    }
    
    if(pass) {
    	var formData = new FormData(document.getElementById("brandJoinForm"));
		var fileInput = document.getElementById("joinImgUpload"); //id로 파일 태그를 호출
        var files = fileInput.files; //업로드한 파일들의 정보를 넣는다.
        
        for (var i = 1; i < files.length; i++) {
            formData.append('file-'+i, files[i]); //업로드한 파일을 하나하나 읽어서 FormData 안에 넣는다.
        }
        
        $.ajax({
            url: "/brandJoin/joinSuccess",
            data: formData,
            processData: false,
            contentType: false,
            type: 'POST',
            enctype:'multipart/form-data',
            success: function(result){
            	alert('성공');
            	/* location.href = '/sk/main'; */
          }
      });
    }

});
});
})()
	
</script>
</html>