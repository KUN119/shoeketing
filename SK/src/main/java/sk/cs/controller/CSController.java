package sk.cs.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import sk.common.service.CommonService;
import sk.cs.service.CSService;

@RestController
public class CSController {
	
	Log log = LogFactory.getLog(this.getClass());

	@Resource(name = "csService")
	private CSService csService;

	// 세션의 정보를 가져오기 위해
	@Resource(name = "sessionService")
	private CommonService sessionService;

	// 나의 문의 리스트
	@GetMapping(value = "/myPage/csList")
	public ModelAndView csList(Map<String, Object> map, HttpSession session) throws Exception {
		log.debug("###### 나의 문의내역 ######");
		ModelAndView mv = new ModelAndView("csList"); // View 설정

		// 세션의 MEM_NUM을 map에 넣어주기
		map.put("MEM_NUM", sessionService.getSession(session, "MEM_NUM"));
		map.put("END", 10);
		map.put("START", 1);
		System.out.println("CSList 컨트롤러 map : " + map);

		// 리스트 가져오는 쿼리 실행
		List<Map<String, Object>> list = csService.selectCSList(map);
		
		//댓글 리스트 가져오기 (jsp에서 처리상태 구분을 위해 필요)
		List<Map<String, Object>> replyList = new ArrayList<>();
		Map<String, Object> replyMap = new HashMap<>();
		for(Map<String, Object> csNum : list) {
			replyMap = csService.selectCSReply(csNum);
					replyList.add(replyMap);
		
		}
		
		mv.addObject("CSList", list);
		mv.addObject("replyList", replyList);

		return mv;
	}

	// 문의 작성 폼
	@GetMapping(value = "/csWriteForm")
	public ModelAndView csWriteForm(Map<String, Object> map) throws Exception {
		log.debug("###### 문의 작성 ######");
		ModelAndView mv = new ModelAndView("csWriteForm");

		return mv;
	}
	
	@RequestMapping(value= "/myPage/csDetail")
	public @ResponseBody ModelAndView csDetail(@RequestBody Map<String, Object> map) throws Exception {
		log.debug("###### 문의 상세보기 ######");
		ModelAndView mv = new ModelAndView("jsonView");
		
		System.out.println("csDetail map : " + map);
		//글내용 가져오기
		Map<String, Object> resultMap = csService.selectCSDetail(map);
		
		//댓글 가져오기
		Map<String, Object> replyMap = csService.selectCSReply(map);
		//CS_REPLY_NUM도 가져오지만 필요하지 않기 때문에 댓글내용만 꺼내서 resultMap에 추가함
		resultMap.put("CS_REPLY_CONTENT", replyMap.get("CS_REPLY_CONTENT").toString());
		System.out.println("resultMap : " + resultMap);
		
		mv.addObject("result",resultMap);
		
		return mv;
	}
	
	
}
