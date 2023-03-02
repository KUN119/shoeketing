package sk.notice.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import sk.notice.service.NoticeService;

@RestController
public class NoticeController {
	
	@Resource(name = "noticeService")
	private NoticeService noticeService;

	Log log = LogFactory.getLog(this.getClass());

	@GetMapping(value = "/noticeList")
	public ModelAndView noticeList(@RequestParam Map<String, Object> map) throws Exception {
		log.debug("###### noticeList ######");
		ModelAndView mv = new ModelAndView("noticeList");
		
		//바꿔야 됨
		//페이징 되면 1번이 맨위로 올라가게 jsp에서 바꾸시오
		map.put("START", 1);
		map.put("END", 5);
		
		List<Map<String, Object>> noticeList = noticeService.selectNoticeList(map);
		mv.addObject("noticeList", noticeList);
		
		return mv;
	}

	@RequestMapping(value = "/noticeDetail")
	public ModelAndView noticeDetail(@RequestParam Map<String, Object> map) throws Exception {
		log.debug("###### noticeDetail ######");
		ModelAndView mv = new ModelAndView("noticeDetail");
		
		System.out.println("map: " + map);
		
		Map<String, Object> noticeDetail = noticeService.selectNoticeDetail(map);
		mv.addObject("noticeDetail", noticeDetail);
		
		return mv;
	}
}
