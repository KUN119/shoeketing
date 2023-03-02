<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
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
            <tr>
                <hr style="border: solid 1px rgb(73, 73, 73); width: 100%; ">
            </tr>
            
            &nbsp;
            <tr>
                <p style="font-weight: bolder; font-size: medium; margin-bottom: 0;">문의 답변</p>
            </tr>
            <tr style="height: 70px;">
                <hr style="border: solid 1px rgb(73, 73, 73); width: 100%; ">
            </tr>
            <tr style="height: 70px;">
                <p style="font-size: medium; margin-bottom: 0;">안녕하세요 나이키 명동점입니다.
                    ~~~~ 매장 문의 답변 내용~~~~</p>
            </tr>  
          </table>
            </div>
            <br>
            <div class="modal-footer">
              <button type="button" class="btn btn-danger">삭제</button>
            </div>
        </div>
        </div>
      </div>
    </div>
    <!-- 모달 끝 -->

        <div class="col-8" style="margin-top: 0px;">
            <h3 style="margin-left: 30px; color: black; font-weight: bolder;">나의 문의 내역</h3>
            <hr style="border: solid 1px rgb(73, 73, 73); width: 100%; ">
            <table class="table table table-bordered" style="text-align: center;">
                <thead>
                  <tr style="width: 30%;">
                    <th>제목</th>
                    <th>작성 날짜</th>
                    <th>처리 상태</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td style="width: 40%;"><a href="#" data-bs-toggle="modal" data-bs-target="#csDetail">상품 1의 재고 문의</a></td>
                    <td style="width: 30%;">2023/02/07 </td>
                    <td style="width: 30%;">답변 대기</td>
                  </tr>
                  <tr>
                    <td style="width: 40%;"><a href="#" data-bs-toggle="modal" data-bs-target="#csDetail">상품 2의 재고 문의</a></td>
                    <td style="width: 30%;">2023/02/05 </td>
                    <td style="width: 30%;">답변 대기</td>
                  </tr>
                  <tr>
                    <td style="width: 40%;"><a href="#" data-bs-toggle="modal" data-bs-target="#csDetail">상품 3의 재고 문의</a></td>
                    <td style="width: 30%;">2023/02/08 </td>
                    <td style="width: 30%;">답변 대기</td>
                  </tr>
                  <tr>
                    <td style="width: 40%;"><a href="#" data-bs-toggle="modal" data-bs-target="#csDetail">상품 4의 재고 문의</a></td>
                    <td style="width: 30%;">2023/01/30 </td>
                    <td style="width: 30%;">답변 대기</td>
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