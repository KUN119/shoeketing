package sk.item.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import sk.common.service.CommonService;
import sk.item.service.BasketService;

@RestController
public class BasketController {

	Log log = LogFactory.getLog(this.getClass());

	@Resource(name="sessionService")
	private CommonService sessionService;
	
	@Resource(name = "basketService")
	private BasketService basketService;

	@RequestMapping(value = "/basket/basketList")
	public ModelAndView basketList(Map<String, Object> map, HttpServletRequest request, HttpSession session) throws Exception {
		log.debug("###### 장바구니 리스트 ######");
		ModelAndView mv = new ModelAndView("basketList");
		
		String memNum = sessionService.getSession(session, "MEM_NUM");
		System.out.println("memNum: " + memNum);
		
		map.put("BASKET_MEM_NUM", memNum);
		List<Map<String, Object>> list = basketService.selectBasketList(map);
		System.out.println("list: " + list);
		
		mv.addObject("list", list);
		return mv;
	}
}