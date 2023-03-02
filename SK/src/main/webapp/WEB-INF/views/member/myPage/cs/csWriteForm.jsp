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
<div class="modal fade" id="findShop" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content" style="width:600px; height: auto;">
        <div class="modal-header">
          <h1 class="modal-title fs-5" id="exampleModalLabel">매장 찾기</h1>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          <div class="mt-3 ms-3 row-cols-md-1">
            <table style="text-align: center;">
                <tr class="mb-0" style="height: 70px;">
                    <td style="width: 20%;">
                    <label for="exampleFormControlInput1" class="form-label" style="font-size: large; font-weight: bolder;">매장 선택</label>
                    </td>
                    <td>
                    <input type="text" name="MEM_PW" class="form-control" id="exampleFormControlInput1">
                    </td>
                    <td style="width: 25%;">
                        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#findShop">매장 찾기</button>
                    </td>
                </tr>
                <tr>
                <tr class="mb-0" style="height: 30px;">
                    <td style="width: 20%;">
                        <p style="font-weight: bolder; font-size: medium; margin-bottom: 0;">나이키 명동</p>
                    </td>
                    <td>
                    서울특별시 중구 남대문로 78
                    </td>
                    <td style="width: 25%;">
                        <a href="#" style="text-decoration: underline;">선택</a>
                    </td>
                </tr>

                <tr class="mb-0" style="height: 30px; ">
                    <td style="width: 20%;">
                    <p style="font-weight: bolder; font-size: medium; margin-bottom: 0;">나이키 명동</p>
                    </td>
                    <td>
                    서울특별시 중구 남대문로 78
                    </td>
                    <td style="width: 25%;">
                        <a href="#" style="text-decoration: underline;">선택</a>
                    </td>
                </tr>

                <tr class="mb-0" style="height: 30px;">
                    <td style="width: 20%;">
                        <p style="font-weight: bolder; font-size: medium; margin-bottom: 0;">나이키 명동</p>
                    </td>
                    <td>
                    서울특별시 중구 남대문로 78
                    </td>
                    <td style="width: 25%;">
                        <a href="#" style="text-decoration: underline;">선택</a>
                    </td>
                </tr>

                <tr class="mb-0" style="height: 30px;">
                    <td style="width: 20%;">
                        <p style="font-weight: bolder; font-size: medium; margin-bottom: 0;">나이키 명동</p>
                    </td>
                    <td>
                    서울특별시 중구 남대문로 78
                    </td>
                    <td style="width: 25%;">
                    <a href="#" style="text-decoration: underline;">선택</a>
                    </td>
                </tr>

                <tr class="mb-0" style="height: 30px;">
                    <td style="width: 20%;">
                        <p style="font-weight: bolder; font-size: medium; margin-bottom: 0;">나이키 명동</p>
                    </td>
                    <td>
                    서울특별시 중구 남대문로 78
                    </td>
                    <td style="width: 25%;">
                        <a href="#" style="text-decoration: underline;">선택</a>
                    </td>
                </tr>
                </tr>
          </table>
            </div>
            <br>
            <div class="modal-footer">
                <nav aria-label="Page navigation example" style="margin-left: 10%;">
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
      </div>
    </div>
    <!-- 모달 끝 -->

        <div class="col-8" style="margin-top: 0px;">
            <h3 style="margin-left: 30px; color: black; font-weight: bolder;">문의 작성</h3>
            <hr style="border: solid 1px rgb(73, 73, 73); width: 100%; ">
            <div class="row g-2">
                <table style="width: 99%; margin-left: 10px; text-align: center;">
                  <div class="mt-3" style="width: 45%; margin-left: 30%;">
                    <tr class="mt-3 mb-3">
                        <td style="width: 20%; height: 100px;">
                        <label for="exampleFormControlInput1" class="form-label" style="font-size: large; font-weight: bolder;">매장 선택</label>
                        </td>
                        <td>
                        <input type="email" name="MEM_PW" class="form-control" id="exampleFormControlInput1">
                        </td>
                        <td style="width: 25%;">
                            <button type="button" class="btn btn-secondary" data-bs-toggle="modal" data-bs-target="#findShop">매장 찾기</button>
                        </td>
                    </tr>

                    <tbody class="table-group-divider">

                    <tr>
                        <td style="width: 20%; height: 100px;">
                        <label for="exampleFormControlInput1" class="form-label" style="font-size: large; font-weight: bolder;">제  목</label>
                        </td>
                        <td>
                            <input type="email" name="MEM_PW" class="form-control" id="exampleFormControlInput1">
                        </td>
                     </tr>

                     <tbody class="table-group-divider" style="width: 50%;">

                    <tr>
                            <td style="width: 20%; height: 100px;">
                            <label for="exampleFormControlInput1" class="form-label" style="font-size: large; font-weight: bolder; ">내  용</label>
                            </td>
                            <td style="width: 40%;">
                                <textarea class="form-control" id="exampleFormControlTextarea1" rows="10"></textarea>
                            </td>
                    </tr>
                </table>
                <hr style="margin-left: 30px; border: solid 1px rgb(73, 73, 73); width: 100%; ">
                <button style="margin-left: 78%; width: 25%; align-self: center;" type="button" class="btn btn-primary" >등 록</button>
              </div>
      </div>
</body>
</html>