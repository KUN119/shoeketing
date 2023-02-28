package sk.myPage.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import sk.myPage.dao.BrandPageDAO;

//BrandPageService 구현클래스

@Service("brandPageService")
public class BrandPageServiceImpl implements BrandPageService {

	@Resource(name = "brandPageDAO")
	private BrandPageDAO brandPageDAO;

	// 브랜드 기본정보 조회
	@Override
	public Map<String, Object> selectBrandInfo(Map<String, Object> map, HttpServletRequest request) throws Exception {
		// 세션에 로그인한 브랜드 회원의 정보중 BRAND_NUM 꺼내와서 map에 넣어주기 (추후 세션 구현되면 수정필요)
		HttpSession session = request.getSession();
		session.getAttribute("session_BRAND_NUM"); // 추후 수정
		// map.put("BRAND_NUM", 1); //추후 수정(임시로 브랜드번호 1로 넣기)
		// map.put("BRAND_NUM", "session_BRAND_NUM");

		return brandPageDAO.selectBrandInfo(map);
	}

	// 브랜드 기본정보 수정
	@Override
	public Map<String, Object> updateBrandInfo(Map<String, Object> map) throws Exception {
		Map<String, Object> resultMap = new HashMap<>();

		int updateResult = brandPageDAO.updateBrandInfo(map);

		if (updateResult == 1) {
			resultMap.put("updateResult", "pass");
		} else {
			resultMap.put("updateResult", "fail");
		}

		brandPageDAO.updateBrandInfo(map);

		return resultMap;
	}

	// 브랜드 입점 매장 리스트(5줄)
	@Override
	public List<Map<String, Object>> selectShopList(Map<String, Object> map, HttpServletRequest request)
			throws Exception {

		// 세션에 로그인한 브랜드회원의 정보중 BRAND_NAME 가져와서 map에 넣어주기 (추후 수정)
		HttpSession session = request.getSession();
		// map.put("BRAND_NAME", session.getAttribute("session_BRAND_NAME"));

		map.put("BRAND_NAME", "나이키"); // 임시 BRAND_NAME = "나이키"
//		map.put("BRAND_NAME", map.get("BRAND_NAME"));

		// 임시로 리스트 페이징 START랑 END값 넣어주기 (추후 수정. 한페이지에 5줄씩 표시)
		map.put("START", 1);
		map.put("END", 5);

		return brandPageDAO.selectShopList(map);
	}

	// 브랜드 입점 매장 토탈 개수
	@Override
	public int selectShopCount(Map<String, Object> map) throws Exception {

		map.put("BRAND_NAME", "나이키");
//		map.put("BRAND_NAME", map.get("BRAND_NAME"));

		return brandPageDAO.selectShopCount(map);
	}

	// 브랜드 매장 입점 요청 리스트 = 매장 가입 승인 리스트(아직 승인 전. 5줄)
	@Override
	public List<Map<String, Object>> selectRequestShopList(Map<String, Object> map, HttpServletRequest request)
			throws Exception {

		// 세션에 로그인한 브랜드회원의 정보중 BRAND_NAME 가져와서 map에 넣어주기 (추후 수정)
		HttpSession session = request.getSession();
		session.getAttribute("session_BRAND_NAME"); // 추후 수정
		map.put("BRAND_NAME", "나이키"); // 임시 BRAND_NAME = "나이키"
//		map.put("BRAND_NAME", map.get("BRAND_NAME"));

		// 임시로 리스트 페이징 START랑 END값 넣어주기 (추후 수정. 한페이지에 5줄씩 표시)
		map.put("START", 1);
		map.put("END", 5);

		return brandPageDAO.selectRequestShopList(map);
	}

	// 브랜드 입점 요청 매장 토탈 개수 (아직 승인 전)
	@Override
	public int selectRequestShopCount(Map<String, Object> map) throws Exception {

		return brandPageDAO.selectRequestShopCount(map);
	}

	// 브랜드 매장 입점 요청 승인
	@Override
	public void updateShopJoinApprove(Map<String, Object> map) throws Exception {

		brandPageDAO.updateShopJoinApprove(map);
	}

	// 브랜드 매장 입점 요청 거부
	@Override
	public void updateShopJoinReject(Map<String, Object> map) throws Exception {

		brandPageDAO.updateShopJoinReject(map);
	}

	// 브랜드가 입점한 매장 삭제(탈퇴)
	// 트리거 사용해서 상품 테이블에 있는 해당 매장 상품들도 모두 삭제
	@Override
	public Map<String, Object> deleteShop(Map<String, Object> map) throws Exception {
		// 브랜드가 입점 매장 삭제시, 해당 매장에 등록되어 있던 상품 모두 함께 삭제(트리거)
		// SHOP_NUM 추후 수정.
		map.put("SHOP_NUM", 1);
		// map.put("SHOP_NUM", map.get("SHOP_NUM"));

		// 매장을 삭제한 결과를 int타입으로 저장(삭제 정상적으로 했으면 1, 아니면 0)
		int result = brandPageDAO.deleteShop(map);
		Map<String, Object> deleteResult = new HashMap<String, Object>();

		if (result == 1) {
			deleteResult.put("deleteResult", "해당 매장을 삭제하였습니다.");
			System.out.println(deleteResult);
		} else {
			deleteResult.put("deleteResult", "해당 매장을 삭제하지 못했습니다.");
			System.out.println(deleteResult);
		}

		return deleteResult;
	}

	// 브랜드 입점 매장 위치 조회
	@Override
	public Map<String, Object> selectShopLocationInfo(Map<String, Object> map) throws Exception {

		map.put("SHOP_NAME", "나이키 강남점");
		// map.put("SHOP_NAME", map.get("SHOP_NAME"));

		return brandPageDAO.selectShopLocationInfo(map);
	}

	// 브랜드관 상품 썸네일 이미지 조회 (image order 1)
	@Override
	public Map<String, Object> selectGoodsThumbnail(Map<String, Object> map) throws Exception {

		map.put("TOTAL_GOODS_NUM", map.get("TOTAL_GOODS_NUM"));

		return brandPageDAO.selectGoodsThumbnail(map);
	}

	// 브랜드관 최신 상품 리스트 (최신 상품 5개)
	@Override
	public List<Map<String, Object>> selectNewGoodsList(Map<String, Object> map) throws Exception {
		map.put("BRAND_NUM", "1");
//		map.put("BRAND_NUM", map.get("BRAND_NUM"));

		return brandPageDAO.selectNewGoodsList(map);
	}

	// 브랜드관 랭킹 5인 상품 리스트 (인기 상품 5개)
	@Override
	public List<Map<String, Object>> selectGoodsRankingList(Map<String, Object> map) throws Exception {
		map.put("BRAND_NUM", "5");
//		map.put("BRAND_NUM", map.get("BRAND_NUM"));

		return brandPageDAO.selectGoodsRankingList(map);
	}

}
