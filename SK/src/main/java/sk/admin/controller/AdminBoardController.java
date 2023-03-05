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

	@GetMapping(value = "/admin/main")
	public ModelAndView adminMain(@RequestParam Map<String, Object> map) throws Exception {
		log.debug("######### 관리자 페이지 메인 ##########");
		ModelAndView mv = new ModelAndView("adminMain");

		return mv;
	}
}
