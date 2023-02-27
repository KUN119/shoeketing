package sk.item.service;

import java.util.List;
import java.util.Map;

public interface StockService {
	
	// 매장별 상품 재고 리스트 (최신상품순 정렬, 다음은 사이즈 오름차순 정렬)
	public List<Map<String, Object>> selectStockList(Map<String, Object> map) throws Exception;
	
	// 재고 리스트 토탈개수
	public int selectStockCount(Map<String, Object> map) throws Exception;
	
	// 재고 수량 업데이트 
	public Map<String, Object> updateStock(Map<String, Object> map) throws Exception;
	
}
