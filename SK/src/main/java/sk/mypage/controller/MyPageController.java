package sk.mypage.controller;

import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MyPageController {

	Log log = LogFactory.getLog(this.getClass());

	@GetMapping(value = "/myPage")
	public ModelAndView myPageMain(@RequestParam Map<String, Object> map) throws Exception {
		ModelAndView mv = new ModelAndView("myPageMain");

		return mv;
	}

	@GetMapping(value = "/accountModifyForm")
	public ModelAndView accountModifyForm(@RequestParam Map<String, Object> map) throws Exception {
		ModelAndView mv = new ModelAndView("accountModifyForm");

		return mv;
	}

	@GetMapping(value = "/accountDeleteForm")
	public ModelAndView accountDeleteForm(@RequestParam Map<String, Object> map) throws Exception {
		ModelAndView mv = new ModelAndView("accountDeleteForm");
		//
		return mv;
	}

	@GetMapping(value = "/goodsLikeList")
	public ModelAndView goodsLikeList(@RequestParam Map<String, Object> map) throws Exception {
		ModelAndView mv = new ModelAndView("goodsLikeList");
		// goodsLikeList
		return mv;
	}

}