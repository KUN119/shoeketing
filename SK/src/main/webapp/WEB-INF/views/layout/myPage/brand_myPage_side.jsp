<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="col-2 order-ms-last" style="margin-top: 0px;">
            <h3 style="margin-left: 13%; color: black;">My Page</h3>
            <hr style="border: solid 1px rgb(73, 73, 73); width: 80%; margin-left: 5%;">
          <ul>
            <li class="list-group-item d-flex justify-content-between lh-sm">
              <div>
                <h5><a href="#" name="brandInfoModify" data-brandNum="2">기본 정보 수정</a></h5> <!-- 추후 data-brandNum 세션에서 꺼낸 BRAND_NUM 값으로 전송 -->
                <small class="text-muted">  </small>
              </div>
            </li>
            <li class="list-group-item d-flex justify-content-between lh-sm mt-4">
              <div>
                <h5 class="my-0">상품 관리</h5>
                <br>
                <h6 class="text-muted" style="margin-left: 25px;"><a href="#">전체 상품 리스트</a></h6>
                <h6 class="text-muted" style="margin-left: 25px;"><a href="#">상품 등록</a></h6>
              </div>
            
            </li>

            <li class="list-group-item d-flex justify-content-between lh-sm mt-4">
              <div>
                <h5 class="my-0">매장 관리</h5>
                <br>
                <h6 class="text-muted" style="margin-left: 25px;"><a href="#">입점 매장 리스트</a></h6>
                <h6 class="text-muted" style="margin-left: 25px;"><a href="#">매장 가입 승인</a></h6>
                </div>
            </li>
          </ul>
        </div>
</body>
</html>