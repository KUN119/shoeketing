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
                <h5><a href="#" name="brandInfoModify" data-brandNum="2">기본 정보 수정</a></h5> <!-- 추후 data-brandNum 세션에서 꺼낸 BRAND_NUM 값으로 전송 -->
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
                </div>
            </li>
          </ul>
        </div>

        <div class="col-ms-7 col-lg-8" style="margin-top: 0px;">
            <h3 style="margin-left: 30px; color: black; font-weight: bolder;">브랜드 회원 마이페이지</h3>

			  <!-- 추후 data-brandNum 세션에서 꺼낸 BRAND_NUM 값으로 전송 -->
              <h4 style="margin-left: 30px; margin-top: 60px; color: black; font-weight: bolder; text-align: center;"><a href="#" name="brandInfoModify" data-brandNum="2">기본 정보 수정</a></h4> 

              <h4 style="margin-left: 30px; margin-top: 70px; color: black; font-weight: bolder; text-align: center;"><a href="">상품 관리</a></h4>

              <h4 style="margin-left: 30px; margin-top: 70px; color: black; font-weight: bolder; text-align: center;"><a href="">매장 관리</a></h4>
            </div>
        </div>

<script type="text/javascript">
$(document).ready(function() {
	$("a[name='brandInfoModify']").on("click", function(e) {  // 브랜드 기본정보 수정
		e.preventDefault();
	
		const brandNum = $(this).attr("data-brandNum");
		location.href="/sk/brandPage/accountModifyForm?BRAND_NUM=" + brandNum;
		
		//fn_brandInfoModify(brandNum);
	});
	
	/* //ajax로 왜 안될까... url 요청은 잘 가는데 Controller에서 ModelAndView 동작이 안된당,, 나중에 방법 찾기,, 
	function fn_brandInfoModify(brandNum){
		
		var brandNum1 = brandNum;
		
		var params = {
				"BRAND_NUM" : brandNum1
		}
		
		$.ajax({
			type : 'post',
			url : '/sk/brandPage/accountModifyForm',
			data : JSON.stringify(params),
			contentType : "application/json; charset=utf-8",
			 success : function(data){
				 console.log(data);
			},
			error : function(){
				alert("오류 발생");
			}
			
		});
	}  */
});

</script>

</body>
</html>