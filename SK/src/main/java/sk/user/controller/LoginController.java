package sk.user.controller;

import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {

	Logger log = LoggerFactory.getLogger("testLogger");

	@GetMapping(value = "/loginSelect/member")
	public ModelAndView loginSelectMember(@RequestParam Map<String, Object> map) throws Exception {
		log.debug("###### 일반로그인 선택 페이지 ######");
		ModelAndView mv = new ModelAndView("loginSelectMember");
		return mv;
	}

	@GetMapping(value = "/loginSelect/shop")
	public ModelAndView loginSelectShop(@RequestParam Map<String, Object> map) throws Exception {
		log.debug("###### 매장회원 로그인 선택 페이지 ######");
		ModelAndView mv = new ModelAndView("loginSelectShop");
		return mv;
	}

	@GetMapping(value = "/loginSelect/brand")
	public ModelAndView loginSelectBrand(@RequestParam Map<String, Object> map) throws Exception {
		log.debug("###### 브랜드회원 로그인 선택 페이지 ######");
		ModelAndView mv = new ModelAndView("loginSelectBrand");
		return mv;
	}
}
