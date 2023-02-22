package sk.item.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import sk.common.dao.AbstractDAO;

@Repository("goodsDAO")
public class GoodsDAO extends AbstractDAO{
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectAllGoodsList(Map<String, Object> map) throws Exception{
		System.out.println("allGoodsList : " + map);
		return (List<Map<String, Object>>) selectList("goods.selectAllGoodsList", map);
	}
	
	public int selectAllGoodsCount(Map<String, Object> map) throws Exception {
		System.out.println("selectAllGoodsCount : " + map);
		return (int) selectOne("goods.selectAllGoodsCount", map);
	}
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectAllBrandList(Map<String, Object> map) throws Exception{
		System.out.println("selectAllBrandList : " + map);
		return (List<Map<String, Object>>) selectList("goods.selectAllBrandList", map);
	}
	
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectGoodsLike(Map<String, Object> map) throws Exception{
		System.out.println("selectGoodsLike : " + map);
		return (Map<String, Object>) selectOne("goods.selectGoodsLike", map);
	}
	
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectBrandDetail(Map<String, Object> map) throws Exception{
		System.out.println("selectBrandDetail : " + map);
		return (Map<String, Object>) selectOne("goods.selectBrandDetail", map);
	}
	
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectGoodsDetail(Map<String, Object> map) throws Exception{
		System.out.println("selectGoodsDetail : " + map);
		return (Map<String, Object>) selectOne("goods.selectGoodsDetail", map);
	}
	
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectGoodsImage(Map<String,Object> map) throws Exception{
		System.out.println("selectGoodsDetail : " + map);
		return (Map<String, Object>) selectOne("goods.selectGoodsImage", map);
	}
	
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectReviewDetail(Map<String, Object> map) throws Exception{
		System.out.println("selectReviewDetail : " + map);
		return (Map<String, Object>) selectOne("goods.selectReviewDetail", map);
	}	
}
