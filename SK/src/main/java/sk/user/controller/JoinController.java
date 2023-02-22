package sk.user.controller;

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
}
