package sk.item.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import sk.item.service.StockService;

@RestController
public class StockController {
	
	Log log = LogFactory.getLog(this.getClass());
	
	@Resource(name="stockService")
	private StockService stockService;
	
	@GetMapping(value = "/shopPage/stockList")
	public ModelAndView shopStockList(Map<String, Object> map) throws Exception {
		log.debug("###### 매장 상품 재고 리스트 ######");
		ModelAndView mv = new ModelAndView("testMain");  // 추후 수정
		
		// 재고 리스트 토탈개수 (Ex, 상품이 14줄이면 토탈개수 14)
		int stockCount = stockService.selectStockCount(map);
		List<Map<String, Object>> shopStockList = stockService.selectStockList(map);
		
		mv.addObject("shopStockList", shopStockList);
		mv.addObject("stockCount", stockCount);
		
		return mv;
	}
	
	@ResponseBody  // ajax 구현예정. @RestController이므로 추후 @ResponsenBody 빼고,,! 
	@PostMapping(value = "/shopPage/stockModify")
	public Map<String, Object> shopStockModify(@RequestParam Map<String, Object> map) throws Exception {
		log.debug("###### 매장 상품 재고 수량 변경 ######");
		//ModelAndView mv = new ModelAndView("testMain");  // 추후 수정
		
		Map<String, Object> updateResult = stockService.updateStock(map);
	
		return updateResult;
	}

}
