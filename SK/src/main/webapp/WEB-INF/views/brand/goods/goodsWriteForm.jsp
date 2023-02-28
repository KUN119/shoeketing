<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <div class="py-5 row" style="background-color: black;" >
        <div class="col align-self-center ms-5" style="margin-left: 100px;">
            <h1 class="mb-0 fs-1" style="color: rgb(255, 255, 255);">김성택님</h1>   
    
        </div>
        <div class="col text-end" style="margin-right: 100px;">
            <h1 class="mb-0 fs-1" style="color: rgb(255, 255, 255);">다이아</h1>
            <h1 class="mb-0 fs-5" style="color: rgb(255, 255, 255);">등급혜택</h1>
        </div>
       </div>

       <div class="row g-3" style="margin-top: 4%;">
        <div class="col-ms-5 col-lg-2 order-ms-last" style="margin-top: 0px;">
            <h3 style="margin-left: 13%; color: black;">My Page</h3>
            <hr style="border: solid 1px rgb(73, 73, 73); width: 80%; margin-left: 5%;">
          <ul>
            <li class="list-group-item d-flex justify-content-between lh-sm">
              <div>
                <h5><a href="#">기본 정보 수정</a></h5>
                <small class="text-muted">  </small>
              </div>
            </li>
            <li class="list-group-item d-flex justify-content-between lh-sm mt-4">
              <div>
                <h5 class="my-0">상품 관리</h5>
                <br>
                <h6 class="text-muted" style="margin-left: 25px; " ><a href="#">전체 상품 리스트</a></h6>
                <h6 class="text-muted" style="margin-left: 25px; text-decoration: underline; font-weight: bolder;"><a href="#">상품 등록</a></h6>
              </div>
            
            </li>

            <li class="list-group-item d-flex justify-content-between lh-sm mt-4">
              <div>
                <h5 class="my-0">매장 관리</h5>
                <br>
                <h6 class="text-muted" style="margin-left: 25px;"><a href="#">입점 매장 리스트</a></h6>
                <h6 class="text-muted" style="margin-left: 25px;"><a href="#">매장 가입 승인</a></h6>
            </li>
          </ul>
        </div>

        <div class="col-ms-7 col-lg-8" style="margin-top: 0px;">
            <h3 style="margin-left: 30px; color: black; font-weight: bolder;">상품 등록</h3>
            <div class="row g-2">
                <div class="mb-3 mt-4" style="width: 70%; margin-left: 30px;">
                    <label for="exampleFormControlInput1" class="form-label" style="font-size: large; font-weight: bolder;">상품명</label>
                    <input class="form-control" type="text" placeholder="상품명을 입력하세요." aria-label="Disabled input example">
                  </div>
                  <hr class="my-4">
                  <div class="mb-3" style="width: 70%; margin-left: 30px;">
                    <label for="exampleFormControlInput1" class="form-label" style="font-size: large; font-weight: bolder;">모델 번호</label>
                    <input type="email" name="MEM_PW" class="form-control" placeholder="모델 번호를 입력하세요." id="exampleFormControlInput1">
                  </div>
                  <hr class="my-4">
                  <div class="mb-3" style="width: 70%; margin-left: 30px;">
                    <label for="exampleFormControlInput1" class="form-label" style="font-size: large; font-weight: bolder;">카테고리</label>
                    <select class="form-select form-select-sm" aria-label=".form-select-sm example">
                        <option selected>선택</option>
                        <option value="1">운동화</option>
                        <option value="2">샌들</option>
                        <option value="3">슬리퍼</option>
                      </select>
                  </div>
                  <hr class="my-4">
                  <div class="mb-3" style="width: 60%; margin-left: 30px;">
                
                    <label for="exampleFormControlInput1" class="form-label" style="font-size: large; font-weight: bolder;">가격</label>
                <table>
                    <tr>
                        <td style="width: 70%; ">
                    <input class="form-control" type="text" placeholder="가격을 입력하세요" aria-label="Disabled input example">
                </td>
                    <td>
                    <p style="margin-bottom: -15px; font-size: larger; margin-left: 5px;">원</p>
                    </td>
                    </tr>
                </table>
                  </div>
 <hr class="my-4">
                  <div class="mb-3" style="width: 70%; margin-left: 30px;">
                    <label for="exampleFormControlInput1" class="form-label" style="font-size: large; font-weight: bolder;">사이즈</label>
                    <table>
                        <tr>
                            <td>
                    <div class="form-check col-3 ps-0 pe-1 align-self-center">
                        
                        <input
                          type="checkbox"
                          class="btn-check"
                          name="sizeType"
                          id="size_200"
                          autocomplete="off"
                          value="200"
                        />
                        <label
                          class="btn btn-outline-secondary"
                          for="size_200"
                          style="width: 45px; height: 25px"
                          ><p style="position: relative; bottom: 7px; right: 5px">
                            200
                          </p></label
                        >
                      </div>
                      </td>
                      <td>
                      <div class="form-check col-3 ps-0 pe-1 align-self-center">
                        <input
                          type="checkbox"
                          class="btn-check"
                          name="sizeType"
                          id="size_205"
                          autocomplete="off"
                          value="205"
                        />
                        <label
                          class="btn btn-outline-secondary"
                          for="size_205"
                          style="width: 45px; height: 25px"
                          ><p style="position: relative; bottom: 7px; right: 5px">
                            205
                          </p>
                        </label>
                   
                      </div>
                      </td>

                      <td>
                        <div class="form-check col-3 ps-0 pe-1 align-self-center">
                          <input
                            type="checkbox"
                            class="btn-check"
                            name="sizeType"
                            id="size_210"
                            autocomplete="off"
                            value="210"
                          />
                          <label
                            class="btn btn-outline-secondary"
                            for="size_210"
                            style="width: 45px; height: 25px"
                            ><p style="position: relative; bottom: 7px; right: 5px">
                              210
                            </p>
                          </label>
                     
                        </div>
                        </td>

                        <td>
                            <div class="form-check col-3 ps-0 pe-1 align-self-center">
                              <input
                                type="checkbox"
                                class="btn-check"
                                name="sizeType"
                                id="size_215"
                                autocomplete="off"
                                value="215"
                              />
                              <label
                                class="btn btn-outline-secondary"
                                for="size_215"
                                style="width: 45px; height: 25px"
                                ><p style="position: relative; bottom: 7px; right: 5px">
                                  215
                                </p>
                              </label>
                         
                            </div>
                            </td>

                            <td>
                                <div class="form-check col-3 ps-0 pe-1 align-self-center">
                                  <input
                                    type="checkbox"
                                    class="btn-check"
                                    name="sizeType"
                                    id="size_220"
                                    autocomplete="off"
                                    value="220"
                                  />
                                  <label
                                    class="btn btn-outline-secondary"
                                    for="size_220"
                                    style="width: 45px; height: 25px"
                                    ><p style="position: relative; bottom: 7px; right: 5px">
                                      220
                                    </p>
                                  </label>
                             
                                </div>
                                </td>

                                <td>
                                    <div class="form-check col-3 ps-0 pe-1 align-self-center">
                                      <input
                                        type="checkbox"
                                        class="btn-check"
                                        name="sizeType"
                                        id="size_225"
                                        autocomplete="off"
                                        value="225"
                                      />
                                      <label
                                        class="btn btn-outline-secondary"
                                        for="size_225"
                                        style="width: 45px; height: 25px"
                                        ><p style="position: relative; bottom: 7px; right: 5px">
                                          225
                                        </p>
                                      </label>
                                 
                                    </div>
                                    </td>

                                    <td>
                                        <div class="form-check col-3 ps-0 pe-1 align-self-center">
                                          <input
                                            type="checkbox"
                                            class="btn-check"
                                            name="sizeType"
                                            id="size_230"
                                            autocomplete="off"
                                            value="230"
                                          />
                                          <label
                                            class="btn btn-outline-secondary"
                                            for="size_230"
                                            style="width: 45px; height: 25px"
                                            ><p style="position: relative; bottom: 7px; right: 5px">
                                              230
                                            </p>
                                          </label>
                                     
                                        </div>
                                        </td>

                                        <td>
                                            <div class="form-check col-3 ps-0 pe-1 align-self-center">
                                              <input
                                                type="checkbox"
                                                class="btn-check"
                                                name="sizeType"
                                                id="size_235"
                                                autocomplete="off"
                                                value="235"
                                              />
                                              <label
                                                class="btn btn-outline-secondary"
                                                for="size_235"
                                                style="width: 45px; height: 25px"
                                                ><p style="position: relative; bottom: 7px; right: 5px">
                                                  235
                                                </p>
                                              </label>
                                         
                                            </div>
                                            </td>

                                            <td>
                                                <div class="form-check col-3 ps-0 pe-1 align-self-center">
                                                  <input
                                                    type="checkbox"
                                                    class="btn-check"
                                                    name="sizeType"
                                                    id="size_240"
                                                    autocomplete="off"
                                                    value="240"
                                                  />
                                                  <label
                                                    class="btn btn-outline-secondary"
                                                    for="size_240"
                                                    style="width: 45px; height: 25px"
                                                    ><p style="position: relative; bottom: 7px; right: 5px">
                                                      240
                                                    </p>
                                                  </label>
                                             
                                                </div>
                                                </td>

                                                <td>
                                                    <div class="form-check col-3 ps-0 pe-1 align-self-center">
                                                      <input
                                                        type="checkbox"
                                                        class="btn-check"
                                                        name="sizeType"
                                                        id="size_245"
                                                        autocomplete="off"
                                                        value="245"
                                                      />
                                                      <label
                                                        class="btn btn-outline-secondary"
                                                        for="size_245"
                                                        style="width: 45px; height: 25px"
                                                        ><p style="position: relative; bottom: 7px; right: 5px">
                                                          245
                                                        </p>
                                                      </label>
                                                 
                                                    </div>
                                                    </td>
                    </tr>

                    <tr>
                        <td>
                    <div class="form-check col-3 ps-0 pe-1 align-self-center">
                    
                    <input
                      type="checkbox"
                      class="btn-check"
                      name="sizeType"
                      id="size_250"
                      autocomplete="off"
                      value="250"
                    />
                    <label
                      class="btn btn-outline-secondary"
                      for="size_250"
                      style="width: 45px; height: 25px"
                      ><p style="position: relative; bottom: 7px; right: 5px">
                        250
                      </p></label
                    >
                  </div>
                  </td>
                  <td>
                  <div class="form-check col-3 ps-0 pe-1 align-self-center">
                    <input
                      type="checkbox"
                      class="btn-check"
                      name="sizeType"
                      id="size_255"
                      autocomplete="off"
                      value="255"
                    />
                    <label
                      class="btn btn-outline-secondary"
                      for="size_255"
                      style="width: 45px; height: 25px"
                      ><p style="position: relative; bottom: 7px; right: 5px">
                        255
                      </p>
                    </label>
               
                  </div>
                  </td>

                  <td>
                    <div class="form-check col-3 ps-0 pe-1 align-self-center">
                      <input
                        type="checkbox"
                        class="btn-check"
                        name="sizeType"
                        id="size_260"
                        autocomplete="off"
                        value="260"
                      />
                      <label
                        class="btn btn-outline-secondary"
                        for="size_260"
                        style="width: 45px; height: 25px"
                        ><p style="position: relative; bottom: 7px; right: 5px">
                          260
                        </p>
                      </label>
                 
                    </div>
                    </td>

                    <td>
                        <div class="form-check col-3 ps-0 pe-1 align-self-center">
                          <input
                            type="checkbox"
                            class="btn-check"
                            name="sizeType"
                            id="size_265"
                            autocomplete="off"
                            value="265"
                          />
                          <label
                            class="btn btn-outline-secondary"
                            for="size_265"
                            style="width: 45px; height: 25px"
                            ><p style="position: relative; bottom: 7px; right: 5px">
                              265
                            </p>
                          </label>
                     
                        </div>
                        </td>

                        <td>
                            <div class="form-check col-3 ps-0 pe-1 align-self-center">
                              <input
                                type="checkbox"
                                class="btn-check"
                                name="sizeType"
                                id="size_270"
                                autocomplete="off"
                                value="270"
                              />
                              <label
                                class="btn btn-outline-secondary"
                                for="size_270"
                                style="width: 45px; height: 25px"
                                ><p style="position: relative; bottom: 7px; right: 5px">
                                  270
                                </p>
                              </label>
                         
                            </div>
                            </td>

                            <td>
                                <div class="form-check col-3 ps-0 pe-1 align-self-center">
                                  <input
                                    type="checkbox"
                                    class="btn-check"
                                    name="sizeType"
                                    id="size_275"
                                    autocomplete="off"
                                    value="275"
                                  />
                                  <label
                                    class="btn btn-outline-secondary"
                                    for="size_275"
                                    style="width: 45px; height: 25px"
                                    ><p style="position: relative; bottom: 7px; right: 5px">
                                      275
                                    </p>
                                  </label>
                             
                                </div>
                                </td>

                                <td>
                                    <div class="form-check col-3 ps-0 pe-1 align-self-center">
                                      <input
                                        type="checkbox"
                                        class="btn-check"
                                        name="sizeType"
                                        id="size_280"
                                        autocomplete="off"
                                        value="280"
                                      />
                                      <label
                                        class="btn btn-outline-secondary"
                                        for="size_280"
                                        style="width: 45px; height: 25px"
                                        ><p style="position: relative; bottom: 7px; right: 5px">
                                          280
                                        </p>
                                      </label>
                                 
                                    </div>
                                    </td>

                                    <td>
                                        <div class="form-check col-3 ps-0 pe-1 align-self-center">
                                          <input
                                            type="checkbox"
                                            class="btn-check"
                                            name="sizeType"
                                            id="size_285"
                                            autocomplete="off"
                                            value="285"
                                          />
                                          <label
                                            class="btn btn-outline-secondary"
                                            for="size_285"
                                            style="width: 45px; height: 25px"
                                            ><p style="position: relative; bottom: 7px; right: 5px">
                                              285
                                            </p>
                                          </label>
                                     
                                        </div>
                                        </td>

                                        <td>
                                            <div class="form-check col-3 ps-0 pe-1 align-self-center">
                                              <input
                                                type="checkbox"
                                                class="btn-check"
                                                name="sizeType"
                                                id="size_290"
                                                autocomplete="off"
                                                value="290"
                                              />
                                              <label
                                                class="btn btn-outline-secondary"
                                                for="size_290"
                                                style="width: 45px; height: 25px"
                                                ><p style="position: relative; bottom: 7px; right: 5px">
                                                  290
                                                </p>
                                              </label>
                                         
                                            </div>
                                            </td>

                                            <td>
                                                <div class="form-check col-3 ps-0 pe-1 align-self-center">
                                                  <input
                                                    type="checkbox"
                                                    class="btn-check"
                                                    name="sizeType"
                                                    id="size_295"
                                                    autocomplete="off"
                                                    value="295"
                                                  />
                                                  <label
                                                    class="btn btn-outline-secondary"
                                                    for="size_295"
                                                    style="width: 45px; height: 25px"
                                                    ><p style="position: relative; bottom: 7px; right: 5px">
                                                      295
                                                    </p>
                                                  </label>
                                             
                                                </div>
                                                </td>
                </tr>
                    </table>
                  </div>         
                  <hr class="my-4">
                <div class="mb-3" style="width: 70%; margin-left: 30px;">
                    <table>
                        <label for="exampleFormControlInput1" class="form-label" style="font-size: large; font-weight: bolder;">사진</label>
                        <tr>
                        <td style="width: 70%;">
                            <div class="mb-3">
                                <input class="form-control" type="file"  multiple="multiple" accept="image/jpg, image/jpeg, image/png" id="img_upload" name="img_upload" onchange="preview()">
                              </div>
                        </tr>
                    </div>
                    </table>
                </div>  
                
                <hr class="my-4">
                <button class="btn btn-primary btn-lg" style="margin-left: 30%; width: 45%;" type="submit">상품 등록</button>
            </div>
        </div>
             </div>
</body>
</html>