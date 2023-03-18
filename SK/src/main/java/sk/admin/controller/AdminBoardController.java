package sk.admin.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import sk.admin.service.AdminBoardService;

@Controller
public class AdminBoardController {

	@Resource(name = "adminBoardService")
	private AdminBoardService adminBoardService;

	Log log = LogFactory.getLog(this.getClass());

	@GetMapping(value = "/admin/noticeList")
	public ModelAndView adminNoticeList(@RequestParam Map<String, Object> map) throws Exception {
		log.debug("######### 관리자 페이지 공지사항 리스트 ##########");
		ModelAndView mv = new ModelAndView("adminNoticeList");

	
				map.put("START", 1);
				map.put("END", 5);
				
				String searchType = (String) map.get("searchType");
				String keyword = "";
				
				if(map.get("keyword") != null) {
					keyword = (String) map.get("keyword");
				}
				
				if(searchType != null) {
					map.put("searchType", searchType);
				}
				
				if(keyword != null) {
					map.put("keyword", keyword);
				}
				
				List<Map<String, Object>> noticeList = adminBoardService.selectNoticeList(map);
				mv.addObject("noticeList", noticeList);
				
				System.out.println("map: " +map);
		return mv;
	}

	@GetMapping(value = "/admin/noticeDetail")
	public ModelAndView adminNoticeDetail(@RequestParam Map<String, Object> map) throws Exception {
		log.debug("######### 관리자 페이지 공지사항 상세보기 ##########");
		ModelAndView mv = new ModelAndView("adminNoticeDetail");

		System.out.println("map: " + map);
		
		Map<String, Object> noticeDetail = adminBoardService.selectNoticeDetail(map);
		mv.addObject("noticeDetail", noticeDetail);
		return mv;
	}

	@GetMapping(value = "/admin/noticeWriteForm")
	public ModelAndView adminNoticeWriteForm(@RequestParam Map<String, Object> map) throws Exception {
		log.debug("######### 관리자 페이지 공지사항 작성 폼 ##########");
		ModelAndView mv = new ModelAndView("adminNoticeWriteForm");

		return mv;
	}

	@GetMapping(value = "/admin/noticeModifyForm")
	public ModelAndView adminNoticeModifyForm(@RequestParam Map<String, Object> map) throws Exception {
		log.debug("######### 관리자 페이지 공지사항 수정 폼 ##########");
		ModelAndView mv = new ModelAndView("adminNoticeModifyForm");

		return mv;
	}

	@GetMapping(value = "/admin/noticeDelete")
	public void adminDeleteNotice(@RequestParam Map<String, Object> map) throws Exception {
		log.debug("######### 공지 사항 삭제 ##########");
		

		adminBoardService.adminDeleteNotice(map);
	}
	
	@GetMapping(value = "/admin/goodsTotalList")
	public ModelAndView adminGoodsTotalList(@RequestParam Map<String, Object> map) throws Exception {
		log.debug("######### 관리자 페이지 상품 전체 리스트 ##########");
		ModelAndView mv = new ModelAndView("adminGoodsTotalList");

		return mv;
	}
	
	@GetMapping(value = "/admin/goodsDelete")
	public void adminDeleteGoods(@RequestParam Map<String, Object> map) throws Exception {
		log.debug("######### 전체 상품 삭제 ##########");
		

		adminBoardService.adminDeleteGoods(map);
	}
	
}
