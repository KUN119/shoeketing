package sk.member.controller;

import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class JoinController {

	Log log = LogFactory.getLog(this.getClass());

	@GetMapping(value = "/memberJoinForm")
	public ModelAndView memberJoinForm(@RequestParam Map<String, Object> map) throws Exception {
		log.debug("###### 일반회원 회원가입 폼 ######");
		ModelAndView mv = new ModelAndView("memberJoinForm");
		return mv;
	}

	@GetMapping(value = "/brandJoinForm")
	public ModelAndView brandJoinForm(@RequestParam Map<String, Object> map) throws Exception {
		log.debug("###### 브랜드 회원가입 폼 ######");
		ModelAndView mv = new ModelAndView("brandJoinForm");
		return mv;
	}

	@GetMapping(value = "/shopJoinForm")
	public ModelAndView shopJoinForm(@RequestParam Map<String, Object> map) throws Exception {
		log.debug("###### 매장 회원가입 폼 ######");
		ModelAndView mv = new ModelAndView("shopJoinForm");
		return mv;
	}

}
