<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <div class="container">
      <!--검색창 시작-->
      <div class="row mb-5 mt-5">
        <form>
          <div class="input-group" style="justify-content: center">
            <input
              class="header-input"
              style="
                width: 28rem;
                height: 3rem;
                border-style: none;
                border-bottom: 3px solid black;
                font-size: 20px;
                font-weight: 700;
              "
              type="text"
              name="keyword"
              id="keyword"
            />
            <button
              class="btn"
              type="button"
              style="
                background-color: white;
                border-style: none;
                border-radius: 0;
                border-bottom: 3px thick black;
              "
              id="searchBtn"
              name="searchBtn"
            >
              <svg
                xmlns="http://www.w3.org/2000/svg"
                width="20"
                height="20"
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
      </div>
      <!--검색창 끝-->

      <!--검색 키워드 시작-->
      <div class="row mb-3" id="searchKeyword">
       <!--  <h2 id='searchKeyword'></h2> -->
      </div>
      <!--검색 키워드 끝-->

      <!--브랜드 검색 결과 시작-->
      <div class="row mb-5">
        <a class="d-flex" href="#" id=bInfo>
          <%-- <div class="col-1">
            <img
              src="<%=request.getContextPath()%>/assets/img/nikeLogo.jpg"
              class="img-thumbnail"
              style="height: 5rem; width: auto"
            />
          </div>
          <div class="col-1 ms-3 align-self-center">
            <h6 class="mb-0" style="font-weight: 700; font-size: 18px">
              나이키<i class="bi bi-chevron-right" style="font-weight: 700"></i>
            </h6>
          </div> --%>
        </a>
      </div>
      <!--브랜드 검색 결과 끝-->

      <!--상품 검색결과 리스트 시작-->
      <div class="row">
        <h5 class="mb-3" style="font-weight: 700">상품 검색결과</h5>
        <hr />

        <div class="col-6 mt-4 mb-4 d-flex">
          <a href="#" class="d-flex">
            <img
              src="<%=request.getContextPath()%>/assets/img/a7ae62bb0c3243a2af834df70e9b0d81.jpg"
              style="width: 14rem"
            />
            <div class="ms-5 align-self-center">
              <p style="font-weight: 700">VANS</p>
              <p>어센틱 VR3 블랙 마쉬멜로우 / VN0005UD1KP1</p>
              <p style="font-weight: 700; font-size: large">79,000원</p>
            </div>
          </a>
        </div>

        <div class="col-6 mt-4 mb-4 d-flex">
          <a href="#" class="d-flex">
            <img
              src="<%=request.getContextPath()%>/assets/img/a7ae62bb0c3243a2af834df70e9b0d81.jpg"
              style="width: 14rem"
            />
            <div class="ms-5 align-self-center">
              <p style="font-weight: 700">VANS</p>
              <p>어센틱 VR3 블랙 마쉬멜로우 / VN0005UD1KP1</p>
              <p style="font-weight: 700; font-size: large">79,000원</p>
            </div>
          </a>
        </div>

        <div class="col-6 mt-4 mb-4 d-flex">
          <a href="#" class="d-flex">
            <img
              src="<%=request.getContextPath()%>/assets/img/a7ae62bb0c3243a2af834df70e9b0d81.jpg"
              style="width: 14rem"
            />
            <div class="ms-5 align-self-center">
              <p style="font-weight: 700">VANS</p>
              <p>어센틱 VR3 블랙 마쉬멜로우 / VN0005UD1KP1</p>
              <p style="font-weight: 700; font-size: large">79,000원</p>
            </div>
          </a>
        </div>

        <div class="col-6 mt-4 mb-4 d-flex">
          <a href="#" class="d-flex">
            <img
              src="<%=request.getContextPath()%>/assets/img/a7ae62bb0c3243a2af834df70e9b0d81.jpg"
              style="width: 14rem"
            />
            <div class="ms-5 align-self-center">
              <p style="font-weight: 700">VANS</p>
              <p>어센틱 VR3 블랙 마쉬멜로우 / VN0005UD1KP1</p>
              <p style="font-weight: 700; font-size: large">79,000원</p>
            </div>
          </a>
        </div>

        <!--상품 검색결과 더보기 시작-->
        <div class="row" id="sInfo">
          <a href="#" class="ms-4" style="font-weight: 500">
          	<p>검색결과 더보기<i class="bi bi-chevron-down ms-2"></i></p>
          </a>
          <hr/>
        </div>
        <!--상품 검색결과 더보기 끝-->
      </div>
      <!--상품 검색결과 리스트 끝-->

      <!--매장 검색결과 리스트 시작-->
      <div class="row mt-5">
        <h5 class="mb-3" style="font-weight: 700">매장 검색결과</h5>
        <hr />
        <a href="#">
          <div class="row mt-2 mb-2">
            <div class="col-2 align-self-center text-center">
              <p class="fw-semibold" style="font-size: large">나이키 서울</p>
            </div>
            <div class="col-10">
              <div class="row">
                <div class="col-2">
                  <p style="font-weight: 500">전화번호</p>
                </div>
                <div class="col-4">
                  <p>02-3789-9534</p>
                </div>
                <div class="col-2">
                  <p style="font-weight: 500">영업시간</p>
                </div>
                <div class="col-4">
                  <p>10:00 ~ 21:30</p>
                </div>
              </div>

              <div class="row mt-3">
                <div class="col-2">
                  <p style="font-weight: 500">주소</p>
                </div>
                <div class="col-4">
                  <p>서울 서울특별시 중구 명동길 14</p>
                </div>
                <div class="col-2">
                  <p style="font-weight: 500">브랜드명</p>
                </div>
                <div class="col-4">
                  <p>나이키</p>
                </div>
              </div>
            </div>
          </div>
        </a>

        <hr />

        <a href="#">
          <div class="row mt-2 mb-2">
            <div class="col-2 align-self-center text-center">
              <p class="fw-semibold" style="font-size: large">나이키 서울</p>
            </div>
            <div class="col-10">
              <div class="row">
                <div class="col-2">
                  <p style="font-weight: 500">전화번호</p>
                </div>
                <div class="col-4">
                  <p>02-3789-9534</p>
                </div>
                <div class="col-2">
                  <p style="font-weight: 500">영업시간</p>
                </div>
                <div class="col-4">
                  <p>10:00 ~ 21:30</p>
                </div>
              </div>

              <div class="row mt-3">
                <div class="col-2">
                  <p style="font-weight: 500">주소</p>
                </div>
                <div class="col-4">
                  <p>서울 서울특별시 중구 명동길 14</p>
                </div>
                <div class="col-2">
                  <p style="font-weight: 500">브랜드명</p>
                </div>
                <div class="col-4">
                  <p>나이키</p>
                </div>
              </div>
            </div>
          </div>
        </a>
        <hr />
        <a href="#">
          <div class="row mt-2 mb-2">
            <div class="col-2 align-self-center text-center">
              <p class="fw-semibold" style="font-size: large">나이키 서울</p>
            </div>
            <div class="col-10">
              <div class="row">
                <div class="col-2">
                  <p style="font-weight: 500">전화번호</p>
                </div>
                <div class="col-4">
                  <p>02-3789-9534</p>
                </div>
                <div class="col-2">
                  <p style="font-weight: 500">영업시간</p>
                </div>
                <div class="col-4">
                  <p>10:00 ~ 21:30</p>
                </div>
              </div>

              <div class="row mt-3">
                <div class="col-2">
                  <p style="font-weight: 500">주소</p>
                </div>
                <div class="col-4">
                  <p>서울 서울특별시 중구 명동길 14</p>
                </div>
                <div class="col-2">
                  <p style="font-weight: 500">브랜드명</p>
                </div>
                <div class="col-4">
                  <p>나이키</p>
                </div>
              </div>
            </div>
          </div>
        </a>

        <hr />
        <a href="#">
          <div class="row mt-2 mb-2">
            <div class="col-2 align-self-center text-center">
              <p class="fw-semibold" style="font-size: large">나이키 서울</p>
            </div>
            <div class="col-10">
              <div class="row">
                <div class="col-2">
                  <p style="font-weight: 500">전화번호</p>
                </div>
                <div class="col-4">
                  <p>02-3789-9534</p>
                </div>
                <div class="col-2">
                  <p style="font-weight: 500">영업시간</p>
                </div>
                <div class="col-4">
                  <p>10:00 ~ 21:30</p>
                </div>
              </div>

              <div class="row mt-3">
                <div class="col-2">
                  <p style="font-weight: 500">주소</p>
                </div>
                <div class="col-4">
                  <p>서울 서울특별시 중구 명동길 14</p>
                </div>
                <div class="col-2">
                  <p style="font-weight: 500">브랜드명</p>
                </div>
                <div class="col-4">
                  <p>나이키</p>
                </div>
              </div>
            </div>
          </div>
        </a>

        <!--매장 검색결과 더보기 시작-->
        <div class="row">
          <a href="#" class="ms-4" style="font-weight: 500"
            ><p>검색결과 더보기<i class="bi bi-chevron-down ms-2"></i></p
          ></a>
          <hr />
        </div>
        <!--매장 검색결과 더보기 끝-->
      </div>
      <!--매장 검색결과 리스트 끝-->
    </div>
  </body>
  
<script type="text/javascript">
$(document).ready(function() {
	
	$("button[name='searchBtn']").on("click", function(e) {
		e.preventDefault();
		fn_searchBtn();
	});
	
	function fn_searchBtn() {
		var formData = new FormData();
		var keyword = $('#keyword').val();
		
		formData.append("keyword", keyword);
		
		$.ajax({
			url: '/sk/totalSearch',
			type: 'POST',
			data: formData,
			processData: false,
			contentType: false,
			success: function(data) {
				console.log(data);
				
				value = data.keyword;
				//console.log(value);
				
				var str = "";
				str += "<h2 id='searchKeyword' style='font-weight: 700'>검색어: " +value+ "</h2>";
				
				$("#searchKeyword").prepend(str);
				
				values = data.brandlist;
				
				$.each(values, function(index, value) {
					var bName = value.BRAND_NAME;
					var bLogo = value.BRAND_LOGO_FILE;
					//console.log(index + " : " + bName+", "+ bLogo);
					console.log(bName);
					console.log(bLogo);
					
				var a = "";
				a += "<div class='col-1'>";
	            a += 	"<img src=" + bLogo + "class='img-thumbnail'";
	            a +=  		"style='height: 5rem; width: auto'/>";
	            a += "</div>";
	            a += "<div class='col-1 ms-3 align-self-center'>";
	            a += "<h6 class='mb-0' style='font-weight: 700; font-size: 18px'>";
	            a +=   bName + "<i class='bi bi-chevron-right' style='font-weight: 700'></i>";
	            a += "</h6>";
	            a += "</div>";
                
                $("#bInfo").prepend(a);
				});
			},
			error: function(xhr, status, error) {
				console.log('실패');
			}
		});
	};
});
</script>
</html>