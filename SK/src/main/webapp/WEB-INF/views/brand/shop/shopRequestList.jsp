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
 <div class="col-ms-7 col-lg-8" style="margin-top: 0px;">
            <h3 style="margin-left: 30px; color: black; font-weight: bolder;">입점 가입 승인</h3>

              <table class="table" style="width: 100%; margin-left: 30px;">
                
                <tbody class="table-group-divider">
                 
                 <c:choose>
                  	<c:when test="${fn:length(shopRequestList) > 0 }">
						<c:forEach items="${shopRequestList}" var="shop">   
		                  <tr id="joinBtnTr_${shop.SHOP_NUM}">
		                    <th scope="rowspan-3" style="width: 25%; text-align: center;">
		                        <h5 style="margin-top: 18%;">${shop.SHOP_NAME}</h5>
		                    </th>
		                    <td style="text-align: left;margin-bottom: 1; width: 200px;">
		                        <p style="font-weight: bolder;">전화번호</p>
		                        <p style="font-weight: bolder;">주소</p>
		                        <p style="font-weight: bolder;">영업시간</p>
		                    </td>
		                    <td style="text-align: left;">
		                        <p style="font-size: medium;">${shop.SHOP_TEL}</p>
		                        <p style="font-size: medium;">${shop.SHOP_ADD}</p>
		                        <p style="font-size: medium;">${shop.SHOP_START_TIME} ~ ${shop.SHOP_END_TIME}</p>
		                    </td>
		
		                    <td style="font-weight: bolder; text-align: center; width: 300px;;">
		                            <button type="button" style="margin-top: 15%;" class="btn btn-primary" name="shopJoinApprove" data-shopNum1="${shop.SHOP_NUM}">승인</button>
		                            <button type="button" style="margin-top: 15%;" class="btn btn-secondary" name="shopJoinReject" data-shopNum2="${shop.SHOP_NUM}">거부</button>
		                    </td>
		                  </tr>
	                  	</c:forEach>
	                 </c:when>
	               </c:choose>

                  
                </tbody>
              </table>

              <nav aria-label="Page navigation example" style="margin-left: 50%;">
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
            
<script type="text/javascript">
$(document).ready(function() {
	$("button[name='shopJoinApprove']").on("click", function(e){  // 입점 요청 매장 승인하기
		e.preventDefault();
		const shopNum1 = $(this).attr("data-shopNum1");
		
		fn_shopJoinApprove(shopNum1);
	});
	
	$("button[name='shopJoinReject']").on("click", function(e){  // 입점 요청 매장 거부하기
		e.preventDefault();
		const shopNum2 = $(this).attr("data-shopNum2");
		
		fn_shopJoinReject(shopNum2);
	});
	
	
	function fn_shopJoinApprove(shopNum1){
		
		var formData = new FormData();
		formData.append("SHOP_NUM", shopNum1);
		
		$.ajax({
			type : 'post',
			url : '/sk/brandPage/shopJoinApprove',
			data : formData,
			processData : false,
			contentType : false,
			success : function(data){
				 if(data.result == "pass"){
					alert("해당 매장의 입점 요청을 승인하였습니다.");
					
					$("#joinBtnTr_"+shopNum1).remove();
				 }else if(data.result == "fail") {
					 alert("해당 매장의 입점 요청을 승인하지 못했습니다.");
				 }
			},
			error : function(){
				alert("오류 발생");
			}
			
		});
		
	}
	
	function fn_shopJoinReject(shopNum2){
			
		var formData = new FormData();
		formData.append("SHOP_NUM", shopNum2);
		
		$.ajax({
			type : 'post',
			url : '/sk/brandPage/shopJoinReject',
			data : formData,
			processData : false,
			contentType : false,
			success : function(data){
				 if(data.result == "pass"){
					alert("해당 매장의 입점 요청을 거부하였습니다.");
					$("#joinBtnTr_"+shopNum2).remove();
					
				 }else if(data.result == "fail") {
					 alert("해당 매장의 입점 요청을 거부하지 못했습니다.");
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