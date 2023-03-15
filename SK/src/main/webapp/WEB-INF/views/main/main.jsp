<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<div class="container" style="width:100vw">
	<div class="row">
      <div class="portfolio-details-slider swiper">
        <div class="swiper-wrapper align-items-center">
          <div class="swiper-slide">
            <img src="<%=request.getContextPath() %>/assets/img/메인사진1.jpg" alt="" />
          </div>

          <div class="swiper-slide">
            <img src="<%=request.getContextPath() %>/assets/img/메인사진2.jpg" alt="" />
          </div>

          <div class="swiper-slide">
            <img src="<%=request.getContextPath() %>/assets/img/메인사진3.jpg" alt="" />
          </div>
        </div>
        
        <div
          style="z-index: 9999; position: relative; bottom: 12rem; left: 50rem"
        >
          <div class="col-auto" style="display: inline-block;">
            <a href="#">
              <h1 style="color: white; display: inline-block;">실시간 재고검색</h1>
              <i
                class="bi bi-arrow-right-circle-fill align-self-center ms-3 mb-3"
                style="font-size: 30px; color: white"
              ></i>
            </a>
          </div>
        </div>
        
      </div>
    </div>
</div>
</body>
</html>