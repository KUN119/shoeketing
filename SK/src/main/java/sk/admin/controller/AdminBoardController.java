package sk.admin.controller;

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

		return mv;
	}

	@GetMapping(value = "/admin/noticeDetail")
	public ModelAndView adminNoticeDetail(@RequestParam Map<String, Object> map) throws Exception {
		log.debug("######### 관리자 페이지 공지사항 상세보기 ##########");
		ModelAndView mv = new ModelAndView("adminNoticeDetail");

		return mv;
	}

	@GetMapping(value = "/admin/noticeWriteForm")
	public ModelAndView adminNoticeWriteForm(@RequestParam Map<String, Object> map) throws Exception {
		log.debug("######### 관리자 페이지 공지사항 작성 폼 ##########");
		ModelAndView mv = new ModelAndView("adminNoticeWriteForm");

		return mv;
	}
}
