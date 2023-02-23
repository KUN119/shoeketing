package sk.myPage.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import sk.myPage.service.BrandPageService;


@Controller
public class BrandPageController {
	Logger log = LogManager.getLogger(this.getClass());
	
	@Resource(name="brandPageService")
	private BrandPageService brandPageService;
	
	@GetMapping(value = "/brandPage")
	public ModelAndView brandPage(Map<String, Object> map) throws Exception {
		log.debug("###### 브랜드 마이 페이지 메인 ######");
		ModelAndView mv = new ModelAndView("brandPageMain");
		return mv;
	}
	
	@GetMapping(value = "/brandPage/accountModifyForm")
	public ModelAndView brandModifyForm(Map<String, Object> map, HttpServletRequest request) throws Exception {
		log.debug("###### 브랜드 기본 정보 수정 폼 ######");
		ModelAndView mv = new ModelAndView("testMain");  //추후 수정
		
		//로직 서비스에 있음(나중에 주석 삭제)
		Map<String, Object> brandInfoMap = brandPageService.selectBrandInfo(map, request);
		
		// 기본 정보 수정폼에 브랜드 정보 조회해서 출력 (BRAND_ID, BRAND_NAME, BRAND_BUSINESS_NUM, BRAND_ADD, BRAND_LOGO_FILE, BRAND_INFO)
		System.out.println("brandInfoMap : " + brandInfoMap);
		mv.addObject("brandInfoMap", brandInfoMap);
		
		return mv;
	}
	
	@GetMapping(value = "/brandPage/accountModify")
	public ModelAndView brandModify(Map<String, Object> map) throws Exception {
		log.debug("###### 브랜드 기본 정보 수정 ######");
		//화면구현 되면 추후 ajax로 구현 - 기본정보 수정하고 수정버튼 누르면 alert창 띄워주고, 브랜드 마이페이지 메인으로 ajax처리
		ModelAndView mv = new ModelAndView("testMain");  
		
		//로직 서비스에 있음(나중에 주석 삭제)
		brandPageService.updateBrandInfo(map);
		
		return mv;
	}
	
	
	@GetMapping(value = "/brandPage/shopList")
	public ModelAndView shopList(Map<String, Object> map, HttpServletRequest request) throws Exception {
		log.debug("###### 브랜드 입점 매장 리스트 ######");
		ModelAndView mv = new ModelAndView("testMain");  //추후 수정 (brand/shop/shopList.jsp)
		
		//로직 서비스에 있음(나중에 주석 삭제)
		List<Map<String, Object>> shopList = brandPageService.selectShopList(map, request);
		System.out.println("shopList 확인 : " + shopList);
		
		mv.addObject("shopList", shopList);  //SHOP_NAME, SHOP_TEL, SHOP_ADD, SHOP_START_TIME, SHOP_END_TIME
		//choose-when-foreach 사용해서 반복문으로 매장 리스트 출력
		
		//해당 브랜드 입점 매장 토탈 개수
		int shopCount = brandPageService.selectShopCount(map);
		System.out.println("shopCount 확인 : " + shopCount);
		
		return mv;
	}
	
	@GetMapping(value = "/brandPage/shopRequestList")
	public ModelAndView shopRequestList(Map<String, Object> map, HttpServletRequest request) throws Exception {
		log.debug("###### 브랜드 매장 입점 요청 리스트 ######");
		ModelAndView mv = new ModelAndView("testMain");  //추후 수정 (brand/shop/shopRequestList.jsp)
		
		//로직 서비스에 있음(나중에 주석 삭제)
		List<Map<String, Object>> shopRequestList = brandPageService.selectRequestShopList(map, request);
		System.out.println("shopRequestList 확인 : " + shopRequestList);
		
		mv.addObject("shopRequestList", shopRequestList);  //SHOP_NAME, SHOP_TEL, SHOP_ADD, SHOP_START_TIME, SHOP_END_TIME
		//choose-when-foreach 사용해서 반복문으로 매장 리스트 출력
		
		return mv;
	}
	
	@GetMapping(value = "/brandPage/shopJoinConfirm")
	public ModelAndView shopJoinConfirm(Map<String, Object> map) throws Exception {
		log.debug("###### 브랜드 매장 입점 승인/거부 ######");
		ModelAndView mv = new ModelAndView("testMain");  //추후 수정
		
		//추후 ajax로 구현 (로직 다시 생각해봐야함,, 화면 구현하고 나면 다시 로직 작성)
		//브랜드가 매장 입점 승인 (매장 가입 승인여부 Y로 변경됨)_승인시, 트리거 동작해서 해당 브랜드의 전체 상품이 해당 매장의 상품으로 자동등록됨 
		map.put("SHOP_NAME", "나이키 명동점");  //추후 수정 
		brandPageService.updateShopJoinApprove(map);  
			
		//브랜드가 매장 입점 거부 (매장 탈퇴여부 Y로 변경됨)
		//brandPageService.updateShopJoinReject(map);
		
		return mv;
	}
	
	@GetMapping(value = "/brandPage/shopDelete")
	public Map<String, Object> shopDelete(Map<String, Object> map) throws Exception {
		log.debug("###### 브랜드 입점 매장 삭제(탈퇴) ######");
		ModelAndView mv = new ModelAndView("testMain");  //추후 수정
		
		//로직 서비스에 있음(나중에 주석 삭제)
		//ajax로 구현예정
		return brandPageService.deleteShop(map);
	}
	
	@GetMapping(value = "/brandPage/shopLocationInfo")
	public ModelAndView shopLocationInfo(Map<String, Object> map) throws Exception {
		log.debug("###### 브랜드 입점 매장 위치 조회 ######");
		ModelAndView mv = new ModelAndView("testMain");
		
		//로직 서비스에 있음(나중에 주석 삭제)
		Map<String, Object> shopLocationInfoMap = brandPageService.selectShopLocationInfo(map);
		mv.addObject("shopLocationInfoMap", shopLocationInfoMap);
		
		return mv;
	}
	
	
	//브랜드관
	@GetMapping(value = "/brand/main")
	public ModelAndView brandInfo(Map<String, Object> map) throws Exception {
		log.debug("###### 브랜드관 메인 페이지 ######");
		ModelAndView mv = new ModelAndView("testMain");
		
		//구현 완료한 후, 로직 서비스로 옮길예정
	
		//최신 상품 리스트(5개)
		List<Map<String, Object>> recentGoodsList = brandPageService.selectNewGoodsList(map);
		System.out.println("recentGoodsList 확인 : " + recentGoodsList);
		
		Map<String, Object> recentGoodsMap = new HashMap<String, Object>();
		List<Map<String, Object>> recentGoodsThumbnailList = new ArrayList<Map<String,Object>>();
		
		//recentGoodsList에서 하나씩 꺼내서 Map에 저장
		for(int i=0; i<recentGoodsList.size(); i++) {
			recentGoodsMap = recentGoodsList.get(i);	
			//System.out.println("recentGoodsMap 확인 : " + recentGoodsMap);
			
			int totalGoodsNum = Integer.parseInt(recentGoodsMap.get("TOTAL_GOODS_NUM").toString());
			map.put("TOTAL_GOODS_NUM", totalGoodsNum);
			//System.out.println("map 확인 : " + map);
			
			Map<String, Object> recentGoodsThumbnailMap = brandPageService.selectGoodsThumbnail(map);
			//System.out.println("recentGoodsThumbnailMap 확인 : " + recentGoodsThumbnailMap);
			
			recentGoodsThumbnailList.add(recentGoodsThumbnailMap);
		}
		
		mv.addObject("recentGoodsList", recentGoodsList);
		mv.addObject("recentGoodsThumbnailList", recentGoodsThumbnailList);
		
		//인기 상품 리스트(찜순으로 5개)_0223 구현예정!! 
		List<Map<String, Object>> rankingGoodsList = brandPageService.selectGoodsRankingList(map);
		mv.addObject("rankingGoodsList", rankingGoodsList);
		
		return mv;
	}
	

}
