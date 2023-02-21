package sk.notice.controller;

import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class NoticeController {
	
	Logger log = LoggerFactory.getLogger("testlogger");
	
	@GetMapping(value="/noticeList")
	public ModelAndView noticeList(@RequestParam Map<String, Object> map) throws Exception{
		log.debug("###### noticeList ######");
		ModelAndView mv = new ModelAndView("noticeList");
		return mv;
	}
}
