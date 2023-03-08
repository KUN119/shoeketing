package sk.item.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import sk.item.dao.GoodsDAO;

@Service("goodsService")
public class GoodsServiceImpl implements GoodsService {

	@Resource(name = "goodsDAO")
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
	public List<Map<String, Object>> selectGoodsDetail(Map<String, Object> map) throws Exception {
		List<Map<String, Object>> goodsDetailList = goodsDAO.selectGoodsDetail(map);
		double score = Double.parseDouble(goodsDetailList.get(0).get("TOTAL_GOODS_SCORE_AVG").toString());
		long roundedScore = Math.round(score * 2);
		long percentScore = (long) (score / 5 * 100);
		goodsDetailList.get(0).put("TOTAL_GOODS_SCORE", roundedScore);
		goodsDetailList.get(0).put("TOTAL_GOODS_SCORE_PERCENT", percentScore);
		return goodsDetailList;
	}

	@Override
	public List<Map<String, Object>> selectGoodsImage(Map<String, Object> map) throws Exception {
		return goodsDAO.selectGoodsImage(map);
	}

	@Override
	public List<Map<String, Object>> selectReviewDetail(Map<String, Object> map) throws Exception {
		return goodsDAO.selectReviewDetail(map);
	}

	@Override
	public Map<String, Object> selectReviewPercent(Map<String, Object> map) throws Exception {
		int reviewCount = goodsDAO.selectReviewCount(map);
		List<Map<String, Object>> reviewDetailList = goodsDAO.selectReviewDetail(map);

		int review_size_count_1 = 0; // 정사이즈보다 작음
		int review_size_count_2 = 0; // 정사이즈
		int review_size_count_3 = 0; // 정사이즈보다 큼

		int review_color_count_1 = 0; // 화면보다 밝음
		int review_color_count_2 = 0; // 화면과 같음
		int review_color_count_3 = 0; // 화면보다 어두움

		int review_comfort_count_1 = 0; // 나쁨
		int review_comfort_count_2 = 0; // 보통
		int review_comfort_count_3 = 0; // 좋음

		String REVIEW_SIZE = null;
		String REVIEW_COLOR = null;
		String REVIEW_COMFORT = null;

		if (reviewCount != 0) {
			for (Map<String, Object> reviewDetailMap : reviewDetailList) {
				REVIEW_SIZE = reviewDetailMap.get("REVIEW_SIZE").toString();
				REVIEW_COLOR = reviewDetailMap.get("REVIEW_COLOR").toString();
				REVIEW_COMFORT = reviewDetailMap.get("REVIEW_COMFORT").toString();

				if (REVIEW_SIZE.equals("정사이즈보다 작음")) {
					review_size_count_1++;
				}

				if (REVIEW_SIZE.equals("정사이즈")) {
					review_size_count_2++;
				}

				if (REVIEW_SIZE.equals("정사이즈보다 큼")) {
					review_size_count_3++;
				}

				if (REVIEW_COLOR.equals("화면보다 밝음")) {
					review_color_count_1++;
				}

				if (REVIEW_COLOR.equals("화면과 같음")) {
					review_color_count_2++;
				}

				if (REVIEW_COLOR.equals("화면보다 어두움")) {
					review_color_count_3++;
				}

				if (REVIEW_COMFORT.equals("나쁨")) {
					review_comfort_count_1++;
				}

				if (REVIEW_COMFORT.equals("보통")) {
					review_comfort_count_2++;
				}

				if (REVIEW_COMFORT.equals("좋음")) {
					review_comfort_count_3++;
				}

			}

			review_size_count_1 = (int) (review_size_count_1 / (double) reviewCount * 100);
			review_size_count_2 = (int) (review_size_count_2 / (double) reviewCount * 100);
			review_size_count_3 = (int) (review_size_count_3 / (double) reviewCount * 100);

			review_color_count_1 = (int) (review_color_count_1 / (double) reviewCount * 100);
			review_color_count_2 = (int) (review_color_count_2 / (double) reviewCount * 100);
			review_color_count_3 = (int) (review_color_count_3 / (double) reviewCount * 100);

			review_comfort_count_1 = (int) (review_comfort_count_1 / (double) reviewCount * 100);
			review_comfort_count_2 = (int) (review_comfort_count_2 / (double) reviewCount * 100);
			review_comfort_count_3 = (int) (review_comfort_count_3 / (double) reviewCount * 100);
		}

		Map<String, Object> resultMap = new HashMap<String, Object>();
		resultMap.put("REVIEW_SIZE_PERCENT1", review_size_count_1);
		resultMap.put("REVIEW_SIZE_PERCENT2", review_size_count_2);
		resultMap.put("REVIEW_SIZE_PERCENT3", review_size_count_3);

		resultMap.put("REVIEW_COLOR_PERCENT1", review_color_count_1);
		resultMap.put("REVIEW_COLOR_PERCENT2", review_color_count_2);
		resultMap.put("REVIEW_COLOR_PERCENT3", review_color_count_3);

		resultMap.put("REVIEW_COMFORT_PERCENT1", review_comfort_count_1);
		resultMap.put("REVIEW_COMFORT_PERCENT2", review_comfort_count_2);
		resultMap.put("REVIEW_COMFORT_PERCENT3", review_comfort_count_3);

		return resultMap;
	}

	@Override
	public int insertGoodsLike(Map<String, Object> map) throws Exception {
		return goodsDAO.insertGoodsLike(map);
	}

}
