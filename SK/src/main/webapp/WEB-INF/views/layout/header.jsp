<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- ======= Header ======= -->
<header id="header" class="ms-5 me-5 mt-2 mb-1">
  <div class="container d-flex align-items-center justify-content-between">
    <h1 class="logo fs-1"><a href="/sk/main">SHOEKETING</a></h1>

    <nav id="navbar" class="navbar justify-content-end">
      <ul>
      	<li>
      		<a class="nav-link scrollto" href="/sk/admin/noticeList" style="font-size: 13px">관리자</a>
      	</li>
        <li>
          <c:choose>
          	<c:when test="${session_MEM_ID != null}">
          		<a class="nav-link scrollto" href="/sk/myPage" style="font-size: 13px">마이페이지</a>
			</c:when>
			<c:when test="${session_BRAND_ID != null}">
          		<a class="nav-link scrollto" href="/sk/brandPage" style="font-size: 13px">마이페이지</a>
			</c:when>
			<c:when test="${session_SHOP_ID != null}">
          		<a class="nav-link scrollto" href="/sk/shopPage" style="font-size: 13px">마이페이지</a>
			</c:when>
		  </c:choose>          
        </li>
        <li>
        <c:choose>
        <c:when test="${session_MEM_ID==null && session_BRAND_ID==null && session_SHOP_ID==null}">
          <a class="nav-link scrollto" href="/sk/loginSelect/member" style="font-size: 13px"
            >로그인</a
          >
         </c:when>
         <c:otherwise>
          <a class="nav-link scrollto" name="logout" style="font-size: 13px"
            >로그아웃</a>
          </c:otherwise>
          </c:choose>
        </li>
      </ul>
    </nav>
    <!-- .navbar -->
  </div>

  <div class="container d-flex align-items-center justify-content-between">
    <nav id="navbar" class="navbar">
      <ul>
        <li class="ps-0">
          <a class="nav-link scrollto" href="/sk/goods/totalList" style="font-size: 13px"
            >제품 보기</a
          >
        </li>
        <li>
          <a class="nav-link scrollto" href="/sk/goods/stockSearchForm" style="font-size: 13px"
            >제품 찾기</a
          >
        </li>
      </ul>
    </nav>
    <!-- .navbar -->

    <nav id="navbar" class="navbar justify-content-end">
      <ul>
        <li>
          <a class="nav-link scrollto" href="/sk/basket/basketList"
            ><svg
              xmlns="http://www.w3.org/2000/svg"
              width="20"
              height="20"
              fill="currentColor"
              class="bi bi-basket"
              viewBox="0 0 16 16"
            >
              <path
                d="M5.757 1.071a.5.5 0 0 1 .172.686L3.383 6h9.234L10.07 1.757a.5.5 0 1 1 .858-.514L13.783 6H15a1 1 0 0 1 1 1v1a1 1 0 0 1-1 1v4.5a2.5 2.5 0 0 1-2.5 2.5h-9A2.5 2.5 0 0 1 1 13.5V9a1 1 0 0 1-1-1V7a1 1 0 0 1 1-1h1.217L5.07 1.243a.5.5 0 0 1 .686-.172zM2 9v4.5A1.5 1.5 0 0 0 3.5 15h9a1.5 1.5 0 0 0 1.5-1.5V9H2zM1 7v1h14V7H1zm3 3a.5.5 0 0 1 .5.5v3a.5.5 0 0 1-1 0v-3A.5.5 0 0 1 4 10zm2 0a.5.5 0 0 1 .5.5v3a.5.5 0 0 1-1 0v-3A.5.5 0 0 1 6 10zm2 0a.5.5 0 0 1 .5.5v3a.5.5 0 0 1-1 0v-3A.5.5 0 0 1 8 10zm2 0a.5.5 0 0 1 .5.5v3a.5.5 0 0 1-1 0v-3a.5.5 0 0 1 .5-.5zm2 0a.5.5 0 0 1 .5.5v3a.5.5 0 0 1-1 0v-3a.5.5 0 0 1 .5-.5z"
              /></svg
          ></a>
        </li>
        <li>
          <a class="nav-link scrollto" href="#about"
            ><svg
              xmlns="http://www.w3.org/2000/svg"
              width="20"
              height="20"
              fill="currentColor"
              class="bi bi-bell"
              viewBox="0 0 16 16"
            >
              <path
                d="M8 16a2 2 0 0 0 2-2H6a2 2 0 0 0 2 2zM8 1.918l-.797.161A4.002 4.002 0 0 0 4 6c0 .628-.134 2.197-.459 3.742-.16.767-.376 1.566-.663 2.258h10.244c-.287-.692-.502-1.49-.663-2.258C12.134 8.197 12 6.628 12 6a4.002 4.002 0 0 0-3.203-3.92L8 1.917zM14.22 12c.223.447.481.801.78 1H1c.299-.199.557-.553.78-1C2.68 10.2 3 6.88 3 6c0-2.42 1.72-4.44 4.005-4.901a1 1 0 1 1 1.99 0A5.002 5.002 0 0 1 13 6c0 .88.32 4.2 1.22 6z"
              /></svg
          ></a>
        </li>
        <li>
          <form action="/sk/totalSearch">
                <div class="input-group">
                  <input
                    class="header-input"
                    style="
                      height: 37px;
                      border-style: none;
                      border: solid 1px black;
                      border-right: none;
                      border-top-left-radius: 5px;
                      border-bottom-left-radius: 5px;
                    "
                    type="search"
                    id='keyword'
                    name='keyword'
                    <%-- value="<c:out value="${search}"/>" --%>
                  />
                  <button
                    class="btn"
                    type="submit"
                    style="
                      background-color: white;
                      border: solid 1px black;
                      border-left: none;
                    "
                  >
                    <svg
                      xmlns="http://www.w3.org/2000/svg"
                      width="15"
                      height="15"
                      fill="currentColor"
                      class="bi bi-search"
                      viewBox="0 0 16 16"
                    >
                      <path
                        d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"
                      />
                    </svg>
                  </button>
                </div>
              </form>
        </li>
      </ul>
    </nav>
    <!-- .navbar -->
  </div>
</header>
<hr>

<script type="text/javascript">
$(document).ready(function() {
	
	$("a[name='logout']").on("click", function(e) { // 로그아웃
		e.preventDefault();
		fn_logout();
	});
	
	function fn_logout() {
		$.ajax({
			url:'/sk/logout',
			success: function() {
				location.href='/sk/main';
			}
		});
	};
});
</script>