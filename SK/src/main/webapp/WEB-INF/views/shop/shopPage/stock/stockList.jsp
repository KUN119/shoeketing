<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <div class="col-10" style="margin-top: 0px">
      <table>
        <tr>
          <td class="col-9">
            <h3 style="margin-left: 30px; color: black; font-weight: bolder">
              재고 관리
            </h3>
          </td>

          <td class="col-3">
            <div class="col input-group">
              <select
                class="form-select-sm"
                style="width: 4rem; border-color: rgba(0, 0, 0, 0.263)"
                id="searchType"
                name="searchType"
              >
                <option selected value="total">전체</option>
                <option value="title">제목</option>
                <option value="content">내용</option>
              </select>
              <input
                type="text"
                class="form-control"
                name="keyword"
                id="keyword"
              />
              <button
                class="btn btn-outline-secondary"
                type="button"
                id="button-addon2"
                name="noticeSearch"
              >
                검색
              </button>
            </div>
          </td>
        </tr>
      </table>

      <table class="table" style="width: 100%; margin-left: 30px">
        <tbody class="table-group-divider">
          <tr>
            <th scope="rowspan-3" style="width: 25%">
              <svg
                class="bd-placeholder-img card-img-top"
                style="margin-left: 20%"
                width="120"
                height="120"
                xmlns="http://www.w3.org/2000/svg"
                role="img"
                aria-label="Placeholder: Thumbnail"
                preserveAspectRatio="xMidYMid slice"
                focusable="false"
              >
                <a href="#">
                  <image
                    href="/Users/mj/Desktop/자바 수업/2_슈케팅/2차 화면구현/assets/img/apple-touch-icon.png"
                    height="120"
                    width="120"
                  />
                </a>
              </svg>
            </th>

            <td
              style="
                text-align: left;
                width: 35%;
                margin-left: 1;
                vertical-align: middle;
              "
            >
              <p style="font-weight: bolder; font-size: large">VANS</p>
              <p style="font-weight: bolder">
                어센틱 블랙 마쉬멜로우 / VN005U01K19DU
              </p>
              <p style="font-size: small">사이즈 : 245mm</p>
            </td>
            <td
              style="
                text-align: center;
                width: 10%;
                margin-bottom: 1;
                vertical-align: middle;
              "
            >
              <p class="mb-0" style="font-weight: bolder; font-size: large">79,000원</p>
            </td>
            <td
              style="
                font-weight: bolder;
                text-align: center;
                vertical-align: middle;
              "
            >
              <div class="row justify-content-center">
                <input
                  class="form-control form-control-sm text-center"
                  type="text"
                  style="width: 5rem"
                  value="0"
                  placeholder="재고"
                />
              </div>
            </td>
          </tr>

          <tr>
            <th scope="rowspan-3" style="width: 25%">
              <svg
                class="bd-placeholder-img card-img-top"
                style="margin-left: 20%"
                width="120"
                height="120"
                xmlns="http://www.w3.org/2000/svg"
                role="img"
                aria-label="Placeholder: Thumbnail"
                preserveAspectRatio="xMidYMid slice"
                focusable="false"
              >
                <a href="#">
                  <image
                    href="/Users/mj/Desktop/자바 수업/2_슈케팅/2차 화면구현/assets/img/apple-touch-icon.png"
                    height="120"
                    width="120"
                  />
                </a>
              </svg>
            </th>

            <td
              style="
                text-align: left;
                width: 35%;
                margin-left: 1;
                vertical-align: middle;
              "
            >
              <p style="font-weight: bolder; font-size: large">VANS</p>
              <p style="font-weight: bolder">
                어센틱 블랙 마쉬멜로우 / VN005U01K19DU
              </p>
              <p style="font-size: small">사이즈 : 245mm</p>
            </td>
            <td
              style="
                text-align: center;
                width: 10%;
                margin-bottom: 1;
                vertical-align: middle;
              "
            >
              <p class="mb-0" style="font-weight: bolder; font-size: large">79,000원</p>
            </td>
            <td
              style="
                font-weight: bolder;
                text-align: center;
                vertical-align: middle;
              "
            >
              <div class="row justify-content-center">
                <input
                  class="form-control form-control-sm text-center"
                  type="text"
                  style="width: 5rem"
                  value="0"
                  placeholder="재고"
                />
              </div>
            </td>
          </tr>

          <tr>
            <th scope="rowspan-3" style="width: 25%">
              <svg
                class="bd-placeholder-img card-img-top"
                style="margin-left: 20%"
                width="120"
                height="120"
                xmlns="http://www.w3.org/2000/svg"
                role="img"
                aria-label="Placeholder: Thumbnail"
                preserveAspectRatio="xMidYMid slice"
                focusable="false"
              >
                <a href="#">
                  <image
                    href="/Users/mj/Desktop/자바 수업/2_슈케팅/2차 화면구현/assets/img/apple-touch-icon.png"
                    height="120"
                    width="120"
                  />
                </a>
              </svg>
            </th>

            <td
              style="
                text-align: left;
                width: 35%;
                margin-left: 1;
                vertical-align: middle;
              "
            >
              <p style="font-weight: bolder; font-size: large">VANS</p>
              <p style="font-weight: bolder">
                어센틱 블랙 마쉬멜로우 / VN005U01K19DU
              </p>
              <p style="font-size: small">사이즈 : 245mm</p>
            </td>
            <td
              style="
                text-align: center;
                width: 10%;
                margin-bottom: 1;
                vertical-align: middle;
              "
            >
              <p class="mb-0" style="font-weight: bolder; font-size: large">79,000원</p>
            </td>
            <td
              style="
                font-weight: bolder;
                text-align: center;
                vertical-align: middle;
              "
            >
              <div class="row justify-content-center">
                <input
                  class="form-control form-control-sm text-center"
                  type="text"
                  style="width: 5rem"
                  value="0"
                  placeholder="재고"
                />
              </div>
            </td>
          </tr>

          <tr>
            <th scope="rowspan-3" style="width: 25%">
              <svg
                class="bd-placeholder-img card-img-top"
                style="margin-left: 20%"
                width="120"
                height="120"
                xmlns="http://www.w3.org/2000/svg"
                role="img"
                aria-label="Placeholder: Thumbnail"
                preserveAspectRatio="xMidYMid slice"
                focusable="false"
              >
                <a href="#">
                  <image
                    href="/Users/mj/Desktop/자바 수업/2_슈케팅/2차 화면구현/assets/img/apple-touch-icon.png"
                    height="120"
                    width="120"
                  />
                </a>
              </svg>
            </th>

            <td
              style="
                text-align: left;
                width: 35%;
                margin-left: 1;
                vertical-align: middle;
              "
            >
              <p style="font-weight: bolder; font-size: large">VANS</p>
              <p style="font-weight: bolder">
                어센틱 블랙 마쉬멜로우 / VN005U01K19DU
              </p>
              <p style="font-size: small">사이즈 : 245mm</p>
            </td>
            <td
              style="
                text-align: center;
                width: 10%;
                margin-bottom: 1;
                vertical-align: middle;
              "
            >
              <p class="mb-0" style="font-weight: bolder; font-size: large">79,000원</p>
            </td>
            <td
              style="
                font-weight: bolder;
                text-align: center;
                vertical-align: middle;
              "
            >
              <div class="row justify-content-center">
                <input
                  class="form-control form-control-sm text-center"
                  type="text"
                  style="width: 5rem"
                  value="0"
                  placeholder="재고"
                />
              </div>
            </td>
          </tr>

          <tr>
            <th scope="rowspan-3" style="width: 25%">
              <svg
                class="bd-placeholder-img card-img-top"
                style="margin-left: 20%"
                width="120"
                height="120"
                xmlns="http://www.w3.org/2000/svg"
                role="img"
                aria-label="Placeholder: Thumbnail"
                preserveAspectRatio="xMidYMid slice"
                focusable="false"
              >
                <a href="#">
                  <image
                    href="/Users/mj/Desktop/자바 수업/2_슈케팅/2차 화면구현/assets/img/apple-touch-icon.png"
                    height="120"
                    width="120"
                  />
                </a>
              </svg>
            </th>

            <td
              style="
                text-align: left;
                width: 35%;
                margin-left: 1;
                vertical-align: middle;
              "
            >
              <p style="font-weight: bolder; font-size: large">VANS</p>
              <p style="font-weight: bolder">
                어센틱 블랙 마쉬멜로우 / VN005U01K19DU
              </p>
              <p style="font-size: small">사이즈 : 245mm</p>
            </td>
            <td
              style="
                text-align: center;
                width: 10%;
                margin-bottom: 1;
                vertical-align: middle;
              "
            >
              <p class="mb-0" style="font-weight: bolder; font-size: large">79,000원</p>
            </td>
            <td
              style="
                font-weight: bolder;
                text-align: center;
                vertical-align: middle;
              "
            >
              <div class="row justify-content-center">
                <input
                  class="form-control form-control-sm text-center"
                  type="text"
                  style="width: 5rem"
                  value="0"
                  placeholder="재고"
                />
              </div>
            </td>
          </tr>
        </tbody>
      </table>

      <button
        class="btn btn-primary btn-md"
        style="margin-left: 90%; width: 10%"
        type="submit"
      >
        저장
      </button>
      <hr class="my-4" style="margin-left: 30px; width: 100%" />
      <nav aria-label="Page navigation example" style="margin-left: 50%">
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