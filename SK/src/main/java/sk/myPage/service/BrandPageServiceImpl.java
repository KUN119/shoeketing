package sk.myPage.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import sk.myPage.dao.BrandPageDAO;

//BrandPageService 구현클래스

@Service("brandPageService")
public class BrandPageServiceImpl implements BrandPageService{

	@Resource(name="brandPageDAO")
	private BrandPageDAO brandPageDAO;

	// 브랜드 기본정보 조회
	@Override
	public Map<String, Object> selectBrandInfo(Map<String, Object> map) throws Exception {

		return brandPageDAO.selectBrandInfo(map);
	}

	// 브랜드 기본정보 수정
	@Override
	public void updateBrandInfo(Map<String, Object> map) throws Exception {
		brandPageDAO.updateBrandInfo(map);
		
	}

	// 브랜드 입점 매장 리스트(5줄)
	@Override
	public List<Map<String, Object>> selectShopList(Map<String, Object> map) throws Exception {
		
		return brandPageDAO.selectShopList(map) ;
	}

	// 브랜드 입점 매장 토탈 개수 
	@Override
	public int selectShopCount(Map<String, Object> map) throws Exception {
		
		return brandPageDAO.selectShopCount(map);
	}

	// 브랜드 매장 입점 요청 리스트 = 매장 가입 승인 리스트(아직 승인 전. 5줄)
	@Override
	public List<Map<String, Object>> selectRequestShopList(Map<String, Object> map) throws Exception {
		
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
	public void deleteShop(Map<String, Object> map) throws Exception {
		
		brandPageDAO.deleteShop(map);
	}

	// 브랜드 입점 매장 위치 조회 
	@Override
	public Map<String, Object> selectShopLocationInfo(Map<String, Object> map) throws Exception {
		
		return brandPageDAO.selectShopLocationInfo(map);
	}

	// 브랜드관 상품 썸네일 이미지 조회 (image order 1)
	@Override
	public Map<String, Object> selectGoodsThumbnail(Map<String, Object> map) throws Exception {
		
		return brandPageDAO.selectGoodsThumbnail(map);
	}

	// 브랜드관 최신 상품 조회 (최신 상품 5개)
	@Override
	public List<Map<String, Object>> selectNewGoodsList(Map<String, Object> map) throws Exception {
		
		return brandPageDAO.selectNewGoodsList(map);
	}

	// 브랜드관 랭킹 5인 상품(인기상품 5개) 조회
	@Override
	public List<Map<String, Object>> selectGoodsRankingList(Map<String, Object> map) throws Exception {
		
		return brandPageDAO.selectGoodsRankingList(map);
	}
	
	
	
}
