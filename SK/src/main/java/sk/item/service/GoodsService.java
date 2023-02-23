package sk.item.service;

import java.util.List;
import java.util.Map;

public interface GoodsService{
	
	public List<Map<String, Object>> selectAllGoodsList(Map<String, Object> map) throws Exception;

	int selectAllGoodsCount(Map<String, Object> map) throws Exception;
	
	public List<Map<String, Object>> selectAllBrandList(Map<String, Object> map) throws Exception;
	
	public Map<String, Object> selectGoodsLike(Map<String, Object> map) throws Exception;
	
	public Map<String, Object> selectBrandDetail(Map<String, Object> map) throws Exception;
	
	public Map<String, Object> selectGoodsDetail(Map<String, Object> map) throws Exception;
	
	public Map<String, Object> selectGoodsImage(Map<String, Object> map) throws Exception;

	public Map<String, Object> selectReviewDetail(Map<String, Object> map) throws Exception;
}