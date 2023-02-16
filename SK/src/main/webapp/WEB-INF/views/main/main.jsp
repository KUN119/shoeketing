<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
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
      </div>
    </div>
</body>
</html>