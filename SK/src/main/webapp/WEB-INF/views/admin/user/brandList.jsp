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
	        브랜드회원 관리
	      </h3>
		</div>
      	<div class="col input-group">
          <select class="form-select-sm" style="width: 4rem; border-color: rgba(0, 0, 0, 0.263);" id="searchType" name="searchType">
            <option selected value="total">전체</option>
            <option value="num">회원번호</option>
            <option value="id">아이디</option>
            <option value="name">브랜드명</option>
            <option value="del_gb">탈퇴여부</option>
          </select>
          <input type="text" class="form-control" name="keyword" id="keyword" />
          <button
            class="btn btn-outline-secondary"
            type="button"
            id="button-addon2"
            name="brandSearch"
          >
            검색
          </button>
        </div>
      </div>

      <table class="table" style="text-align: center">
        <thead>
          <tr>
            <th class="col-2">회원번호</th>
            <th class="col-4">아이디</th>
            <th class="col-4">브랜드명</th>
            <th class="col-2">탈퇴여부</th>
          </tr>
        </thead>
        <tbody class="table-group-divider">
          <tr>
            <td>1</td>
            <td><a href="/sk/admin/brandDetail">nike_0156</a></td>
            <td>나이키</td>
            <td>Y</td>
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