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
                    <label for="BRAND_ID" class="form-label" style="font-size: large; font-weight: bolder;">아이디(이메일)</label>
                    <input class="form-control" type="email" aria-label="Disabled input example" id="BRAND_ID" name="BRAND_ID" value="${brandInfoMap.BRAND_ID}" disabled>
                  </div>

                  <div class="mb-3" style="width: 45%; margin-left: 30%;">
                    <label for="BRAND_PW" class="form-label" style="font-size: large; font-weight: bolder;">비밀번호*</label>
                    <input type="password" class="form-control" id="BRAND_PW" name="BRAND_PW">
                  </div>

                  <div class="mb-3" style="width: 45%; margin-left: 30%;">
                    <label for="BRAND_PW_CHECK" class="form-label" style="font-size: large; font-weight: bolder;">비밀번호 확인*</label>
                    <input type="password" class="form-control" id="BRAND_PW_CHECK" name="BRAND_PW_CHECK">
                  </div>

                  <div class="mb-3" style="width: 45%; margin-left: 30%;">
                    <label for="BRAND_NAME" class="form-label" style="font-size: large; font-weight: bolder;">브랜드명</label>
                    <input class="form-control" type="text" aria-label="Disabled input example" id="BRAND_NAME" name="BRAND_NAME" value="${brandInfoMap.BRAND_NAME}" disabled>
                  </div>

                  <div class="mb-3" style="width: 45%; margin-left: 30%;">
                    <label for="BRAND_BUSINESS_NUM" class="form-label" style="font-size: large; font-weight: bolder;">사업자 등록 번호</label>
                    <input class="form-control" type="text" aria-label="Disabled input example" id="BRAND_BUSINESS_NUM" name="BRAND_BUSINESS_NUM" value="${brandInfoMap.BRAND_BUSINESS_NUM}" disabled>
                  </div>

                  <div class="mb-3" style="width: 45%; margin-left: 30%;">
                    <label for="BRAND_ADD" class="form-label" style="font-size: large; font-weight: bolder;">등록지 주소</label>
                    <input type="text" class="form-control" id="BRAND_ADD" name="BRAND_ADD" value="${brandInfoMap.BRAND_ADD}" >
                </div>             
                
                <div class="mb-3" style="width: 45%; margin-left: 30%;">
                    <table>
                        <label for="exampleFormControlInput1" class="form-label" style="font-size: large; font-weight: bolder;">브랜드 대표 사진</label>
                        <tr>
                        <td style="width: 60%;">
                            <div class="mb-3">
                                <input class="form-control" type="file" id="formFile">
                              </div>
                        </tr>
                    </table>
                </div>  
                
                <div class="mb-3" style="width: 45%; margin-left: 30%;">
                    <label for="BRAND_INFO" class="form-label" style="font-size: large; font-weight: bolder;">브랜드 소개말</label>
                    <textarea class="form-control" id="BRAND_INFO" rows="10">${brandInfoMap.BRAND_INFO}</textarea>
                </div>    

                <hr class="my-4">
                <button class="btn btn-primary btn-lg" name="brandInfoModify" style="margin-left: 30%; width: 45%;" type="submit">회원 정보 수정하기</button>
            </div>
        </div>
      </div>
      
<script type="text/javascript">
$(document).ready(function() {
	$("button[name='brandInfoModify']").on("click", function(e){  // 브랜드 회원정보 수정
		e.preventDefault();
		fn_brandInfoModify();
	});
	
	function fn_brandInfoModify(){
		
		var formData = new FormData();
		
		var brandLogoFile = $("input[name='BRAND_LOGO_FILE']");
		var files = brandLogoFile[0].files;
		
 		var brandPW = $("#BRAND_PW").val();
		var brandAdd = $("#BRAND_ADD").val();
		var	brandInfo = $("#BRAND_INFO").val();
		var brandNum = ${brandInfoMap.BRAND_NUM}; 
		
		formData.append("BRAND_LOGO_FILE", files[0]);
		formData.append("BRAND_PW", brandPW);
		formData.append("BRAND_ADD", brandAdd);
		formData.append("BRAND_INFO", brandInfo);
		formData.append("BRAND_NUM", brandNum);
		
		$.ajax({
			type : 'post',
			url : '/sk/brandPage/accountModify',
			data : formData,
			processData : false,
			contentType : false,
			enctype : 'multipart/form-data',
			success : function(data){
				if(data.updateResult == "pass"){
					alert("브랜드 정보가 정상적으로 수정되었습니다.");
					location.href='/sk/brandPage';
				} else if(data.updateResult == "fail") {
					alert("브랜드 정보가 수정되지 못했습니다.");
				}
			},
			error : function(){
				alert("오류 발생");
			}
			
		});
	}
	
	
});


</script>
</body>
</html>