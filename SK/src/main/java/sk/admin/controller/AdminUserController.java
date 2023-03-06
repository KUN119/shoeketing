package sk.admin.controller;

import java.util.Map;

import javax.annotation.Resource;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import sk.admin.service.AdminUserService;

@Controller
public class AdminUserController {

	@Resource(name = "adminUserService")
	private AdminUserService adminUserService;

	Log log = LogFactory.getLog(this.getClass());

	@GetMapping(value = "/admin/memberList")
	public ModelAndView adminMemberList(@RequestParam Map<String, Object> map) throws Exception {
		log.debug("######### 관리자 페이지 일반회원 리스트 ##########");
		ModelAndView mv = new ModelAndView("adminMemberList");

		return mv;
	}

	@GetMapping(value = "/admin/memberDetail")
	public ModelAndView adminMemberDetail(@RequestParam Map<String, Object> map) throws Exception {
		log.debug("######### 관리자 페이지 일반회원 상세보기 ##########");
		ModelAndView mv = new ModelAndView("adminMemberDetail");

		return mv;
	}

	@GetMapping(value = "/admin/shopList")
	public ModelAndView adminShopList(@RequestParam Map<String, Object> map) throws Exception {
		log.debug("######### 관리자 페이지 매장회원 리스트 ##########");
		ModelAndView mv = new ModelAndView("adminShopList");

		return mv;
	}

	@GetMapping(value = "/admin/shopDetail")
	public ModelAndView adminShopDetail(@RequestParam Map<String, Object> map) throws Exception {
		log.debug("######### 관리자 페이지 매장회원 상세보기 ##########");
		ModelAndView mv = new ModelAndView("adminShopDetail");

		return mv;
	}

	@GetMapping(value = "/admin/brandList")
	public ModelAndView adminBrandList(@RequestParam Map<String, Object> map) throws Exception {
		log.debug("######### 관리자 페이지 브랜드회원 리스트 ##########");
		ModelAndView mv = new ModelAndView("adminBrandList");

		return mv;
	}

	@GetMapping(value = "/admin/brandDetail")
	public ModelAndView adminBrandDetail(@RequestParam Map<String, Object> map) throws Exception {
		log.debug("######### 관리자 페이지 브랜드회원 상세보기 ##########");
		ModelAndView mv = new ModelAndView("adminBrandDetail");

		return mv;
	}
}
