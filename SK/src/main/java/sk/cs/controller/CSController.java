package sk.cs.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import sk.common.service.CommonService;
import sk.cs.service.CSService;

@Controller
public class CSController {
	
	@Resource(name="CSService")
	private CSService CSService;
	
	//세션의 정보를 가져오기 위해
	@Resource(name="sessionService")
	private CommonService sessionService;

	//나의 문의 리스트
	@GetMapping(value="/myPage/csList")
	public ModelAndView csList(@RequestParam Map<String, Object> map, HttpServletRequest request, HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView("csList"); //View 설정
		
		//세션의 MEM_NUM을 map에 넣어주기
		map.put("MEM_NUM", sessionService.getSession(session, "MEM_NUM"));
		map.put("END", 10);
		map.put("START", 1);
		System.out.println("CSList 컨트롤러 map : " + map);
		
		//리스트 가져오는 쿼리 실행
		List<Map<String, Object>> list = CSService.selectCSList(map);
		
		mv.addObject("CSList", list);
		
	 
	 return mv;
	}
	
	//문의 작성 폼
	@GetMapping(value="/csWriteForm")
	public ModelAndView csWriteForm(@RequestParam Map<String, Object> map) throws Exception {
		ModelAndView mv = new ModelAndView("csWriteForm");
	 
	 return mv;
	}
}

