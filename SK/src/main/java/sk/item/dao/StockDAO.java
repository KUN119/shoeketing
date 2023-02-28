package sk.item.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import sk.common.dao.AbstractDAO;

@Repository("stockDAO")
public class StockDAO extends AbstractDAO{
	
	// 매장별 상품 재고 리스트 (최신상품순 정렬, 다음은 사이즈 오름차순 정렬)
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectStockList(Map<String, Object> map) throws Exception{
		System.out.println("selectStockList 파라미터 : " + map);
		
		return (List<Map<String, Object>>) selectList("stock.selectStockList", map);
	}
	
	// 재고 리스트 토탈개수
	//selectStockCount
	public int selectStockCount(Map<String, Object> map) throws Exception{
		System.out.println("selectStockCount 파라미터 : " + map);
		
		return (int) selectOne("stock.selectStockCount", map);
	}
	
	
	// 재고 수량 업데이트 
	public int updateStock(Map<String, Object> map) throws Exception{
		System.out.println("updateStock 파라미터 : " + map);
		
		return (int) update("stock.updateStock", map);
	}
	
}
