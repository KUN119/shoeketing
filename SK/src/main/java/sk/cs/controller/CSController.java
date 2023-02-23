package sk.cs.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CSController {

	//csList
	@GetMapping(value="/csList")
	public ModelAndView csList(@RequestParam Map<String, Object> map) throws Exception {
		ModelAndView mv = new ModelAndView("csList");
	 
	 return mv;
	}
	
	//csWrite
	@GetMapping(value="/csWriteForm")
	public ModelAndView csWriteForm(@RequestParam Map<String, Object> map) throws Exception {
		ModelAndView mv = new ModelAndView("csWriteForm");
	 
	 return mv;
	}
}

