<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> --%>
<%@ include file="/WEB-INF/views/include/include-taglib.jspf" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <!-- 모달 -->
<div class="modal fade" id="csDetail" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content" style="width:600px; height: auto;">
        <div class="modal-header">
          <h1 class="modal-title fs-5" id="exampleModalLabel">매장 문의 상세 정보</h1>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          <div class="mt-4 ms-3 row-cols-md-1">
            <table>
            <tr>
                <p style="font-weight: bolder; font-size: medium; margin-bottom: 0;" class="d_title" id="d_title"></p>
            </tr>
  
            <tr style="height: 70px;">
                <hr style="border: solid 1px rgb(73, 73, 73); width: 100%; ">
            </tr>
            <tr style="height: 70px;">
                <p style="font-size: medium; margin-bottom: 0;" class="d_content" id="d_content"></p>
            </tr>  
            <tr>
                <hr style="border: solid 1px rgb(73, 73, 73); width: 100%; ">
            </tr>
            
            &nbsp;
            <tr>
                <p style="font-weight: bolder; font-size: medium; margin-bottom: 0;">문의 답변</p>
            </tr>
            <tr style="height: 70px;">
                <hr style="border: solid 1px rgb(73, 73, 73); width: 100%; ">
            </tr>
            <tr style="height: 70px;">
                <p style="font-size: medium; margin-bottom: 0;" class="d_reply" id="d_reply"></p>
            </tr>  
          </table>
            </div>
            <br>
            <div class="modal-footer">
              <button type="button" class="btn btn-danger" name="delete">삭제</button>
            </div>
        </div>
        </div>
      </div>
    </div>
    <!-- 모달 끝 -->

        <div class="col-10" style="margin-top: 0px;">
            <h3 style="margin-left: 30px; color: black; font-weight: bolder;">나의 문의 내역</h3>
            <hr style="border: solid 1px rgb(73, 73, 73); width: 100%; ">
            <table class="table table table-bordered" style="text-align: center;">
                <!-- <thead>
                  <tr style="width: 30%;">
                    <th>제목</th>
                    <th>작성 날짜</th>
                    <th>처리 상태</th>
                  </tr>
                </thead>
                <tbody> -->
                	<c:choose>
                		<c:when test="${fn:length(CSList)>0}">
			                <thead>
			                  <tr style="width: 30%;">
			                    <th>제목</th>
			                    <th>작성 날짜</th>
			                    <th>처리 상태</th>
			                  </tr>
			                </thead>
			                <tbody>
	                		<c:forEach var="CS" items="${CSList}" varStatus="status">
			                  <tr>
			                    <td style="width: 40%;"><a href="#" data-bs-toggle="modal" data-bs-target="#csDetail" name="title" data-num="${CS.CS_NUM}">${CS.CS_TITLE}</a></td>
			                    <td style="width: 30%;">${CS.CS_DATE}</td>
			                    <c:choose>
			                    	<c:when test="${fn:length(replyList[status.index])>0}">
			                    	 <td style="width: 30%;">답변 완료</td>
			                    	</c:when>
			                    	<c:otherwise>
			                    	 <td style="width: 30%;">답변 대기</td>
			                    	</c:otherwise>
			             		</c:choose>
			                  </tr>
	                  		</c:forEach>
                		</c:when>
                		<c:otherwise>
                			<div class="col" style="margin:auto;">
                				<h6 class="text-center" style="margin-left: 30px; color: black; font-weight: bolder;"
                				>등록된 글이 없습니다.</h6>
                			</div>
                		</c:otherwise>
                	</c:choose>
                </tbody>
              </table>

              <div class="row text-center justify-content-center align-self-center">
				<div class="col-auto">
	                   <nav aria-label="Page navigation example" class="mt-4">
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

<script type="text/javaScript">

$(document).ready(function() {
	$("a[name='title']").on("click", function(e) { //목록에서 글 제목을 클릭하면
	 e.preventDefault();
	//CS_NUM을 변수로 저장
	var num = $(this).attr('data-num'); //string으로 가져옴. attr말고 data('num')으로 쓰면 실제 자료형으로 가져옴
	
	detail(num); //상세보기 함수 호출
	});
	
	$("button[name='delete']").on("click", function(e) { //모달에서 삭제 버튼을 누르면
		 e.preventDefault();
		//CS_NUM을 변수로 저장
		var num = $("a[name='title']").attr('data-num'); //string으로 가져옴. attr말고 data('num')으로 쓰면 실제 자료형으로 가져옴
		
		deleteCS(num); //삭제 함수 호출
	});
	
});


function detail(num) {
	$.ajax({
		url:"/sk/myPage/csDetail",
		type:'post',
		contentType:"application/json; charset=UTF-8",
		data:JSON.stringify({CS_NUM:num}),
		success:function(data) {
			$("#d_title").html(data.result.CS_TITLE);
			$("#d_content").html(data.result.CS_CONTENT);
			$("#d_reply").empty();
			$("#d_reply").html(data.result.CS_REPLY_CONTENT);
			
		},
		error:function() {
			alert("잠시 후 다시 시도해주세요.");
		}	
		});
}


function deleteCS(num) {
	if(confirm("문의 글을 삭제하시겠습니까?")) {
		$.ajax({
		url:"/sk/myPage/csDelete",
		type:'post',
		contentType:"application/json; charset=UTF-8",
		data:JSON.stringify({CS_NUM:num}),
		success:function() {
			alert("문의가 삭제되었습니다.");
			location.reload(); //페이지 새로고침
		},
		error:function() {
			alert("잠시 후 다시 시도해주세요.");
		}	
		});
	}
	
}

</script>


</body>
</html>