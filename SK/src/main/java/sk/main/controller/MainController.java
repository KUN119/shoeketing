package sk.main.controller;

import java.util.Map;

import javax.annotation.Resource;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import sk.main.service.MainService;

@Controller
public class MainController {

	@Resource(name = "mainService")
	private MainService mainService;

	Logger log = LogManager.getLogger(MainController.class);

	@GetMapping(value = "/main")
	public ModelAndView main(@RequestParam Map<String, Object> map) throws Exception {
		log.debug("###### SHOEKETING 메인페이지 ######");
		ModelAndView mv = new ModelAndView("main");
		Map<String, Object> resultMap = mainService.testMapper(map);
		System.out.println(resultMap.toString());
		return mv;
	}
}
