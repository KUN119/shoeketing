package sk.myPage.controller;

import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import sk.myPage.service.BrandPageService;


@Controller
public class BrandPageController {
	Logger log = LoggerFactory.getLogger(this.getClass());
	
	@Resource(name="brandPageService")
	private BrandPageService brandPageService;
	
	@GetMapping(value = "/brandPage")
	public ModelAndView brandPage(Map<String, Object> map) throws Exception {
		log.debug("###### 브랜드 마이 페이지 메인 ######");
		ModelAndView mv = new ModelAndView("brandPageMain");
		return mv;
	}
	
	@GetMapping(value = "/brandPage/accountModifyForm")
	public ModelAndView brandModifyForm(Map<String, Object> map) throws Exception {
		log.debug("###### 브랜드 기본 정보 수정 폼 ######");
		ModelAndView mv = new ModelAndView("testMain");
		
		map.put("BRAND_NUM", 1);
		
		// 기본 정보 수정폼에 브랜드 정보 조회해서 출력
		brandPageService.selectBrandInfo(map);
		System.out.println("brand 정보조회 map 확인 : " + map);
		
		return mv;
	}
	
	@GetMapping(value = "/brandPage/accountModify")
	public ModelAndView brandModify(Map<String, Object> map) throws Exception {
		log.debug("###### 브랜드 기본 정보 수정 ######");
		ModelAndView mv = new ModelAndView("");
		return mv;
	}
	
	
	@GetMapping(value = "/brandPage/shopList")
	public ModelAndView shopList(Map<String, Object> map) throws Exception {
		log.debug("###### 브랜드 입점 매장 리스트 ######");
		ModelAndView mv = new ModelAndView("");
		return mv;
	}
	
	@GetMapping(value = "/brandPage/shopRequestList")
	public ModelAndView shopRequestList(Map<String, Object> map) throws Exception {
		log.debug("###### 브랜드 매장 입점 요청 리스트 ######");
		ModelAndView mv = new ModelAndView("");
		return mv;
	}
	
	@GetMapping(value = "/brandPage/shopJoinConfirm")
	public ModelAndView shopJoinConfirm(Map<String, Object> map) throws Exception {
		log.debug("###### 브랜드 매장 입점 승인/거부 ######");
		ModelAndView mv = new ModelAndView("");
		return mv;
	}
	
	@GetMapping(value = "/brandPage/shopDelete")
	public ModelAndView shopDelete(Map<String, Object> map) throws Exception {
		log.debug("###### 브랜드 입점 매장 삭제(탈퇴) ######");
		ModelAndView mv = new ModelAndView("");
		return mv;
	}
	
	@GetMapping(value = "/brandPage/shopLocationInfo")
	public ModelAndView shopLocationInfo(Map<String, Object> map) throws Exception {
		log.debug("###### 브랜드 입점 매장 위치 조회 ######");
		ModelAndView mv = new ModelAndView("");
		return mv;
	}
	
	
	//브랜드관
	@GetMapping(value = "/brand/main")
	public ModelAndView brandInfo(Map<String, Object> map) throws Exception {
		log.debug("###### 브랜드관 메인 페이지 ######");
		ModelAndView mv = new ModelAndView("");
		return mv;
	}
	

}
