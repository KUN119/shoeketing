package sk.item.controller;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import sk.item.service.BasketService;

@Controller
public class BasketController {
	
	Logger log = LoggerFactory.getLogger("testLogger");
	
	@Resource(name = "basketService")
	private BasketService basketService;
	
	@SuppressWarnings("unused")
	@RequestMapping(value = "/basket/basketList")
	public ModelAndView basketList(Map Map) throws Exception {
		log.debug("###### 장바구니 리스트 ######");
		ModelAndView mv = new ModelAndView("basketList");
		return mv;
	}

}
