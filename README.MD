# SHOEKETING
## 1팀 2차 프로젝트

- #### 개발 목표
SHOEKETING은 신발 재고관리 및 픽업 예약 사이트입니다.
일반회원은 실시간으로 브랜드/상품/사이즈/매장에 따라 신발 재고를 확인 할 수 있으며, 원하는 제품에 대한 픽업 예약 기능을 제공합니다.
매장회원에게 매장에서 보유하고 있는 상품에 대한 픽업 예약 관리와 재고 관리 기능을 제공하며,
브랜드회원에게는 해당 브랜드 상품의 등록, 수정, 삭제 기능과 새로운 매장의 입점 요청 관리 기능을 제공합니다.

- ### SHOEKETING 핵심 기능
#### 일반회원
1. 브랜드/상품/사이즈/매장별 신발 재고 수량 및 매장 위치 확인<br/>
https://github.com/taek-s/shoeketing/blob/master/SK/src/main/webapp/WEB-INF/views/goods/search/stockSearchForm.jsp<br/>
https://github.com/taek-s/shoeketing/blob/master/SK/src/main/java/sk/item/controller/StockController.java<br/>
https://github.com/taek-s/shoeketing/blob/master/SK/src/main/java/sk/item/service/StockServiceImpl.java<br/>
2. 원하는 상품을 픽업할 날짜 선택 후 토스페이먼츠로 예약금 결제<br/>
https://github.com/taek-s/shoeketing/blob/master/SK/src/main/webapp/WEB-INF/views/goods/search/stockSearchForm.jsp<br/>
https://github.com/taek-s/shoeketing/blob/master/SK/src/main/java/sk/item/controller/TossPaymentsController.java<br/>
3. 장바구니에서 여러 상품을 동시에 픽업 예약<br/>
https://github.com/taek-s/shoeketing/blob/master/SK/src/main/webapp/WEB-INF/views/member/myPage/basket/basketList.jsp<br/>
https://github.com/taek-s/shoeketing/blob/master/SK/src/main/java/sk/item/controller/BasketController.java<br/>
https://github.com/taek-s/shoeketing/blob/master/SK/src/main/java/sk/item/service/BasketServiceImpl.java<br/>
#### 매장회원
1. 매장에서 보유하고 있는 상품의 재고 수량 관리<br/>
https://github.com/taek-s/shoeketing/blob/master/SK/src/main/webapp/WEB-INF/views/shop/shopPage/stock/stockList.jsp<br/>
https://github.com/taek-s/shoeketing/blob/master/SK/src/main/java/sk/item/controller/StockController.java<br/>
https://github.com/taek-s/shoeketing/blob/master/SK/src/main/java/sk/item/service/StockServiceImpl.java<br/>
2. 매장에 요청된 픽업 예약 관리<br/>
https://github.com/taek-s/shoeketing/blob/master/SK/src/main/webapp/WEB-INF/views/shop/shopPage/reservation/reservationRequestList.jsp<br/>
https://github.com/taek-s/shoeketing/blob/master/SK/src/main/java/sk/item/controller/ReservationController.java<br/>
https://github.com/taek-s/shoeketing/blob/master/SK/src/main/java/sk/item/service/ReservationServiceImpl.java<br/>
#### 브랜드회원
1. 해당 브랜드 상품 등록 및 수정, 삭제<br/>
https://github.com/taek-s/shoeketing/blob/master/SK/src/main/webapp/WEB-INF/views/brand/goods/goodsList.jsp<br/>
https://github.com/taek-s/shoeketing/blob/master/SK/src/main/webapp/WEB-INF/views/brand/goods/goodsWriteForm.jsp<br/>
https://github.com/taek-s/shoeketing/blob/master/SK/src/main/java/sk/item/controller/GoodsController.java<br/>
https://github.com/taek-s/shoeketing/blob/master/SK/src/main/java/sk/item/service/GoodsServiceImpl.java<br/>
2. 매장의 입점 요청 승인 관리<br/>
https://github.com/taek-s/shoeketing/blob/master/SK/src/main/webapp/WEB-INF/views/brand/shop/shopRequestList.jsp<br/>
https://github.com/taek-s/shoeketing/blob/master/SK/src/main/java/sk/myPage/controller/BrandPageController.java<br/>
https://github.com/taek-s/shoeketing/blob/master/SK/src/main/java/sk/myPage/service/BrandPageServiceImpl.java<br/>
