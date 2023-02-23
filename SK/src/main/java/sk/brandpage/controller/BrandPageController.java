package sk.brandpage.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BrandPageController {
	
	//브랜드 회원 마이페이지 메인
	@GetMapping(value="/brandPage")
	public ModelAndView brandPage(@RequestParam Map<String, Object> map) throws Exception {
		ModelAndView mv = new ModelAndView("brandPage");
	 
	 return mv;
	}
	
	//브랜드 회원 정보 수정accountModifyForm
	@GetMapping(value="/brandModifyForm")
	public ModelAndView brandModifyForm(@RequestParam Map<String, Object> map) throws Exception {
		ModelAndView mv = new ModelAndView("brandModifyForm");
	 
	 return mv;
	}
}
