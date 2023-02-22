package sk.item.controller;

import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class GoodsController {
	
	Logger log = LoggerFactory.getLogger("testlogger");
	
	@GetMapping(value="/goods/totalList")
	public ModelAndView allGoodsList(@RequestParam Map<String, Object> map) throws Exception{
		log.debug("###### allGoodsList ######");
		ModelAndView mv = new ModelAndView("allGoodsList");
		return mv;
	}
	
	@GetMapping(value="/goods/stockSearchForm")
	public ModelAndView stockSearchForm(@RequestParam Map<String, Object> map) throws Exception{
		log.debug("###### allGoodsList ######");
		ModelAndView mv = new ModelAndView("stockSearchForm");
		return mv;
	}
	
	@GetMapping(value="/goods/goodsDetail")
	public ModelAndView goodsDetail(@RequestParam Map<String, Object> map) throws Exception{
		log.debug("###### goodsDetail ######");
		ModelAndView mv = new ModelAndView("goodsDetail");
		return mv;
	}
}
