<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/include-taglib.jspf" %>
<!-- sockJS -->
<script src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>
<script>
// 전역변수 설정
var socket  = null;
$(document).ready(function(){
    // 웹소켓 연결
    sock = new SockJS("<c:url value="/inform-ws"/>");
    socket = sock;

    // 데이터를 전달 받았을때 
    sock.onmessage = onMessage; // toast 생성
});

// toast생성 및 추가
function onMessage(evt){
    var data = evt.data;
    // toast
    let toast = "<div class='toast' role='alert' aria-live='assertive' aria-atomic='true'>";
    toast += "<div class='toast-header'><i class='fas fa-bell mr-2'></i><strong class='mr-auto'>알림</strong>";
    toast += "<small class='text-muted'>just now</small><button type='button' class='ml-2 mb-1 close' data-dismiss='toast' aria-label='Close'>";
    toast += "<span aria-hidden='true'>&times;</span></button>";
    toast += "</div> <div class='toast-body'>" + data + "</div></div>";
    $("#msgStack").append(toast);   // msgStack div에 생성한 toast 추가
    $(".toast").toast({"animation": true, "autohide": false});
    $('.toast').toast('show');
};	
</script>

	<div class="offcanvas offcanvas-start" data-bs-scroll="true" tabindex="-1" id="informOffcanvas" aria-labelledby="offcanvasWithBothOptionsLabel">
      <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasWithBothOptionsLabel">알림</h5>
        <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
      </div>
      <!-- inform 내용 시작 -->
      <div class="offcanvas-body">
        <a href="#">
          <div class="row ms-1 me-1">
            <p style="font-weight: 500">
              "코트버로우 로우"의 예약 상태가 "픽업 대기중"으로 변경되었습니다.
            </p>
            <div class="d-flex justify-content-between">
              <p style="color: rgba(0, 0, 0, 0.361); font-size: small">
                23/03/06
              </p>
              <p style="font-size: small">
                <span style="color: rgba(0, 0, 0, 0.361);">읽지않음</span> 🔵
              </p>
            </div>
            <hr />
          </div>
        </a>
      </div>
      <!-- inform 내용 끝 -->
    </div>

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
          <a id="informA" class="nav-link scrollto" href="#inform" data-bs-toggle="offcanvas" data-bs-target="#informOffcanvas"
            ><svg
              xmlns="http://www.w3.org/2000/svg"
              width="20"
              height="20"
              fill="currentColor"
              class="bi bi-bell position-relative"
              viewBox="0 0 16 16"
            >
              <path
                d="M8 16a2 2 0 0 0 2-2H6a2 2 0 0 0 2 2zM8 1.918l-.797.161A4.002 4.002 0 0 0 4 6c0 .628-.134 2.197-.459 3.742-.16.767-.376 1.566-.663 2.258h10.244c-.287-.692-.502-1.49-.663-2.258C12.134 8.197 12 6.628 12 6a4.002 4.002 0 0 0-3.203-3.92L8 1.917zM14.22 12c.223.447.481.801.78 1H1c.299-.199.557-.553.78-1C2.68 10.2 3 6.88 3 6c0-2.42 1.72-4.44 4.005-4.901a1 1 0 1 1 1.99 0A5.002 5.002 0 0 1 13 6c0 .88.32 4.2 1.22 6z"
              />
              	<span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
                    3
                </span>
              </svg
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

<div id="msgStack"></div>

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
	
	$("#informA").on("click", function(e) {
		$.ajax({
			url : '/sk/inform',
			success : function(data) {
				$(".offcanvas-body").empty();
				$(".offcanvas-body")[0].innerHTML = data;
			}
		});
	});
	
	$(".offcanvas-body").on("click", "a[name='informA']", function(e) {
		e.preventDefault();
		const informNum = {'INFORM_NUM':$(this).attr('data-num')};
		const target = $(this).attr('href');
		
		$.ajax({
			url : '/sk/inform/confirmUpdate',
			type : 'post',
			data : JSON.stringify(informNum),
			contentType : "application/json; charset=utf-8",
			success : function(data) {
				location.href = target;
			}
		});
	});
});
</script>