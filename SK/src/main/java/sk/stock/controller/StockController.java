package sk.stock.controller;

import java.util.Map;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class StockController {
	Logger log = LogManager.getLogger(this.getClass());

	@GetMapping(value = "/shopPage/stockList") //매장 마이페이지 재고 관리
	public ModelAndView stockList(Map<String, Object> map) throws Exception {
		log.debug("###### 매장 마이페이지 재고 관리 ######");
		ModelAndView mv = new ModelAndView("stockList");  //추후 수정
		
		return mv;
	}
}
