package sk.common.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import sk.common.service.CommonService;

@Controller
public class CommonController {

	@Resource(name = "commonService")
	private CommonService commonService;

	@RequestMapping(value = "/main")
	public ModelAndView main() throws Exception {
		ModelAndView mv = new ModelAndView("test");
		return mv;
	}

}
