package sk.member.controller;

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

	@GetMapping(value = "/loginSelect")
	public ModelAndView loginSelect(@RequestParam Map<String, Object> map) throws Exception {
		log.debug("###### 로그인 선택 페이지 ######");
		ModelAndView mv = new ModelAndView("loginSelect");
		return mv;
	}
}
