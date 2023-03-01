package sk.item.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import sk.common.dao.AbstractDAO;

@Repository("basketDAO")
public class BasketDAO extends AbstractDAO{
	
	//장바구니 상품리스트
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectBasketList(Map<String, Object> map) throws Exception {
		return selectList("basket.selectBasketList", map);
	}
	
	

}
