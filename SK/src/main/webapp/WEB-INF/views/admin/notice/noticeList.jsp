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
          <tr>
            <td>1</td>
            <td><a href="/sk/admin/noticeDetail">[공지] 회원 탈퇴 안내</a></td>
            <td>23/03/03</td>
          </tr>
          <tr>
            <td>2</td>
            <td><a href="/sk/admin/noticeDetail">개인정보처리방침 변경 내역_2023년 2월 13일 이후</a></td>
            <td>23/03/03</td>
          </tr>
          <tr>
            <td>3</td>
            <td><a href="/sk/admin/noticeDetail">뉴발란스 신발 소비자 가격 인상 안내</a></td>
            <td>23/03/03</td>
          </tr>
          <tr>
            <td>4</td>
            <td><a href="/sk/admin/noticeDetail">헌신 줄게, 새신다오 이벤트 당첨자 안내</a></td>
            <td>23/03/03</td>
          </tr>
          <tr>
            <td>5</td>
            <td><a href="/sk/admin/noticeDetail">크리스마스 기획전 당첨자 발표 관련 안내</a></td>
            <td>23/03/03</td>
          </tr>
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
</html>