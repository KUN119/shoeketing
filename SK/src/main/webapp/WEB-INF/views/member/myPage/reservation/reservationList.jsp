<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <body>
<!-- 모달 -->
<div class="modal fade" id="reviewWrite" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content" style="width:600px; height: auto;">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">상품 후기 작성</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <div class="mt-4 ms-3 row-cols-md-1">
          <table>
          <tr>
            <td>
              <p style="font-weight: bolder; font-size: medium;">상품 만족도</p>
            </td>
            <td>
              <form class="mb-3" name="myform" id="myform" method="post">
                <fieldset>
                  <input type="radio" name="reviewStar" value="5" id="rate1"><label
                    for="rate1">★</label>
                  <input type="radio" name="reviewStar" value="4" id="rate2"><label
                    for="rate2">★</label>
                  <input type="radio" name="reviewStar" value="3" id="rate3"><label
                    for="rate3">★</label>
                  <input type="radio" name="reviewStar" value="2" id="rate4"><label
                    for="rate4">★</label>
                  <input type="radio" name="reviewStar" value="1" id="rate5"><label
                    for="rate5">★</label>
                </fieldset>
              </form>
            </td>
            <td></td>
            <td></td>
          </tr>

          <tr style="height: 70px;">
            <td>
              <fieldset>
              <p style="font-weight: bolder; font-size: medium; margin-bottom: 0;">사이즈</p>
            </td>
              <td>
                <input type="radio" name="size" value="1" id="size1" style="font-size: medium;">  정사이즈보다 작음
              </td>
              <td>  
              <input type="radio" name="size" value="4" id="size2">  정사이즈
              </td>
              <td>  
              <input type="radio" name="size" value="3" id="size3">  정사이즈보다 큼
              </td>
          </tr>

          <tr style="height: 70px;">
            <td>
              <p style="font-weight: bolder; font-size: medium; margin-bottom: 0;">착화감</p>
            </td>
            <td>
              <input type="radio" name="size" value="1" id="size1">&nbsp;&nbsp;나&nbsp;&nbsp;쁨
            </td>
            <td>  
            <input type="radio" name="size" value="4" id="size2">&nbsp;&nbsp;보&nbsp;&nbsp;통
            </td>
            <td>  
            <input type="radio" name="size" value="3" id="size3">&nbsp;&nbsp;좋&nbsp;음
            </td>
          </tr>

          <tr style="height: 70px;">
            <td>
              <p style="font-weight: bolder; font-size: medium; margin-bottom: 0;">색상</p>
            </td>
            <td>
              <input type="radio" name="size" value="1" id="size1" style="font-size: medium;">  화면보다 어두움
            </td>
            <td>  
            <input type="radio" name="size" value="4" id="size2">  화면과 동일함
            </td>
            <td>  
            <input type="radio" name="size" value="3" id="size3">  화면보다 밝음
            </td>
          </tr>
        </table>
          </div>
          <br>
          <div class="modal-footer">
            <button type="button" class="btn btn-primary">후기 작성</button>
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
          </div>
      </div>
      </div>
    </div>
  </div>
</div>
  <!-- 모달 끝 -->


    <div class="py-5 row" style="background-color: black;" >
        <div class="col align-self-center ms-5" style="margin-left: 100px;">
            <h1 class="mb-0 fs-1" style="color: rgb(255, 255, 255);">김성택님</h1>   
    
        </div>
        <div class="col text-end" style="margin-right: 100px;">
            <h1 class="mb-0 fs-1" style="color: rgb(255, 255, 255);">다이아</h2>
            <h1 class="mb-0 fs-5" style="color: rgb(255, 255, 255);">등급혜택</h2>
        </div>
       </div>

       <div class="row g-3" style="margin-top: 4%;">
        <div class="col-ms-5 col-lg-2 order-ms-last" style="margin-top: 0px;">
            <h3 style="margin-left: 13%; color: black;">My Page</h3>
            <hr style="border: solid 1px rgb(73, 73, 73); width: 80%; margin-left: 5%;">
          <ul>
            <li class="list-group-item d-flex justify-content-between lh-sm">
              <div>
                <h4><a href="#">회원 정보 수정</a></h4>
                <small class="text-muted">  </small>
              </div>
            </li>
            <li class="list-group-item d-flex justify-content-between lh-sm mt-4">
              <div>
                <h5 class="my-0">나의 정보</h5>
                <br>
                <h6 class="text-muted" style="margin-left: 25px;"><a href="#">찜 목록</a></h6>
                <h6 class="text-muted" style="margin-left: 25px;"><a href="#">픽업 예약 목록</a></h6>
              </div>
            
            </li>

            <li class="list-group-item d-flex justify-content-between lh-sm mt-4">
              <div>
                <h5 class="my-0">매장 문의</h5>
                <br>
                <h6 class="text-muted" style="margin-left: 25px;"><a href="#">나의 문의 내역</a></h6>
                <h6 class="text-muted" style="margin-left: 25px;"><a href="#">문의 작성하기</a></h6>
            </li>

            <li class="list-group-item d-flex justify-content-between bg-light mt-4">
              <div class="text-success">
                <h5 class="my-0"><a href="#">장바구니</a></h5>
              </div>
            </li>

            <li class="list-group-item d-flex justify-content-between mt-5">
                <h5 class="my-0"><a href="#">회원 탈퇴</a></h5>
            </li>
          </ul>
        </div>

        <div class="col-ms-7 col-lg-8" style="margin-top: 0px;">
            <h3 style="margin-left: 30px; color: black; font-weight: bolder;">픽업 예약 목록</h3>

              <table class="table" style="width: 100%; margin-left: 30px;">
                
                <tbody class="table-group-divider">
                    
                  <tr>
                    <th scope="rowspan-3" style="width: 25%;">
                        <svg class="bd-placeholder-img card-img-top" style="margin-left: 20%;" width="120" height="120" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false">
                         <a href="#"><image href="/Users/mj/Desktop/자바 수업/2_슈케팅/2차 화면구현/assets/img/apple-touch-icon.png" height="120" width="120" /></a>
                        </svg>
                    </th>
                
                    <td style="text-align: left; width: 45%; margin-left: 1;">
                        <a href="#"><p style="font-size: small;">예약 번호 : 10299832</p></a>
                        <p style="font-weight: bolder; font-size: large;">VANS</p>
                        <p style="font-weight: bolder;">어센틱 블랙 마쉬멜로우 / VN005U01K19DU</p>
                    </td>
                    <td style="text-align: center; width: 20%; margin-bottom: 1; ">
                        <p style="font-weight: bolder; font-size: large;">79,000원</p>
                        <p style="font-size: medium;">예약 대기중</p>
                        <p style="font-size: small;">2023/02/17</p>
                    </td>
                    <td style="font-weight: bolder; text-align: center;">
                        <br>
                        <p></p>
                        <button type="button" class="btn btn-secondary btn-sm">취소</button>
                        <br>
                    </td>
                  </tr>

                  <tr>
                    <th scope="rowspan-3" style="width: 25%;">
                        <svg class="bd-placeholder-img card-img-top" style="margin-left: 20%;" width="120" height="120" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false">
                            <a href="#"><image href="/Users/mj/Desktop/자바 수업/2_슈케팅/2차 화면구현/assets/img/apple-touch-icon.png" height="120" width="120" /></a>
                        </svg>
                    </th>
                    <td style="text-align: left; width: 45%; margin-bottom: 1;">
                        <a href="#"><p style="font-size: small;">예약 번호 : 10299832</p></a>
                        <p style="font-weight: bolder; font-size: large;">VANS</p>
                        <p style="font-weight: bolder;">어센틱 블랙 마쉬멜로우 / VN005U01K19DU</p>
                    </td>
                    <td style="text-align: center; width: 20%; margin-bottom: 1; ">
                        <p style="font-weight: bolder; font-size: large;">79,000원</p>
                        <p style="font-size: medium;">예약 대기중</p>
                        <p style="font-size: small;">2023/02/17</p>
                    </td>
                    <td style="font-weight: bolder; text-align: center;">
                        <br>
                        <p></p>
                        <button type="button" class="btn btn-secondary btn-sm">취소</button>
                        <br>
                    </td>
                  </tr>

                  <tr>
                   <th scope="rowspan-3" style="width: 25%;">
                        <svg class="bd-placeholder-img card-img-top" style="margin-left: 20%;" width="120" height="120" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false">
                            <a href="#"><image href="/Users/mj/Desktop/자바 수업/2_슈케팅/2차 화면구현/assets/img/apple-touch-icon.png" height="120" width="120" /></a>
                        </svg>
                    </th>
                    <td style="text-align: left; width: 45%; margin-bottom: 1;">
                        <a href="#"><p style="font-size: small;">예약 번호 : 10299832</p></a>
                        <p style="font-weight: bolder; font-size: large;">VANS</p>
                        <p style="font-weight: bolder;">어센틱 블랙 마쉬멜로우 / VN005U01K19DU</p>
                    </td>
                    <td style="text-align: center; width: 20%; margin-bottom: 1; ">
                        <p style="font-weight: bolder; font-size: large;">79,000원</p>
                        <p style="font-size: medium;">예약 대기중</p>
                        <p style="font-size: small;">2023/02/17</p>
                    </td>
                    <td style="font-weight: bolder; text-align: center;">
                        <br>
                        <p></p>
                        <button type="button" class="btn btn-primary btn-sm" data-bs-toggle="modal" data-bs-target="#reviewWrite">후기 작성</button>
                        <br>
                    </td>
                  </tr>

                  <tr>
                    <th scope="rowspan-3" style="width: 25%;">
                         <svg class="bd-placeholder-img card-img-top" style="margin-left: 20%;" width="120" height="120" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false">
                            <a href="#"><image href="/Users/mj/Desktop/자바 수업/2_슈케팅/2차 화면구현/assets/img/apple-touch-icon.png" height="120" width="120" /></a>
                         </svg>
                     </th>
                     <td style="text-align: left; width: 45%; margin-bottom: 1;">
                         <a href="#"><p style="font-size: small;">예약 번호 : 10299832</p></a>
                         <p style="font-weight: bolder; font-size: large;">VANS</p>
                         <p style="font-weight: bolder;">어센틱 블랙 마쉬멜로우 / VN005U01K19DU</p>
                     </td>
                     <td style="text-align: center; width: 20%; margin-bottom: 1; ">
                         <p style="font-weight: bolder; font-size: large;">79,000원</p>
                         <p style="font-size: medium;">예약 대기중</p>
                         <p style="font-size: small;">2023/02/17</p>
                     </td>
                     <td style="font-weight: bolder; text-align: center;">
                         <br>
                         <p></p>
                         <button type="button" class="btn btn-primary btn-sm" data-bs-toggle="modal" data-bs-target="#reviewWrite">후기 작성</button>
                         <br>
                     </td>
                   </tr>
                </tbody>
              </table>

              <nav aria-label="Page navigation example" style="margin-left: 50%;">
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
        </div>
      </div>
</body>
</html>