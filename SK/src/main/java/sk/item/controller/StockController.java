package sk.item.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import sk.common.service.CommonService;
import sk.item.service.StockService;

@RestController
public class StockController {

	Log log = LogFactory.getLog(this.getClass());

	@Resource(name = "stockService")
	private StockService stockService;

	@Resource(name = "sessionService")
	private CommonService sessionService;

	@ResponseBody
	@GetMapping(value = "/shopPage/stockList")
	public ModelAndView shopStockList(@RequestParam Map<String, Object> map, HttpSession session) throws Exception {
		log.debug("###### 매장 상품 재고 리스트 ######");
		ModelAndView mv = new ModelAndView("stockList"); 
		
		// 재고 리스트 토탈개수 (Ex, 상품이 14줄이면 토탈개수 14)
		int stockCount = stockService.selectStockCount(map, session);
		List<Map<String, Object>> shopStockList = stockService.selectStockList(map, session);

		mv.addObject("shopStockList", shopStockList);
		mv.addObject("stockCount", stockCount);
		mv.addObject("SHOP_NUM", sessionService.getSessionShop(session, "SHOP_NUM"));

		return mv;
	}
	
	// 상품명/모델명 검색시, ajax 구현
	@ResponseBody
	@PostMapping(value = "/shopPage/stockList_ajax")
	public ModelAndView shopStockList_ajax(@RequestParam Map<String, Object> map, HttpSession session) throws Exception {
		log.debug("###### 매장 상품 재고 리스트 ######");
		ModelAndView mv = new ModelAndView("stockList_ajax"); 
		
		// 재고 리스트 토탈개수 (Ex, 상품이 14줄이면 토탈개수 14)
		int stockCount = stockService.selectStockCount(map, session);
		List<Map<String, Object>> shopStockList = stockService.selectStockList(map, session);

		String searchType = (String) map.get("searchType");
		String keyword = (String) map.get("keyword");
		
		if(searchType != null) {
			mv.addObject("searchType", searchType);
		}
		if(keyword != null) {
			mv.addObject("keyword", keyword);
		}
		
		mv.addObject("shopStockList", shopStockList);
		mv.addObject("stockCount", stockCount);
		mv.addObject("SHOP_NUM", sessionService.getSessionShop(session, "SHOP_NUM"));

		return mv;
	}

	// ajax 구현
	@ResponseBody 
	@PostMapping(value = "/shopPage/stockModify")
	public Map<String, Object> shopStockModify(@RequestParam Map<String, Object> map, HttpSession session) throws Exception {
		log.debug("###### 매장 상품 재고 수량 변경 ######");

		Map<String, Object> updateResult = stockService.updateStock(map, session);

		return updateResult;
	}

	@GetMapping(value = "/goods/stockSearchForm")
	public ModelAndView stockSearchForm(@RequestParam Map<String, Object> map, HttpSession session) throws Exception {
		log.debug("###### 실시간 재고 검색폼 ######");
		ModelAndView mv = new ModelAndView("stockSearchForm");

		// 로그인 한 회원 정보 세션에서 가져오기
		String memName = sessionService.getSession(session, "MEM_NAME");
		String memEmail = (String) session.getAttribute("session_MEM_ID");

		mv.addObject("MEM_NAME", memName);
		mv.addObject("MEM_EMAIL", memEmail);
		

		return mv;
	}

	@PostMapping(value = "/goods/stockSearch")
	public ModelAndView ShopSearch(@RequestParam Map<String, Object> map) throws Exception {
		log.debug("###### 실시간 재고 소유 매장 리스트 검색 ######");
		ModelAndView mv = new ModelAndView("stockShopSearch_ajax");

		map.put("START", 1);
		map.put("END", 9);
		List<Map<String, Object>> resultList = stockService.selectShopStockList(map);
		mv.addObject("shopList", resultList);

		return mv;
	}

	@ResponseBody
	@PostMapping(value = "/goods/stockShopInfo")
	public Map<String, Object> stockShopInfo(@RequestParam Map<String, Object> map) throws Exception {
		log.debug("###### 실시간 재고 소유 매장 상세정보 ######");
		Map<String, Object> resultMap = stockService.selectStockShopInfo(map);

		return resultMap;
	}

}
