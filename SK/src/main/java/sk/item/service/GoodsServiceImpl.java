package sk.item.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import sk.common.service.CommonService;
import sk.common.util.FileUtils;
import sk.item.dao.GoodsDAO;

@Service("goodsService")
public class GoodsServiceImpl implements GoodsService {

	@Resource(name = "goodsDAO")
	private GoodsDAO goodsDAO;
	
	@Resource(name = "sessionService")
	private CommonService sessionService;
	
	@Resource(name = "fileUtils")
	private FileUtils fileUtils;
	
	// 브랜드 전체 상품 리스트 
	@Override
	public List<Map<String, Object>> selectBrandGoodsList(Map<String, Object> map) throws Exception{
		
		return goodsDAO.selectBrandGoodsList(map);
	}
		
	// 브랜드 전체 상품 토탈 개수 
	@Override
	public int selectBrandGoodsCount(Map<String, Object> map) throws Exception{
		
		return (int)goodsDAO.selectBrandGoodsCount(map);
	}
	
	// 브랜드 상품 등록. ajax 구현
	@Override
	public Map<String, Object> insertGoods(Map<String, Object> map, HttpSession session, MultipartFile[] uploadFile) throws Exception{
		System.out.println("map 확인 : " + map);
		System.out.println("uploadFile 확인 : " + uploadFile);
		
		Map<String, Object> result = new HashMap<>();
		List<Map<String, Object>> shopNumList = new ArrayList<>();
		
		// 필요한 파라미터 넣어주기 (BRAND_NUM 값)
		map.put("BRAND_NUM", sessionService.getSessionBrand(session, "BRAND_NUM"));
		map.put("BRAND_NAME", sessionService.getSessionBrand(session, "BRAND_NAME"));
		
		int insertGoods = goodsDAO.insertGoods(map);
		
		if(insertGoods == 1) {
			// 상품 정상 등록시, 상품 상세(사이즈) 및 이미지 삽입
			insertGoodsDetail(map);
			insertGoodsImage(map, uploadFile);
			
			shopNumList = selectShopNumName(map);
			System.out.println("shopNumList : " + shopNumList);
			System.out.println("shopNumList 크기 : " + shopNumList.size());
			
			for(int i=0; i<shopNumList.size(); i++) {
				Map<String, Object> shopNumMap = shopNumList.get(i);
				map.put("SHOP_GOODS_SHOP_NUM", shopNumMap.get("SHOP_NUM"));
				insertShopGoodsAddByBrand(map);
			}
			result.put("result", "pass");
			result.put("TOTAL_GOODS_NUM", map.get("TOTAL_GOODS_NUM"));
		}else {
			result.put("result", "fail");
		}
		
		return result;
	}
	
	// 상품 등록시, 상품 상세(사이즈) 삽입
	@Override
	public int insertGoodsDetail(Map<String, Object> map) throws Exception{
		
		return (int)goodsDAO.insertGoodsDetail(map);
	}
	
	// 상품 등록시, 상품 이미지 삽입 
	@Override
	public int insertGoodsImage(Map<String, Object> map, MultipartFile[] uploadFile) throws Exception{
		
		Map<String, Object> insertImgMap = fileUtils.parseInsertFileInfo(map, uploadFile);
		
		return (int)goodsDAO.insertGoodsImage(insertImgMap);
	}
	
	// 브랜드에 해당하는 매장 이름 및 매장번호 조회 
	public List<Map<String, Object>> selectShopNumName(Map<String, Object> map) throws Exception{
		
		return (List<Map<String, Object>>)goodsDAO.selectShopNumName(map);
	}
	
	// 브랜드가 상품 등록시, 해당 브랜드의 매장들도 상품 등록
	public int insertShopGoodsAddByBrand(Map<String, Object> map) throws Exception{
		
		return (int)goodsDAO.insertShopGoodsAddByBrand(map);
	}
	
	// 상품 이미지 삭제 deleteGoodsImage
	@Override
	public int deleteGoodsImage(Map<String, Object> map) throws Exception{
		
		return (int)goodsDAO.deleteGoodsImage(map);
	}
	
	// 상품 이미지 수정 
	@Override
	public int updateGoodsImageModify(Map<String, Object> map) throws Exception{
		
		return (int)goodsDAO.updateGoodsImageModify(map);
	}
	
	// 상품 수정 (상품 상세정보 수정,사이즈만 따로)
	@Override
	public int updateGoodsModify(Map<String, Object> map) throws Exception{
		
		return (int)goodsDAO.updateGoodsModify(map);
	}
	
	// 상품 상세 삭제(상품 수정시, 원래 선택되어 있던 사이즈 전체 삭제) 
	@Override
	public int deleteGoodsDetail(Map<String, Object> map) throws Exception{
	
		return (int)goodsDAO.deleteGoodsDetail(map);
	}

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
	public int selectGoodsLike(Map<String, Object> map) throws Exception {
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

	@Override
	public int deleteGoodsLike(Map<String, Object> map) throws Exception {
		return goodsDAO.deleteGoodsLike(map);
	}

	@Override
	public int updateGoodsLikeCountIncrease(Map<String, Object> map) throws Exception {
		return goodsDAO.updateGoodsLikeCountIncrease(map);
	}

	@Override
	public int updateGoodsLikeCountDecrease(Map<String, Object> map) throws Exception {
		return goodsDAO.updateGoodsLikeCountDecrease(map);
	}

}
