package sk.item.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import sk.item.dao.BasketDAO;

@Service("basketService")
public class BasketServiceImpl implements BasketService {

	@Resource(name = "basketDAO")
	private BasketDAO basketDAO;

	// 장바구니 리스트
	@Override
	public List<Map<String, Object>> selectBasketList(Map<String, Object> map) throws Exception {
		return basketDAO.selectBasketList(map);
	}

	@Override
	public int insertBasket(Map<String, Object> map) throws Exception {
		int check = basketDAO.selectBasketCheck(map);
		int count = basketDAO.selectBasketCnt(map);
		if (check >= 1) {
			return 1;
		} else if (count >= 10) {
			return 2;
		} else {
			return basketDAO.insertBasket(map);
		}
	}

	// 장바구니 삭제 (DEL_GB를 Y로 변경)
	@Override
	public void deleteBasket(Map<String, Object> map) throws Exception {
		basketDAO.deleteBasket(map);
	}

}
