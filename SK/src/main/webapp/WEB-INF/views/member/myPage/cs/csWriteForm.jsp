<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/include-taglib.jspf" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 모달 -->
<div class="modal fade" id="findShop" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content" style="width:600px; height: auto;">
        <div class="modal-header">
          <h1 class="modal-title fs-5" id="exampleModalLabel">매장 찾기</h1>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          <div class="mt-3 ms-3 row-cols-md-1">
            <table style="text-align: center;">
            	<thead>
	                <tr class="mb-0" style="height: 70px;">
	                    <td style="width: 20%;">
	                    <label for="exampleFormControlInput1" class="form-label" style="font-size: large; font-weight: bolder;">매장 선택</label>
	                    </td>
	                    <td>
	                    <input type="text" name="keyword" class="form-control" id="exampleFormControlInput1">
	                    </td>
	                    <td style="width: 25%;">
	                        <button type="button" class="btn btn-primary" data-bs-target="#findShop" name="m_findShop">매장 찾기</button>
	                    </td>
	                </tr>
                </thead>
                <tbody id="stay">
              </tbody>
          </table>
            </div>
            <br>
            <div class="modal-footer">
                <nav aria-label="Page navigation example" style="margin-left: 10%;">
                    <ul class="pagination">
                      <li class="page-item">
                        <a class="page-link" href="#" aria-label="Previous">
                          <span aria-hidden="true">&laquo;</span>
                        </a>
                      </li>
                      <li class="page-item"><a class="page-link" href="#">1</a></li>
                      <li class="page-item"><a class="page-link" href="#">2</a></li>
                      <li class="page-item"><a class="page-link" href="#">3</a></li>
                      <li class="page-item">
                        <a class="page-link" href="#" aria-label="Next">
                          <span aria-hidden="true">&raquo;</span>
                        </a>
                      </li>
                    </ul>
                  </nav>
            </div>
        </div>
        </div>
      </div>
    </div>
    <!-- 모달 끝 -->

        <div class="col-8" style="margin-top: 0px;">
            <h3 style="margin-left: 30px; color: black; font-weight: bolder;">문의 작성</h3>
            <hr style="border: solid 1px rgb(73, 73, 73); width: 100%; ">
            <form class="needs-validation" novalidate method="post">
            <div class="row g-2">
                <table style="width: 99%; margin-left: 10px; text-align: center;">
                  <div class="mt-3" style="width: 45%; margin-left: 30%;">
                    <tr class="mt-3 mb-3">
                        <td style="width: 20%; height: 100px;">
                        <label for="shopValid" class="form-label" style="font-size: large; font-weight: bolder;">매장 선택</label>
                        </td>
                        <td>
                        <input type="text" name="searchbar" class="form-control" id="shopValid" readonly required>
                        </td>
                        <td style="width: 25%;">
                            <button type="button" class="btn btn-secondary" data-bs-toggle="modal" data-bs-target="#findShop" name="findShop">매장 찾기</button>
                             <div class="invalid-feedback">
						        매장 찾기를 이용해주세요.
						     </div>
                        </td>
                    </tr>

                    <tbody class="table-group-divider">

                    <tr>
                        <td style="width: 20%; height: 100px;">
                        <label for="titleValid" class="form-label" style="font-size: large; font-weight: bolder;">제  목</label>
                        </td>
                        <td>
                            <input type="text" name="title" class="form-control" id="titleValid" required>
                            <div class="invalid-feedback">
					        	제목을 입력해주세요.
					      	</div>
                        </td>
                     </tr>

                     <tbody class="table-group-divider" style="width: 50%;">

                    <tr>
                            <td style="width: 20%; height: 100px;">
                            <label for="contentsValid" class="form-label" style="font-size: large; font-weight: bolder;">내  용</label>
                            </td>
                            <td style="width: 40%;">
                                <textarea class="form-control" id="contentsValid" rows="10" name="content" required></textarea>
                                <div class="invalid-feedback">
						        	내용을 입력해주세요.
						      	</div>
                            </td>
                    </tr>
                </table>
                <hr style="margin-left: 30px; border: solid 1px rgb(73, 73, 73); width: 100%; ">
                <button style="margin-left: 78%; width: 25%; align-self: center;" type="submit" class="btn btn-primary" name="register">등 록</button>
              </div>
              </form>
      </div>
      
      
<script type="text/javaScript">
$(document).ready(function() {
	
	$("button[name='findShop']").on("click", function(e) { //매장찾기 버튼을 누르면
		 e.preventDefault();
		 findShop();
	});
	
	$("button[name='m_findShop']").on("click", function(e) { //모달에서 매장찾기 검색버튼을 누르면
		 e.preventDefault();
		 searchShop();
	});
	
	//유효성 검사
	 (() => {
	 	  'use strict'
	   // Fetch all the forms we want to apply custom Bootstrap validation styles to
	   const form = document.querySelector('.needs-validation')
	   // Loop over them and prevent submission
	 $("button[name='register']").on("click", function(e) { //등록 버튼 누르면
	 	 form.classList.add('was-validated')
	 		
	 	if (!form.checkValidity()) {
	         event.preventDefault()
	         event.stopPropagation()
	         return false;
	     }
	 	//입력한 제목과 내용을 각각 변수에 저장
	 	let titleValid = $('#titleValid').val();
	 	let contentsValid = $('#contentsValid').val();
	 	
	 	//제목, 내용 글자 수 읽어와서 글자수 제한 alert창 띄워주기
	 	//제목 최대 133글자 입력 가능 (title 최대 400byte (오라클 기준 한글 1글자당 3byte))
	 	if(titleValid.length > 133){
	 		alert("제목을 최대 133글자로 작성해주세요.")
	 		$('#titleValid').focus()
	 		return false;
	 	}
	 	
	 	//내용 최대 1333글자 입력 가능 (content 최대 4000byte (오라클 기준 한글 1글자당 3byte))
	 	if(contentsValid.length > 1333){
	 		alert("내용을 최대 1333글자로 작성해주세요.")
	 		$('#contentsValid').focus()
	 		return false;
	 	}
	 	fn_register();
	 	});
	 })()
	
	
});
		const findShop = function() { //모든 매장 가져오기
		var keyword = $("input[name='keyword']").val();
		var formData = new FormData();
		formData.append("keyword", keyword);
		
		 $.ajax({
				url:"/sk/myPage/findShopAjax",
				type:'post',
				data:formData,
		        processData:false,
		        contentType:false,
		        dataType:'HTML',
				success:function(data) {
						console.log("검색어 전송 성공 : " + keyword);
						console.log(data);
					
						$("#stay").empty();
						$("#stay").html(data);
				},
			error:function() {
				alert("잠시 후 다시 시도해주세요.");
			}	
		});  
	} 
	
	const searchShop = function() { //매장 검색 시 호출
		var keyword = $("input[name='keyword']").val();
		var formData = new FormData();
	    formData.append("keyword", keyword);
		
	    if(keyword==""){
	         alert("검색어를 입력해주세요.");
	    	return false;  
	    }
	    $.ajax({
			url:"/sk/myPage/findShopAjax",
			type:'post',
			data:formData,
	        processData:false,
	        contentType:false,
	        dataType:'HTML',
			success:function(data) {
					console.log("검색어 전송 성공 : " + keyword);
					console.log(data);
				
					$("#stay").empty();
					$("#stay").html(data);
			},
			error:function() {
				alert("잠시 후 다시 시도해주세요.");
			}	
		}); 
	};
	
	 function selectShop(shopName, shopNum) {
		 $("input[name='searchbar']").val(shopName);
		 $("input[name='searchbar']").attr("data-num", shopNum);
	}
	 
	 function fn_register() {
		var formData = new FormData();
		formData.append("CS_TITLE", $("input[name='title']").val());
		formData.append("CS_CONTENT", $("textarea").val());
		formData.append("CS_SHOP_NUM",$("input[name='searchbar']").attr("data-num"));
	//var title =	$("input[name='title']").val();
	 //	var content = $("#content").val();
	 	if(confirm("작성중인 글을 등록하시겠습니까?")) {
	 		$.ajax({
				url:"/sk/myPage/csWrite",
				type:'post',
				data:formData,
		        processData:false,
		        contentType:false,
				success:function(data) {
						console.log("글 전송 성공 : " + formData);
						alert("글을 등록하였습니다.");
						location.href="/sk/myPage/csList";
				},
				error:function() {
					alert("잠시 후 다시 시도해주세요.");
				}	
			});
	 	} 
	 };
	 
</script>
</body>
</html>