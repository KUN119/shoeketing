<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/include-taglib.jspf"%>
	<table
        class="table table-bordered text-center mt-5"
        style="border-left-color: white; border-right-color: white"
      >
        <thead>
          <tr style="font-size: 12px; font-weight: 400">
            <th class="col-3" scope="col">매장명</th>
            <th
              class="col-1"
              scope="col"
              style="border-right-color: rgba(0, 0, 0, 0.121)"
            >
              재고보유여부
            </th>
            <th class="col-3" scope="col">매장명</th>
            <th
              class="col-1"
              scope="col"
              style="border-right-color: rgba(0, 0, 0, 0.121)"
            >
              재고보유여부
            </th>
            <th class="col-3" scope="col">매장명</th>
            <th class="col-1" scope="col">재고보유여부</th>
          </tr>
        </thead>
        <tbody class="table-group-divider">
        <c:choose>
        	<c:when test="${fn:length(shopList) == 0 }">
        		<tr>
        			<td colspan="6">검색하신 재고를 보유하는 매장이 존재하지 않습니다.</td>
        		</tr>
        	</c:when>
        	<c:otherwise>
	        	<c:forEach begin="1" end="${(fn:length(shopList) - 1) / 3 + 1 }" varStatus="num">
	        		<tr>
	        			<c:forEach begin="${num.index*3-2 }" end="${num.index*3 }" varStatus="status">
	        				<c:choose>
		        				<c:when test="${not empty shopList[status.current-1].SHOP_NAME}">
		        					<th scope="row"><a name="shopName" data-num="${shopList[status.current-1].SHOP_NUM }" data-amount="${shopList[status.current-1].SHOP_GOODS_AMOUNT }" data-goods_name="${shopList[status.current-1].TOTAL_GOODS_NAME }" data-goods_size="${shopList[status.current-1].SHOP_GOODS_SIZE }" data-goods_num="${shopList[status.current-1].TOTAL_GOODS_NUM }" style="cursor:pointer;">${shopList[status.current-1].SHOP_NAME } (${shopList[status.current-1].TOTAL_GOODS_NAME })</a></th>
		        				</c:when>
		        				<c:when test="${empty shopList[status.current-1].SHOP_NAME}">
		        					<th scope="row"></th>
		        				</c:when>
	        				</c:choose>
			            		<c:choose>
			            			<c:when test="${not empty shopList[status.current-1].SHOP_NAME}">
						            	<c:choose>
							            		<c:when test="${shopList[status.current-1].SHOP_GOODS_AMOUNT == 0 }">
								            		<td style="border-right-color: rgba(0, 0, 0, 0.121)">X</td>
								            	</c:when>
								            	<c:when test="${shopList[status.current-1].SHOP_GOODS_AMOUNT != 0 }">
								            		<td style="border-right-color: rgba(0, 0, 0, 0.121)">O</td>
								            	</c:when>
						            	</c:choose>
					            	</c:when>
					            	<c:otherwise>
					            		<td style="border-right-color: rgba(0, 0, 0, 0.121)"></td>
					            	</c:otherwise>
					            </c:choose>
			            </c:forEach>	
			        </tr>
	        	</c:forEach>
        	</c:otherwise>
        </c:choose>
        </tbody></table>
		