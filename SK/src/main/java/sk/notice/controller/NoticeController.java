package sk.notice.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import sk.notice.service.NoticeService;

@RestController
public class NoticeController {

	@Resource(name = "noticeService")
	private NoticeService noticeService;

	Log log = LogFactory.getLog(this.getClass());

	@RequestMapping(value = "/noticeList")
	public ModelAndView noticeList(@RequestParam Map<String, Object> map) throws Exception {
		log.debug("###### noticeList ######");
		ModelAndView mv = new ModelAndView("noticeList");

		// 페이징 되면 1번이 맨위로 올라가게 jsp에서 바꾸시오
//		map.put("START", 1);
//		map.put("END", 5);
//		
//		String searchType = (String) map.get("searchType");
//		String keyword = "";
//		
//		if(map.get("keyword") != null) {
//			keyword = (String) map.get("keyword");
//		}
//		
//		if(searchType != null) {
//			map.put("searchType", searchType);
//		}
//		
//		if(keyword != null) {
//			map.put("keyword", keyword);
//		}
//		
//		List<Map<String, Object>> noticeList = noticeService.selectNoticeList(map);
//		mv.addObject("noticeList", noticeList);
//		
//		System.out.println("map: " +map);

		return mv;
	}

	@RequestMapping(value = "/noticeList/paging")
	public ModelAndView selectBoardList(@RequestParam Map<String, Object> map) throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");

		String searchType = (String) map.get("searchType");
		String keyword = "";

		if (map.get("keyword") != null) {
			keyword = (String) map.get("keyword");
		}

		if (searchType != null) {
			map.put("searchType", searchType);
		}

		if (keyword != null) {
			map.put("keyword", keyword);
		}

		List<Map<String, Object>> list = noticeService.selectNoticeList(map);
		mv.addObject("list", list);
		if (list.size() > 0) {
			int count = noticeService.selectNoticeCount(map);
			mv.addObject("TOTAL", count);
		} else {
			mv.addObject("TOTAL", 0);
		}

		return mv;
	}

	@RequestMapping(value = "/noticeList_ajax")
	public ModelAndView noticeList_ajax(@RequestParam Map<String, Object> map) throws Exception {
		log.debug("###### noticeList_ajax ######");
		ModelAndView mv = new ModelAndView("noticeList_ajax");

		// 페이징 되면 1번이 맨위로 올라가게 jsp에서 바꾸시오
		map.put("START", 1);
		map.put("END", 5);

		String searchType = (String) map.get("searchType");
		String keyword = "";

		if (map.get("keyword") != null) {
			keyword = (String) map.get("keyword");
		}

		if (searchType != null) {
			map.put("searchType", searchType);
		}

		if (keyword != null) {
			map.put("keyword", keyword);
		}

		List<Map<String, Object>> noticeList = noticeService.selectNoticeList(map);
		mv.addObject("noticeList", noticeList);

		System.out.println("map: " + map);

		return mv;
	}

	@RequestMapping(value = "/noticeDetail")
	public ModelAndView noticeDetail(@RequestParam Map<String, Object> map) throws Exception {
		log.debug("###### noticeDetail ######");
		ModelAndView mv = new ModelAndView("noticeDetail");

		System.out.println("map: " + map);

		Map<String, Object> noticeDetail = noticeService.selectNoticeDetail(map);
		mv.addObject("noticeDetail", noticeDetail);

		return mv;
	}
}
