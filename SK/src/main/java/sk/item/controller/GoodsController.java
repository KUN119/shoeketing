package sk.item.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import sk.common.service.CommonService;
import sk.item.service.GoodsService;

@RestController
public class GoodsController {

	Log log = LogFactory.getLog(this.getClass());

	@Resource(name = "goodsService")
	private GoodsService goodsService;

	@Resource(name = "sessionService")
	private CommonService commonService;

	// 브랜드 회원 정보 전체 상품 리스트
	@GetMapping(value = "/brandPage/goodsList")
	public ModelAndView goodsList(@RequestParam Map<String, Object> map) throws Exception {
		ModelAndView mv = new ModelAndView("goodsList");
		return mv;
	}

	@RequestMapping(value = "/goods/totalList")
	public ModelAndView allGoodsList(@RequestParam Map<String, Object> map) throws Exception {
		log.debug("###### allGoodsList ######");
		ModelAndView mv = new ModelAndView("allGoodsList");
		map.put("START", 1);
		map.put("END", 5);

		String listType = "";
		if (map.get("listType") != null) {
			listType = (String) map.get("listType");
			map.put("listType", listType);
		}

		List<Map<String, Object>> list = goodsService.selectAllGoodsList(map);

		System.out.println("list: " + list);
		System.out.println("map: " + map);

		mv.addObject("list", list);
		return mv;
	}

	@RequestMapping(value = "/goods/totalList_ajax")
	public ModelAndView allGoodsList_ajax(@RequestParam Map<String, Object> map) throws Exception {
		log.debug("###### allGoodsList ######");
		ModelAndView mv = new ModelAndView("allGoodsList_ajax");
		map.put("START", 1);
		map.put("END", 5);

		String listType = "";
		if (map.get("listType") != null) {
			listType = (String) map.get("listType");
			map.put("listType", listType);
		}

		List<Map<String, Object>> list = goodsService.selectAllGoodsList(map);

		System.out.println("list: " + list);
		System.out.println("map: " + map);

		mv.addObject("list", list);
		return mv;
	}

	@RequestMapping(value = "/goods/goodsDetail")
	public ModelAndView goodsDetail(@RequestParam Map<String, Object> map, HttpSession session) throws Exception {
		log.debug("###### goodsDetail ######");
		ModelAndView mv = new ModelAndView("goodsDetail");
		map.put("MEM_NUM", commonService.getSession(session, "MEM_NUM"));

		List<Map<String, Object>> goodsDetailList = goodsService.selectGoodsDetail(map);
		List<Map<String, Object>> goodsImageList = goodsService.selectGoodsImage(map);
		Map<String, Object> goodsReviewPercentMap = goodsService.selectReviewPercent(map);
		int checkGoodsLike = goodsService.selectGoodsLike(map);

		mv.addObject("goodsDetailList", goodsDetailList);
		mv.addObject("goodsImageList", goodsImageList);
		mv.addObject("goodsReviewPercent", goodsReviewPercentMap);
		mv.addObject("checkGoodsLike", checkGoodsLike);

		return mv;
	}

	@ResponseBody
	@GetMapping(value = "/goods/goodsLike")
	public String goodsLike(@RequestParam Map<String, Object> map, HttpSession session) throws Exception {

		map.put("MEM_NUM", commonService.getSession(session, "MEM_NUM"));
		int isSuccess = goodsService.insertGoodsLike(map);

		String result = "";
		if (isSuccess == 1) {
			goodsService.updateGoodsLikeCountIncrease(map);
			result = "success";
		} else {
			result = "fail";
		}

		return result;
	}

	@ResponseBody
	@GetMapping(value = "/goods/goodsUnlike")
	public String goodsUnlike(@RequestParam Map<String, Object> map, HttpSession session) throws Exception {

		map.put("MEM_NUM", commonService.getSession(session, "MEM_NUM"));
		int isSuccess = goodsService.deleteGoodsLike(map);

		String result = "";
		if (isSuccess == 1) {
			goodsService.updateGoodsLikeCountDecrease(map);
			result = "success";
		} else {
			result = "fail";
		}

		return result;
	}

	@GetMapping(value = "/brandPage/goodsWriteForm")
	public ModelAndView goodsWriteForm(Map<String, Object> map) throws Exception {
		ModelAndView mv = new ModelAndView("goodsWriteForm");
		return mv;
	}

}
