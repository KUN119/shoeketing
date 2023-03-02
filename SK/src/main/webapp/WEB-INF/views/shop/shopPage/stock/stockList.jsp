<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="col-ms-7 col-lg-8" style="margin-top: 0px;">
            <table>
                <tr>
                    <td style="width:250px;">
            <h3 style="margin-left: 30px; color: black; font-weight: bolder;">재고 관리</h3>
            </td>
            <td>
                    <div class="dropdown" style="margin-left: 550px; margin-right: 20px;">
                        <button class="btn btn-secondary btn-md dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                          검색 조건
                        </button>
                        <ul class="dropdown-menu">
                          <li><button class="dropdown-item" type="button">모델명</button></li>
                          <li><button class="dropdown-item" type="button">모델 번호</button></li>
                        </ul>
                    </div>
            </td>
            <td>
                    <div class="search" style="width: 90%;" >
                        <input type="text" placeholder="검색어 입력">
                        <img src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png">
                      </div>

            </td>
            </tr>
        </table>
        
              <table class="table" style="width: 100%; margin-left: 30px;">
                
                <tbody class="table-group-divider">
                    
                  <tr>
                    <th scope="rowspan-3" style="width: 25%;">
                        <svg class="bd-placeholder-img card-img-top" style="margin-left: 20%;" width="120" height="120" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false">
                         <a href="#"><image href="/Users/mj/Desktop/자바 수업/2_슈케팅/2차 화면구현/assets/img/apple-touch-icon.png" height="120" width="120" /></a>
                        </svg>
                    </th>
                
                    <td style="text-align: left; width: 35%; margin-left: 1;">
                        <p style="font-weight: bolder; font-size: large;">VANS</p>
                        <p style="font-weight: bolder;">어센틱 블랙 마쉬멜로우 / VN005U01K19DU</p>
                        <p style="font-size: small;">사이즈 : 245mm</p>
                    </td>
                    <td style="text-align: center; width: 10%; margin-bottom: 1; ">
                        <p style="font-weight: bolder; font-size: large; margin-top: 20%;">79,000원</p>
                    </td>
                    <td style="font-weight: bolder; text-align: center;">
                        <br>
                        <p></p>
                        <select class="form-select form-select-sm" aria-label=".form-select-sm example" style="text-align: center;">
                            <option selected>재고 수량</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                            <option value="6">6</option>
                            <option value="7">7</option>
                            <option value="8">8</option>
                            <option value="9">9</option>
                            <option value="10">10</option>
                          </select>
                        <br>
                    </td>
                  </tr>

                  <tr>
                    <th scope="rowspan-3" style="width: 25%;">
                        <svg class="bd-placeholder-img card-img-top" style="margin-left: 20%;" width="120" height="120" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false">
                            <a href="#"><image href="/Users/mj/Desktop/자바 수업/2_슈케팅/2차 화면구현/assets/img/apple-touch-icon.png" height="120" width="120" /></a>
                        </svg>
                    </th>
                    <td style="text-align: left; width: 35%; margin-left: 1;">
                        <p style="font-weight: bolder; font-size: large;">VANS</p>
                        <p style="font-weight: bolder;">어센틱 블랙 마쉬멜로우 / VN005U01K19DU</p>
                        <p style="font-size: small;">사이즈 : 215mm</p>
                    </td>
                    <td style="text-align: center; width: 20%; margin-bottom: 1; ">
                        <p style="font-weight: bolder; font-size: large; margin-top: 20%;">79,000원</p>
                    </td>
                    <td style="font-weight: bolder; text-align: center;">
                        <br>
                        <p></p>
                        <select class="form-select form-select-sm" aria-label=".form-select-sm example" style="text-align: center;">
                            <option selected>재고 수량</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                            <option value="6">6</option>
                            <option value="7">7</option>
                            <option value="8">8</option>
                            <option value="9">9</option>
                            <option value="10">10</option>
                          </select>
                        <br>
                    </td>
                  </tr>

                  <tr>
                   <th scope="rowspan-3" style="width: 25%;">
                        <svg class="bd-placeholder-img card-img-top" style="margin-left: 20%;" width="120" height="120" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false">
                            <a href="#"><image href="/Users/mj/Desktop/자바 수업/2_슈케팅/2차 화면구현/assets/img/apple-touch-icon.png" height="120" width="120" /></a>
                        </svg>
                    </th>
                    <td style="text-align: left; width: 35%; margin-left: 1;">
                        <p style="font-weight: bolder; font-size: large;">VANS</p>
                        <p style="font-weight: bolder;">어센틱 블랙 마쉬멜로우 / VN005U01K19DU</p>
                        <p style="font-size: small;">사이즈 : 225mm</p>
                    </td>
                    <td style="text-align: center; width: 10%; margin-bottom: 1; ">
                        <p style="font-weight: bolder; font-size: large; margin-top: 20%;">79,000원</p>
                    </td>
                    <td style="font-weight: bolder; text-align: center;">
                        <br>
                        <p></p>
                        <select class="form-select form-select-sm" aria-label=".form-select-sm example" style="text-align: center;">
                            <option selected>재고 수량</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                            <option value="6">6</option>
                            <option value="7">7</option>
                            <option value="8">8</option>
                            <option value="9">9</option>
                            <option value="10">10</option>
                          </select>
                        <br>
                    </td>
                  </tr>

                  <tr>
                    <th scope="rowspan-3" style="width: 25%;">
                         <svg class="bd-placeholder-img card-img-top" style="margin-left: 20%;" width="120" height="120" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false">
                            <a href="#"><image href="/Users/mj/Desktop/자바 수업/2_슈케팅/2차 화면구현/assets/img/apple-touch-icon.png" height="120" width="120" /></a>
                         </svg>
                     </th>
                     <td style="text-align: left; width: 35%; margin-left: 1;">
                        <p style="font-weight: bolder; font-size: large;">VANS</p>
                        <p style="font-weight: bolder;">어센틱 블랙 마쉬멜로우 / VN005U01K19DU</p>
                        <p style="font-size: small;">사이즈 : 220mm</p>
                    </td>
                    <td style="text-align: center; width: 10%; margin-bottom: 1; ">
                        <p style="font-weight: bolder; font-size: large; margin-top: 20%;">79,000원</p>
                    </td>
                    <td style="font-weight: bolder; text-align: center;">
                        <br>
                        <p></p>
                        <select class="form-select form-select-sm" aria-label=".form-select-sm example" style="text-align: center;">
                            <option selected>재고 수량</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                            <option value="6">6</option>
                            <option value="7">7</option>
                            <option value="8">8</option>
                            <option value="9">9</option>
                            <option value="10">10</option>
                          </select>
                        <br>
                    </td>
                   </tr>
                </tbody>
              </table>

              <button class="btn btn-primary btn-md" style="margin-left: 90%; width: 10%;" type="submit">저장</button>
              <hr class="my-4" style="margin-left: 30px; width: 100%;">
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
</body>
</html>