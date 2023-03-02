package sk.main.controller;

import java.util.Map;

import javax.annotation.Resource;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import sk.main.service.MainService;

@Controller
public class MainController {

	@Resource(name = "mainService")
	private MainService mainService;

	Log log = LogFactory.getLog(this.getClass());

	@GetMapping(value = "/main")
	public ModelAndView main(@RequestParam Map<String, Object> map) throws Exception {
		log.debug("###### SHOEKETING 메인페이지 ######");
		ModelAndView mv = new ModelAndView("main");
		return mv;
	}

	/*
	 * @GetMapping(value = "/totalSearch") public ModelAndView
	 * totalSearch(@RequestParam Map<String, Object> map) throws Exception {
	 * log.debug("###### totalSearch ######"); ModelAndView mv = new
	 * ModelAndView("totalSearch"); /////////////////////////////// 페이징
	 * ///////////////////////////////// int pg = 1; // 현재 페이지 기본값 1 if
	 * (commandMap.get("pg") != null) { pg = Integer.parseInt((String)
	 * commandMap.get("pg")); // 현제 페이지 값이 넘어오면 설정 } int pageSize = 8; // 한 페이지에 보여줄
	 * 게시글 수 정하기 int pageBlock = 10; // 페이지 수 정하기
	 * 
	 * int endNum = pg * pageSize; // 가져올 데이터의 끝 행 ${END} int startNum = endNum -
	 * pageSize + 1; // 가져올 데이터의 첫 행 ${START}
	 * 
	 * commandMap.put("START", startNum); commandMap.put("END", endNum);
	 * 
	 * // 검색어, 조건 등 추가 파라미터 String categoryType = (String)
	 * commandMap.get("categoryType"); String keyword = ""; if
	 * (commandMap.get("keyword") != null) { // 키워드가 있으면 값으로 지정 keyword = (String)
	 * commandMap.get("keyword"); } String priceType = (String)
	 * commandMap.get("priceType"); String tstatusType = (String)
	 * commandMap.get("tstatusType");
	 * 
	 * // 총 개수를 가져오는 쿼리에는 int totalList =
	 * shopService.selectAllGoodsCount(commandMap.getMap()); // 총 게시글 수
	 * 
	 * // 페이징 클래스에 필요한 값을 넣어준다 goodsTotalListPaging.setCurrentPage(pg);
	 * goodsTotalListPaging.setPageBlock(pageBlock);
	 * goodsTotalListPaging.setPageSize(pageSize);
	 * goodsTotalListPaging.setTotalList(totalList);
	 * 
	 * if (categoryType != null) {
	 * goodsTotalListPaging.setCategoryType(categoryType); }
	 * 
	 * if (keyword != null) { goodsTotalListPaging.setKeyword(keyword); }
	 * 
	 * if (priceType != null) { goodsTotalListPaging.setPriceType(priceType); }
	 * 
	 * if (tstatusType != null) { goodsTotalListPaging.setTstatusType(tstatusType);
	 * }
	 * 
	 * // jsp에 삽입될 html을 생성하여 보낸다 goodsTotalListPaging.makePagingHTML();
	 * mv.addObject("goodsTotalListPaging", goodsTotalListPaging);
	 * /////////////////////////////// 페이징 end /////////////////////////////////
	 * 
	 * List<Map<String, Object>> list =
	 * shopService.selectAllGoodsList(commandMap.getMap()); mv.addObject("list",
	 * list);
	 * 
	 * return mv; }
	 */

}
