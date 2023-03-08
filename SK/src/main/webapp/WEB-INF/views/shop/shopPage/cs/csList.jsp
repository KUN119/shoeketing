<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/include-taglib.jspf" %>

    <div class="col-8" style="margin-top: 0px;">
            <h3 style="margin-left: 30px; color: black; font-weight: bolder;">매장 문의</h3>
            <hr style="border: solid 1px rgb(73, 73, 73); width: 100%; ">
            <table class="table table table-bordered" style="text-align: center;">
                <thead>
                  <tr style="width: 25%;">
                    <th>작성자</th>
                    <th>제목</th>
                    <th>작성 날짜</th>
                    <th>처리 상태</th>
                  </tr>
                </thead>
                <tbody>
             	   <c:choose>
						<c:when test="${fn:length(shopCSList) > 0 }">
							<c:forEach items="${shopCSList}" var="shopCS" varStatus="status">
			                  <tr>
			                    <td style="width: 25%;">${shopCS.MEM_EMAIL}</td>
			                    <td style="width: 45%;"><a href="#" name="shopCSDetail" id="shopCSDetail" data-csNum="${shopCS.CS_NUM}" data-csWriter="${shopCS.CS_WRITER}">${shopCS.CS_TITLE}</a></td>
			                    <td style="width: 15%;">${shopCS.CS_DATE}</td>
			                    <td style="width: 25%;" id="csReplyStatus_${shopCS.CS_NUM}">${csReplyStatusList[status.index].csReplyStatus}</td>
			                  </tr>
			                </c:forEach>
						</c:when>
					</c:choose>
                  
                </tbody>
              </table>

              <nav aria-label="Page navigation example" style="margin-left: 40%;">
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
      
      <!-- CS_TITLE 클릭 시 ajax 동작할 부분 -->
      <div id="csDetailBody">
     
      </div>
    
<script>
$(document).ready(function(){
	$("a[name='shopCSDetail']").on("click", function(e){   // 매장 문의 상세보기
		e.preventDefault();
		const csNum = $(this).attr("data-csNum");
		const csWriter = $(this).attr("data-csWriter");
		
		fn_shopCSDetail(csNum, csWriter);
		
	});
	
	function fn_shopCSDetail(csNum, csWriter){
		var formData = new FormData();
		
		formData.append("CS_NUM", csNum);
		formData.append("MEM_NUM", csWriter);
		
		$.ajax({
			type : 'post',
			url : '/sk/shopPage/csDetail_ajax',
			data : formData,
			processData : false,
			contentType : false,
			success : function(data){
				$("#csDetailBody").empty();
				$('#csDetailBody')[0].innerHTML = data;
				$("#csDetail").modal('show');
			},
			error : function(xhr, status, error){
				console.log('실패');
			}
		});
	};
	/* $("button[name='shopCSReplyWrite']").on("click", function(e){ */
	$("#csDetailBody").on("click", "#shopCSReplyWrite", function(e){  // 매장 문의 답변 작성하기
		e.preventDefault();
	
		const csReplyNum = $(this).attr("data-csNum");
		const csWriter = $(this).attr("data-csWriter");
		alert(csWriter);
		
		fn_shopCSReplyWrite(csReplyNum, csWriter);
		
	});
	
	function fn_shopCSReplyWrite(csReplyNum, csWriter){
		var formData2 = new FormData();
		
		var csReplyContent = $("#CS_REPLY_CONTENT").val();
		
		formData2.append("CS_REPLY_NUM", csReplyNum);
		formData2.append("CS_REPLY_CONTENT", csReplyContent);
		formData2.append("MEM_NUM", csWriter);
		
		$.ajax({
			type : 'post',
			url : '/sk/shopPage/csReplyWrite',
			data : formData2,
			processData : false,
			contentType : false,
			success : function(data){
				if(data.result == "pass"){
					alert("답변 작성이 완료되었습니다.");
					
					$("#csWrite").modal('hide');  // 답변 작성 후 모달창 숨기기
					$("#csReplyStatus_"+csReplyNum).empty();
					$("#csReplyStatus_"+csReplyNum).append("답변 완료");
				}else if(data.result == "fail"){
					alert("답변 작성이 실패했습니다.");
				}
			},
			error : function(xhr, status, error){
				console.log('실패');
			}
		});
	};
});


</script>    
    