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

	@GetMapping(value = "/shopPage/stockList")
	public ModelAndView shopStockList(Map<String, Object> map) throws Exception {
		log.debug("###### 매장 상품 재고 리스트 ######");
		ModelAndView mv = new ModelAndView("stockList");  // 추후 수정
		
		// 재고 리스트 토탈개수 (Ex, 상품이 14줄이면 토탈개수 14)
		int stockCount = stockService.selectStockCount(map);
		List<Map<String, Object>> shopStockList = stockService.selectStockList(map);

		mv.addObject("shopStockList", shopStockList);
		mv.addObject("stockCount", stockCount);

		return mv;
	}

	@ResponseBody // ajax 구현예정. @RestController이므로 추후 @ResponsenBody 빼고,,!
	@PostMapping(value = "/shopPage/stockModify")
	public Map<String, Object> shopStockModify(@RequestParam Map<String, Object> map) throws Exception {
		log.debug("###### 매장 상품 재고 수량 변경 ######");
		// ModelAndView mv = new ModelAndView("testMain"); // 추후 수정

		Map<String, Object> updateResult = stockService.updateStock(map);

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
