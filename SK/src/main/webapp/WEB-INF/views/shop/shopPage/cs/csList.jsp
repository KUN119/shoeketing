<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 답변 작성 모달 -->
<div class="modal fade" id="csWrite" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
                <p style="font-weight: bolder; font-size: medium; margin-bottom: 0;">상품 1의 재고 문의</p>
            </tr>
  
            <tr style="height: 70px;">
                <hr style="border: solid 1px rgb(73, 73, 73); width: 100%; ">
            </tr>
            <tr style="height: 70px;">
                <label for="exampleFormControlInput1" class="form-label" style="font-size: large; font-weight: bolder;">답변 내용</label>
                <textarea class="form-control" id="exampleFormControlTextarea1" rows="10"></textarea></tr>  
          </table>
            </div>
            <br>
            <div class="modal-footer">
              <button type="button" class="btn btn-primary" >답변 작성</button>
            </div>
        </div>
        </div>
      </div>
    </div>
  </div>
    <!-- 모달 끝 -->

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
                <p style="font-weight: bolder; font-size: medium; margin-bottom: 0;">상품 1의 재고 문의</p>
            </tr>
  
            <tr style="height: 70px;">
                <hr style="border: solid 1px rgb(73, 73, 73); width: 100%; ">
            </tr>
            <tr style="height: 70px;">
                <p style="font-size: medium; margin-bottom: 0;">보이는 끝까지 찾아다녀도 목숨이 있는 때까지 방황하여도 보이는 것은 거친 모래뿐일 것이다 이상의 꽃이 없으면 쓸쓸한 인간에 남는 것은 영락과 부패 뿐이다 낙원을 장식하는 천자만홍이 어디 있으며 인생을 풍부하게 하는 온갖 과실이</p>
            </tr>  
          </table>
            </div>
            <br>
            <div class="modal-footer">
              <button class="btn btn-primary" data-bs-target="#csWrite" data-bs-toggle="modal">답변 작성하기</button>
            </div>
        </div>
        </div>
      </div>
    </div>
  </div>
    <!-- 모달 끝 -->
    
    <div class="col-ms-7 col-lg-8" style="margin-top: 0px;">
            <h3 style="margin-left: 30px; color: black; font-weight: bolder;">매장 문의</h3>
            <hr style="border: solid 1px rgb(73, 73, 73); width: 100%; ">
            <table class="table table table-bordered" style="text-align: center;">
                <thead>
                  <tr style="width: 25%;">
                    <th>작성자</th>
                    <th>제목</th>
                    <th>작성 날짜</th>
                    <th>처리 상태</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td style="width: 25%;">spvpt44@naver.com</td>
                    <td style="width: 45%;"><a href="#" data-bs-toggle="modal" data-bs-target="#csDetail">상품 1의 재고 문의</a></td>
                    <td style="width: 15%;">2023/02/07 </td>
                    <td style="width: 25%;">답변 대기</td>
                  </tr>
                  <tr>
                    <td style="width: 25%;">kimst@naver.com</td>
                    <td style="width: 45%;"><a href="#" data-bs-toggle="modal" data-bs-target="#csDetail"> 상품3의 재고 문의</a></td>
                    <td style="width: 15%;">2023/02/07 </td>
                    <td style="width: 15%;">답변 대기</td>
                  </tr>
                  <tr>
                    <td style="width: 25%;">asd@gmail.com</td>
                    <td style="width: 45%;"><a href="#" data-bs-toggle="modal" data-bs-target="#csDetail">상품4의 픽업 예약 관련 문의 </a></td>
                    <td style="width: 15%;">2023/02/07 </td>
                    <td style="width: 15%;">답변 대기</td>
                  </tr>
                  <tr>
                    <td style="width: 25%;">123@naver.com</td>
                    <td style="width: 45%;"><a href="#" data-bs-toggle="modal" data-bs-target="#csDetail">상품5의 픽업 예약 취소 문의 </a></td>
                    <td style="width: 15%;">2023/02/07 </td>
                    <td style="width: 15%;">답변 완료</td>
                  </tr>
                </tbody>
              </table>

              <nav aria-label="Page navigation example" style="margin-left: 40%;">
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