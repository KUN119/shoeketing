package sk.item.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import sk.item.dao.GoodsDAO;

@Service("goodsService")
public class GoodsServiceImpl implements GoodsService{
	
	@Resource(name="goodsDAO")
	private GoodsDAO goodsDAO;

	@Override
	public List<Map<String, Object>> selectAllGoodsList(Map<String, Object> map) throws Exception {
		return goodsDAO.selectAllGoodsList(map);
	}

	@Override
	public int selectAllGoodsCount(Map<String, Object> map) throws Exception {
		return goodsDAO.selectAllGoodsCount(map);
	}

	@Override
	public List<Map<String, Object>> selectAllBrandList(Map<String, Object> map) throws Exception {
		return goodsDAO.selectAllBrandList(map);
	}

	@Override
	public Map<String, Object> selectGoodsLike(Map<String, Object> map) throws Exception {
		return goodsDAO.selectGoodsLike(map);
	}

	@Override
	public Map<String, Object> selectBrandDetail(Map<String, Object> map) throws Exception {
		return goodsDAO.selectBrandDetail(map);
	}

	@Override
	public Map<String, Object> selectGoodsDetail(Map<String, Object> map) throws Exception {
		return goodsDAO.selectGoodsDetail(map);
	}

	@Override
	public Map<String, Object> selectGoodsImage(Map<String, Object> map) throws Exception {
		return goodsDAO.selectGoodsImage(map);
	}

	@Override
	public Map<String, Object> selectReviewDetail(Map<String, Object> map) throws Exception {
		return goodsDAO.selectReviewDetail(map);
	}
}
