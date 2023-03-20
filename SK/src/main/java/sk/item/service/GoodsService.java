package sk.item.service;

import java.util.List;
import java.util.Map;

public interface GoodsService {
	
	// 브랜드 전체 상품 리스트 
	public List<Map<String, Object>> selectBrandGoodsList(Map<String, Object> map) throws Exception;
		
	// 브랜드 전체 상품 토탈 개수 
	public int selectBrandGoodsCount(Map<String, Object> map) throws Exception;
	
	// 브랜드 상품 등록 
	public int insertGoods(Map<String, Object> map) throws Exception;
	
	// 상품 등록시, 상품 상세(사이즈) 삽입
	public int insertGoodsDetail(Map<String, Object> map) throws Exception;
	
	// 상품 등록시, 상품 이미지 삽입 
	public int insertGoodsImage(Map<String, Object> map) throws Exception;
	
	// 상품 이미지 삭제 deleteGoodsImage
	public int deleteGoodsImage(Map<String, Object> map) throws Exception;
	
	// 상품 이미지 수정 
	public int updateGoodsImageModify(Map<String, Object> map) throws Exception;
	
	// 상품 수정 (상품 상세정보 수정,사이즈만 따로)
	public int updateGoodsModify(Map<String, Object> map) throws Exception;
	
	// 상품 상세 삭제(상품 수정시, 원래 선택되어 있던 사이즈 전체 삭제) 
	public int deleteGoodsDetail(Map<String, Object> map) throws Exception;

	public List<Map<String, Object>> selectAllGoodsList(Map<String, Object> map) throws Exception;

	int selectAllGoodsCount(Map<String, Object> map) throws Exception;

	public List<Map<String, Object>> selectAllBrandList(Map<String, Object> map) throws Exception;

	public int selectGoodsLike(Map<String, Object> map) throws Exception;

	public Map<String, Object> selectBrandDetail(Map<String, Object> map) throws Exception;

	public List<Map<String, Object>> selectGoodsDetail(Map<String, Object> map) throws Exception;

	public List<Map<String, Object>> selectGoodsImage(Map<String, Object> map) throws Exception;

	public List<Map<String, Object>> selectReviewDetail(Map<String, Object> map) throws Exception;

	public Map<String, Object> selectReviewPercent(Map<String, Object> map) throws Exception;

	public int insertGoodsLike(Map<String, Object> map) throws Exception;

	public int deleteGoodsLike(Map<String, Object> map) throws Exception;

	public int updateGoodsLikeCountIncrease(Map<String, Object> map) throws Exception;

	public int updateGoodsLikeCountDecrease(Map<String, Object> map) throws Exception;
}