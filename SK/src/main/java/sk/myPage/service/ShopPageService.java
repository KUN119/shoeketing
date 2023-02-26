package sk.myPage.service;

import java.util.Map;

public interface ShopPageService {
	
	// 매장 기본정보 조회
	public Map<String, Object> selectShopInfo(Map<String, Object> map) throws Exception;
	
	// 매장 기본정보 수정 
	public Map<String, Object> updateShopInfo(Map<String, Object> map) throws Exception;
	
	// 매장별 재고수량 조회 
	public int selectGoodsAmount(Map<String, Object> map) throws Exception;
	
}
