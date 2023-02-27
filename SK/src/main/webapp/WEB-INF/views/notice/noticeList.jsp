<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.container {
        width: 1200px; /*기본값 1500px*/
        max-width: none !important;
      }
</style>
</head>
<body>
    <div class="container">
      <div class="row d-flex mb-4 mt-5">
        <div class="col-8">
          <h3 class="" style="font-weight: 700">공지사항</h3>
        </div>
        <div class="col input-group">
          <select class="form-select-sm" style="width: 4rem; border-color: rgba(0, 0, 0, 0.263);" id="searchType" name="searchType">
            <option selected>전체</option>
            <option value="title">제목</option>
            <option value="content">내용</option>
          </select>
          <input type="text" class="form-control" />
          <button
            class="btn btn-outline-secondary"
            type="button"
            id="button-addon2"
          >
            검색
          </button>
        </div>
      </div>

      <div class="row">
        <table class="table text-center">
          <thead>
          <tr>
            <th>번호</th>
            <th>제목</th>
            <th>게시일</th>
          </tr>
        </thead>
        <tbody class="table-group-divider">
          <tr>
            <th scope="row">1</th>
            <td><a href="#">[공지] 회원 탈퇴 안내</a></td>
            <td>23/02/16</td>
          </tr>
          <tr>
            <th scope="row">2</th>
            <td><a href="#">개인정보처리방침 변경 내역_2023년 2월 13일 이후</a></td>
            <td>23/02/16</td>
          </tr>
          <tr>
            <th scope="row">3</th>
            <td><a href="#">뉴발란스 신발 소비자 가격 인상 안내</a></td>
            <td>23/02/16</td>
          </tr>
        </tbody>
        </table>
      </div>
    </div>
  </body>
</html>