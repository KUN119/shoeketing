package sk.item.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import sk.item.dao.BasketDAO;
import sk.item.service.BasketService;

@Service("shopService")
public class BasketServiceImpl implements BasketService{
	
	@Resource(name = "basketDAO")
	private BasketDAO shopDAO;
	
	//장바구니 리스트
	@Override
	public List<Map<String, Object>> selectBasketList(Map<String, Object> map) throws Exception {
		return shopDAO.selectBasketList(map);
	}

}
