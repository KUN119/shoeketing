package sk.myPage.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import sk.myPage.dao.ShopPageDAO;

//ShopPageService 구현클래스

@Service("shopPageService")
public class ShopPageServiceImpl implements ShopPageService{

	@Resource(name="shopPageDAO")
	private ShopPageDAO shopPageDAO;

	// 매장 기본정보 조회
	@Override
	public Map<String, Object> selectShopInfo(Map<String, Object> map) throws Exception {
		
		map.put("SHOP_NUM", 1);  //추후 삭제
		//map.put("SHOP_NUM", map.get("SHOP_NUM"));
		
		return shopPageDAO.selectShopInfo(map);
	}

	// 매장 기본정보 수정 
	@Override
	public Map<String, Object> updateShopInfo(Map<String, Object> map) throws Exception {
		
		map.put("SHOP_PW", "shopPW123");
		map.put("SHOP_TEL", "02-022-0222" );
		map.put("SHOP_START_TIME", "10:00" );
		map.put("SHOP_END_TIME", "23:00");
		map.put("SHOP_ADD", "매장 주소 수정수정");
		map.put("SHOP_NUM", 1);
		
//		map.put("SHOP_PW", map.get("SHOP_PW"));
//		map.put("SHOP_TEL", map.get("SHOP_TEL"));
//		map.put("SHOP_START_TIME", map.get("SHOP_START_TIME"));
//		map.put("SHOP_END_TIME", map.get("SHOP_END_TIME"));
//		map.put("SHOP_ADD", map.get("SHOP_ADD"));
//		map.put("SHOP_NUM", map.get("SHOP_NUM"));
	
		Map<String, Object> resultMap = new HashMap<>();
		int updateResult = shopPageDAO.updateShopInfo(map);
		
		// 매장 기본정보 수정이 정상적으로 완료됐으면 resultMap에 pass올리고, 수정 실패했으면 fail올리기
		if(updateResult == 1) {
			resultMap.put("result", "pass");
		}else {
			resultMap.put("result", "fail");
		}
		
		//System.out.println("updateResult 값  :" + updateResult);
		return resultMap;
	}


	// 매장별 재고수량 조회 
	@Override
	public int selectGoodsAmount(Map<String, Object> map) throws Exception {
		
		// 추후 수정
		map.put("SHOP_NUM", 2);
		map.put("TOTAL_GOODS_NUM", 2);
		map.put("SHOP_GOODS_SIZE", 230);
		
		// SHOP_NUM, TOTAL_GOODS_NUM, SHOP_GOODS_SIZE
//		map.put("SHOP_NUM", map.get("SHOP_NUM"));
//		map.put("TOTAL_GOODS_NUM", map.get("TOTAL_GOODS_NUM"));
//		map.put("SHOP_GOODS_SIZE", map.get("SHOP_GOODS_SIZE"));
		
		return shopPageDAO.selectGoodsAmount(map);
	}
	
	
}
