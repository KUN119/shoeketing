package sk.main.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import sk.common.service.CommonService;
import sk.common.service.InformService;
import sk.main.service.MainService;

@RestController
public class MainController {

	@Resource(name = "mainService")
	private MainService mainService;

	@Resource(name = "informService")
	private InformService informService;

	@Resource(name = "sessionService")
	private CommonService commonService;

	Log log = LogFactory.getLog(this.getClass());

	@GetMapping(value = "/main")
	public ModelAndView main(@RequestParam Map<String, Object> map) throws Exception {
		log.debug("###### SHOEKETING 메인페이지 ######");
		ModelAndView mv = new ModelAndView("main");
		return mv;
	}

	@RequestMapping(value = "/totalSearch")
	public ModelAndView totalSearch(@RequestParam Map<String, Object> map) throws Exception {
		log.debug("###### totalSearch ######");
		ModelAndView mv = new ModelAndView("totalSearch");

		map.put("START", 1);
		map.put("END", 10);

		Object keyword = map.get("keyword");
		if (keyword == null || ((String) keyword).isEmpty()) {
			return mv;
		}
		mv.addObject("keyword", keyword);
		System.out.println("keyword: " + keyword);

		List<Map<String, Object>> barndList = mainService.BrandSearch(map);
		List<Map<String, Object>> goodsList = mainService.GoodsSearch(map);
		List<Map<String, Object>> shopList = mainService.ShopSearch(map);

		mv.addObject("brandList", barndList);
		mv.addObject("shopList", shopList);
		mv.addObject("goodsList", goodsList);

		return mv;
	}

	@RequestMapping(value = "/totalSearch_ajax")
	public Map<String, Object> totalSearch_ajax(@RequestParam Map<String, Object> map) throws Exception {
		log.debug("###### totalSearch_ajax ######");

		map.put("START", 1);
		map.put("END", 10);

		Map<String, Object> info = new HashMap<String, Object>();

		Object keyword = map.get("keyword");
		if (keyword == null || ((String) keyword).isEmpty()) {
			return info;
		}
		info.put("keyword", keyword);

		System.out.println("keyword: " + keyword);

		List<Map<String, Object>> barndList = mainService.BrandSearch(map);
		List<Map<String, Object>> shopList = mainService.ShopSearch(map);
		List<Map<String, Object>> goodsList = mainService.GoodsSearch(map);

		info.put("brandList", barndList);
		info.put("shopList", shopList);
		info.put("goodsList", goodsList);

		return info;
	}

	@RequestMapping(value = "/inform")
	public ModelAndView inform(@RequestParam Map<String, Object> map, HttpSession session) throws Exception {
		log.debug("###### 알림 조회 ######");
		ModelAndView mv = new ModelAndView("inform_ajax");

		map.put("MEM_NUM", commonService.getSession(session, "MEM_NUM"));
		List<Map<String, Object>> resultList = informService.informList(map);

		mv.addObject("informList", resultList);

		return mv;
	}

	@RequestMapping(value = "/inform/confirmUpdate")
	public void informConfirmUpdate(@RequestBody Map<String, Object> map) throws Exception {
		log.debug("###### 알림 확인 ######");

		informService.confirmUpdate(map);
	}
}
