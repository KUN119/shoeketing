<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	.container {
        width: 1200px; /*기본값 1500px*/
        max-width: none !important;
      }
</style>
<body>
    <div class="container">
      <div class="row mt-5">
        <h3 class="mb-4" style="font-weight: 700">실시간 재고 검색</h3>

        <div class="d-flex mb-4">
          <div class="col-3 d-flex me-5">
            <label
              for="BRAND_NAME"
              class="form-label align-self-center mb-0"
              style="width: 5rem; font-weight: 500"
              >브랜드</label
            >
            <input
              type="text"
              class="form-control"
              id="BRAND_NAME"
              name="BRAND_NAME"
              placeholder="내용을 입력해주세요"
            />
          </div>

          <div class="col-3 d-flex me-5">
            <label
              for="TOTAL_GOODS_NAME"
              class="form-label align-self-center mb-0"
              style="width: 5rem; font-weight: 500"
              >제품명</label
            >
            <input
              type="text"
              class="form-control"
              id="TOTAL_GOODS_NAME"
              name="TOTAL_GOODS_NAME"
              placeholder="내용을 입력해주세요"
            />
          </div>

          <div class="col-3 d-flex me-5">
            <label
              for="TOTAL_GOODS_NAME"
              class="form-label align-self-center mb-0"
              style="width: 5rem; font-weight: 500"
              >사이즈</label
            >
            <select class="form-select" name="SHOP_GOODS_SIZE">
              <option selected>사이즈</option>
              <option value="260">260</option>
              <option value="265">265</option>
              <option value="270">270</option>
            </select>
          </div>
        </div>

        <div class="d-flex">
          <div class="d-flex">
            <label
              for="SHOP_NAME"
              class="form-label align-self-center mb-0"
              style="width: 5rem; font-weight: 500"
              >매장</label
            >
            <input
              type="text"
              class="form-control"
              id="SHOP_NAME"
              name="SHOP_NAME"
              placeholder="검색어를 입력해주세요"
            />
            <button
              class="btn btn-secondary ms-3"
              type="button"
              style="width: 8rem"
            >
              매장검색
            </button>
          </div>
        </div>
      </div>

      <table
        class="table table-bordered text-center mt-5"
        style="border-left-color: white; border-right-color: white"
      >
        <thead>
          <tr style="font-size: 12px; font-weight: 400">
            <th class="col-3" scope="col">매장명</th>
            <th
              class="col-1"
              scope="col"
              style="border-right-color: rgba(0, 0, 0, 0.121)"
            >
              재고보유여부
            </th>
            <th class="col-3" scope="col">매장명</th>
            <th
              class="col-1"
              scope="col"
              style="border-right-color: rgba(0, 0, 0, 0.121)"
            >
              재고보유여부
            </th>
            <th class="col-3" scope="col">매장명</th>
            <th class="col-1" scope="col">재고보유여부</th>
          </tr>
        </thead>
        <tbody class="table-group-divider">
          <tr>
            <th scope="row"><a href="#">ST 동해천곡점</a></th>
            <td style="border-right-color: rgba(0, 0, 0, 0.121)">O</td>
            <th scope="row"><a href="#">MS 명동점</a></th>
            <td style="border-right-color: rgba(0, 0, 0, 0.121)">O</td>
            <th scope="row"><a href="#">ST 수원터미널NC점</a></th>
            <td>O</td>
          </tr>
          <tr>
            <th scope="row"><a href="#">ST 동해천곡점</a></th>
            <td style="border-right-color: rgba(0, 0, 0, 0.121)">O</td>
            <th scope="row"><a href="#">MS 명동점</a></th>
            <td style="border-right-color: rgba(0, 0, 0, 0.121)">O</td>
            <th scope="row"><a href="#">ST 수원터미널NC점</a></th>
            <td>O</td>
          </tr>
          <tr>
            <th scope="row"><a href="#">ST 동해천곡점</a></th>
            <td style="border-right-color: rgba(0, 0, 0, 0.121)">O</td>
            <th scope="row"><a href="#">MS 명동점</a></th>
            <td style="border-right-color: rgba(0, 0, 0, 0.121)">O</td>
            <th scope="row"><a href="#">ST 수원터미널NC점</a></th>
            <td>O</td>
          </tr>
        </tbody>
      </table>

      <nav>
        <ul class="pagination justify-content-center">
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

      <!--카카오 지도 API 적용 div-->
      <div class="row justify-content-center">
      	<div id="map" style="width: 900px; height: 600px"></div>
      </div>
      <!--카카오 지도 API 적용 div 끝-->
    </div>
  </body>
  <script
    type="text/javascript"
    src="//dapi.kakao.com/v2/maps/sdk.js?appkey=08e2c5126e1c7f5ac14b68c3f37365ad"
  ></script>
  <script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
				// ####### 좌표 입력1 #########
		    center: new kakao.maps.LatLng(37.5641952, 126.9817070), // 지도의 중심좌표 SHOP_POS2, SHOP_POS1 값 넣어주기
		    level: 3 // 지도의 확대 레벨
		};
		
		var map = new kakao.maps.Map(mapContainer, mapOption);
		
		//마커가 표시될 위치입니다 ####### 좌표 입력2 #########
		var markerPosition  = new kakao.maps.LatLng(37.5641952, 126.9817070); //SHOP_POS2, SHOP_POS1 값 넣어주기
		
		//마커를 생성합니다
		var marker = new kakao.maps.Marker({
		  position: markerPosition
		});
		
		//마커가 지도 위에 표시되도록 설정합니다
		marker.setMap(map);
		
		//############### 매장 정보가 들어갈 공간 ###################
		var iwContent = `<div
	        style="
	          padding: 15px 20px 20px 15px;
	          width: 400px;
	          height: 210px;
	          box-shadow: 2px 2px 2px 2px gray;
	          border: none;
	        "
	      >
	        <h4 class="mb-4" style="font-weight: 700;">나이키 명동</h4>
	        <p class="mb-1">서울특별시 중구 남대문로 78</p>
	        <p style="color:forestgreen">02-362-7789</p>
	        <h6 style="font-weight: 700;">재고 : 5개</h6>
	        <div class="d-flex justify-content-between">
	          <a href="#" class="align-self-center">문의하기</a>
	          <div>
	            <button class="button" type="button" style="border: 1px solid rgba(0, 0, 0, 0.116)">픽업예약</button>
	            <button class="button" type="button" style="border: 1px solid rgba(0, 0, 0, 0.116)">장바구니</button>
	          </div>
	        </div>
	      </div>`, // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
	      //####### 좌표 입력3 #########
		  iwPosition = new kakao.maps.LatLng(37.5641952, 126.9817070); //인포윈도우 표시 위치입니다 SHOP_POS2, SHOP_POS1 값 넣어주기
		//############### 매장 정보가 들어갈 공간 끝 ###################
		
		//인포윈도우를 생성합니다
		var infowindow = new kakao.maps.InfoWindow({
		  position : iwPosition, 
		  content : iwContent 
		});
		
		//마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
		infowindow.open(map, marker);
  </script>
</html>