package sk.item.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
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

	@GetMapping(value = "/brandPage/goodsList")
	public ModelAndView goodsList(@RequestParam Map<String, Object> map, HttpSession session) throws Exception {
		log.debug("###### 브랜드회원 전체상품 리스트 ######");
		ModelAndView mv = new ModelAndView("goodsList");
		return mv;
	}

	// 브랜드 회원 정보 전체 상품 리스트
	@PostMapping(value = "/brandPage/goodsList/paging")
	public ModelAndView goodsListPaging(@RequestParam Map<String, Object> map, HttpSession session) throws Exception {
		log.debug("###### 브랜드회원 전체상품 리스트 페이징 ######");
		ModelAndView mv = new ModelAndView("jsonView");

//      map.put("START", 1);
//      map.put("END", 10);
		System.out.println("BRAND_NAME : " + commonService.getSessionBrand(session, "BRAND_NAME"));
		map.put("BRAND_NAME", commonService.getSessionBrand(session, "BRAND_NAME"));

		System.out.println("map : " + map);

		// 전체상품 리스트 가져오기
		List<Map<String, Object>> list = goodsService.selectBrandGoodsList(map);

		// 브랜드의 상품 전체 개수 가져오기
		int count = goodsService.selectBrandGoodsCount(map);

		System.out.println("브랜드 전체상품 리스트 : " + list);
		mv.addObject("list", list);
		mv.addObject("keyword", map.get("keyword"));
		mv.addObject("searchType", map.get("searchType"));
		// 검색 후 화면에 검색어와 검색조건이 유지되도록 파라미터를 뷰로 전송
		mv.addObject("TOTAL", count); // 브랜드 전체 상품 토탈 개수
		return mv;
	}

	@RequestMapping(value = "/goods/totalList")
	public ModelAndView allGoodsList(@RequestParam Map<String, Object> map) throws Exception {
		log.debug("###### allGoodsList ######");
		ModelAndView mv = new ModelAndView("allGoodsList");
		
//		map.put("START", 1);
//		map.put("END", 100);
//
//		String listType = "";
//		if (map.get("listType") != null) {
//			listType = (String) map.get("listType");
//			map.put("listType", listType);
//		}
//		
//		String category = "";
//		if (map.get("category") != null) {
//			category = (String) map.get("category");
//			map.put("categoryType", category);
//		}
//		
//		String bName = "";
//		if (map.get("bName") != null) {
//			bName = (String) map.get("bName");
//			map.put("brandType", bName);
//		}
//		
//		String size = "";
//		if (map.get("size") != null) {
//			size = (String) map.get("size");
//			map.put("sizeType", size);
//		}
//		
//		String priceType = "";
//		if (map.get("priceType") != null) {
//			priceType = (String) map.get("priceType");
//			map.put("priceType", priceType);
//		}
//
//		List<Map<String, Object>> list = goodsService.selectAllGoodsList(map);
//
//		System.out.println("list: " + list);
//		System.out.println("map: " + map);
//
//		mv.addObject("list", list);
		return mv;
	}
	
	@RequestMapping(value = "/goods/totalList/paging")
	public ModelAndView allGoodsListPaging(@RequestParam Map<String, Object> map) throws Exception {
		log.debug("###### allGoodsListPaging ######");
		ModelAndView mv = new ModelAndView("jsonView");

		String listType = "";
		if (map.get("listType") != null) {
			listType = (String) map.get("listType");
			map.put("listType", listType);
		}
		
		String category = "";
		if (map.get("category") != null) {
			category = (String) map.get("category");
			map.put("categoryType", category);
		}
		
		String bName = "";
		if (map.get("bName") != null) {
			bName = (String) map.get("bName");
			map.put("brandType", bName);
		}
		
		String size = "";
		if (map.get("size") != null) {
			size = (String) map.get("size");
			map.put("sizeType", size);
		}
		
		String priceType = "";
		if (map.get("priceType") != null) {
			priceType = (String) map.get("priceType");
			map.put("priceType", priceType);
		}

		List<Map<String, Object>> list = goodsService.selectAllGoodsList(map);

		System.out.println("list: " + list);
		System.out.println("map: " + map);
		
		if (list.size() > 0) {
			int count = goodsService.selectAllGoodsCount(map);
			mv.addObject("TOTAL", count);
			System.out.println(count);
		} else {
			mv.addObject("TOTAL", 0);
		}
		
		mv.addObject("list", list);
		return mv;
	}

	@RequestMapping(value = "/goods/totalList_ajax")
	public ModelAndView allGoodsList_ajax(@RequestParam Map<String, Object> map) throws Exception {
		log.debug("###### allGoodsList ######");
		ModelAndView mv = new ModelAndView("allGoodsList_ajax");
//		map.put("START", 1);
//		map.put("END", 100);

		String listType = "";
		if (map.get("listType") != null) {
			listType = (String) map.get("listType");
			map.put("listType", listType);
		}

		String category = "";
		if (map.get("category") != null) {
			category = (String) map.get("category");
			map.put("categoryType", category);
		}

		String bName = "";
		if (map.get("bName") != null) {
			bName = (String) map.get("bName");
			map.put("brandType", bName);
		}

		String size = "";
		if (map.get("size") != null) {
			size = (String) map.get("size");
			map.put("sizeType", size);
		}

		String priceType = "";
		if (map.get("priceType") != null) {
			priceType = (String) map.get("priceType");
			map.put("priceType", priceType);
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
		System.out.println("goodsDeatil map : " + map);
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

//   @RequestMapping(value="/brandPage/goodsModifyForm")
//   public ModelAndView goodsModifyForm(Map<String, Object> map, HttpSession session) throws Exception {
//      log.debug("###### goodsModifyForm ######");
//      System.out.println("goodsModifyForm map : " + map);
//      ModelAndView mv = new ModelAndView("goodsWriteForm");
//      
//      //TOTAL_GOODS_NUM
//      
//      return mv;
//   }
	// 상품명
	// 모델번호
	// 카테고리
	// 가격
	// 사이즈
	// 파일

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
		log.debug("###### 브랜드 상품 등록 폼 ######");
		ModelAndView mv = new ModelAndView("goodsWriteForm");

		return mv;
	}

	@PostMapping(value = "/brandPage/goodsWrite")
	public Map<String, Object> goodsWrite(MultipartFile[] uploadGoodsImg, @RequestParam Map<String, Object> map,
			HttpSession session) throws Exception {
		log.debug("###### 브랜드 상품 등록 ######");

		String a = uploadGoodsImg[0].getOriginalFilename();
		String b = uploadGoodsImg[1].getOriginalFilename();
		String c = uploadGoodsImg[2].getOriginalFilename();
		System.out.println("#########################" + a);
		System.out.println("#########################" + b);
		System.out.println("#########################" + c);

		Map<String, Object> goodsWrite = goodsService.insertGoods(map, session, uploadGoodsImg);
		System.out.println("goodsWrite Map 확인 : " + goodsWrite);

		return goodsWrite;
	}

}