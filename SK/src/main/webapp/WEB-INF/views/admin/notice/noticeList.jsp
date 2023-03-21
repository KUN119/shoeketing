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
<div class="col-10" style="margin-top: 0px">
	<div class="row d-flex mb-4 mt-5">
        <div class="col-8">
	      <h3 style="margin-left: 30px; color: black; font-weight: bolder">
	        공지사항
	      </h3>
      </div>
      <div class="col input-group">
          <select class="form-select-sm" style="width: 4rem; border-color: rgba(0, 0, 0, 0.263);" id="searchType" name="searchType">
            <option selected value="total" <c:out value="${searchType eq 'total' ? 'selected' :''}"/>>전체</option>
            <option value="title" <c:out value="${searchType eq 'title' ? 'selected' :''}"/>>제목</option>
            <option value="content" <c:out value="${searchType eq 'content' ? 'selected' :''}"/>>내용</option>
          </select>
          <input type="text" class="form-control" name="keyword" id="keyword" />
          <button
            class="btn btn-outline-secondary"
            type="button"
            id="button-addon2"
            name="noticeSearch"
          >
            검색
          </button>
        </div>
      </div>

      <table class="table" style="text-align: center">
        <thead>
          <tr>
            <th class="col-1">번호</th>
            <th class="col-9">제목</th>
            <th>게시일</th>
          </tr>
        </thead>
        <tbody class="table-group-divider">
         <c:choose>
        	<c:when test="${fn:length(noticeList) > 0}">
        		<c:forEach items="${noticeList}" var="notice" varStatus="status" begin="0" end="10">
		          <tr>
				  <th scope="row">${notice.NOTICE_NUM}</th> 
		          	<td style="text-overflow:ellipsis; overflow:hidden; white-space:nowrap; max-width:200px;" title="${notice.NOTICE_TITLE}"><a href="#" name="title" class="text-dark" data-num="${notice.NOTICE_NUM}">${notice.NOTICE_TITLE}</a></td> <!-- NOTICE_TITLE -->
		            <td>${notice.NOTICE_DATE}</td> <!-- NOTCIE_DATE -->
		          </tr>  
		    	</c:forEach>
			</c:when>
         </c:choose>
        </tbody>
      </table>

      <nav aria-label="Page navigation example" style="margin-left: 40%">
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
</body>
<script>
$(document).ready(function() {

  $("a[name='title']").on("click", function(e) {  // 공지사항 상세보기
		e.preventDefault();
		const num = $(this).attr("data-num");  //a태그 name이 title 부분 속성의 data-num값 가져와서 변수 num에 저장
		fn_noticeDetail(num); //fn_noticeDetail()함수 매개변수로 num 전송
		location.href="/sk/admin/noticeDetail?NOTICE_NUM=" + num;
	});
  
  function fn_noticeDetail(num) {  //num 매개변수로 넣기
	  
	  var formData = new FormData();
      var NOTICE_NUM = num;
  
      formData.append("NOTICE_NUM", NOTICE_NUM);
  };
  
  $("button[name='noticeSearch']").on("click", function(e){  //공지사항 검색
		e.preventDefault();
		fn_noticeSearch();
	});
  
  function fn_noticeSearch(){
		
		var formData = new FormData();
		var keyword = $('#keyword').val();
		var searchType = $('#searchType').val();
		
		formData.append("keyword", keyword);
		formData.append("searchType", searchType);
		
		$.ajax({
			url: '/sk/noticeList_ajax',
			type: 'POST',
			data: formData,
			processData: false,
			contentType: false,
			success: function(data) {
				$("#noticeListBody").empty();
				$('#noticeListBody')[0].innerHTML=data;
			},
			error: function(xhr, status, error) {
				console.log('실패');
			}
		});
	};
});
</script>
</html>