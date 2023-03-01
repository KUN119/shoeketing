package sk.item.service;

import java.util.List;
import java.util.Map;

public interface BasketService {

	//장바구니 리스트
	List<Map<String, Object>> selectBasketList(Map<String, Object> map) throws Exception;

	//장바구니 삭제
	void deleteBasket(Map<String, Object> map) throws Exception;
}
