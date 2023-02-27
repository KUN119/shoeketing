package sk.item.controller;

import java.util.Map;

import javax.annotation.Resource;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import sk.item.service.BasketService;

@Controller
public class BasketController {

	Log log = LogFactory.getLog(this.getClass());

	@Resource(name = "basketService")
	private BasketService basketService;

	@SuppressWarnings("unused")
	@RequestMapping(value = "/basket/basketList")
	public ModelAndView basketList(Map<String, Object> Map) throws Exception {
		log.debug("###### 장바구니 리스트 ######");
		ModelAndView mv = new ModelAndView("basketList");
		return mv;
	}

}
