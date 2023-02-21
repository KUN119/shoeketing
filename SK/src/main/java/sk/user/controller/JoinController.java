package sk.user.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


import sk.user.service.JoinService;



@Controller
public class JoinController {

	Logger log = LoggerFactory.getLogger("testLogger");
	
	@Resource(name = "joinService")
	private JoinService joinService;
	// ServiceImpl 객체 주입
	// @Service를 통해 joinService란 이름으로 빈 등록했던 ServiceImpl

	
	// 회원가입 폼 띄우기
		@RequestMapping(value = "/memberJoinForm")
		public ModelAndView memberJoinForm(Map Map) throws Exception {
			log.debug("###### 회원가입 ######");

			ModelAndView mv = new ModelAndView("memberJoinForm"); // tiles이름 (tiles.xml에서 이름에 해당하는 jsp 주소를 확인할 수 있음

			return mv;
		}
	
	@GetMapping(value = "/memberJoin/emailCheck")
	public @ResponseBody String emailCheck(String email) throws Exception {
		log.debug("###### 이메일 중복 확인 ######");
		Map<String, Object> emailMap = new HashMap<>();
		emailMap.put("MEM_EMAIL", email);

		String result = ""; // 이메일 중복확인 후 결과를 해당 변수에 받아온다

		Map<String, Object> map = joinService.selectEmailCheck(emailMap);

		if (map != null) {
			result = "fail";
		} else {
			result = "success";
		}

		return result;
	}
	
	@GetMapping(value = "/memberJoin/phoneAuth")
	public ModelAndView phoneAuth(@RequestParam Map<String, Object> map) throws Exception {
		log.debug("###### 휴대폰 인증 ######");
		ModelAndView mv = new ModelAndView("phoneAuth");
		return mv;
	}
	
	
		
		@RequestMapping(value = "/memberJoin/joinAvailable")
		public ModelAndView joinAvailable(HttpServletRequest request) throws Exception {
		    log.debug("###### 회원가입 가능 여부 검토 ######");
		    
		   
		    String email = request.getParameter("email");
		    

		    ModelAndView modelAndView = new ModelAndView();
		    
		    int check = joinService.selectEmailCheck(email);
		    System.out.println("check : " + check);

		    if (check == 1) {
		        // DB에 회원가입 처리 전, 회원 탈퇴한 이력이 있고 7일 지났는지 여부 확인
		        int delCount = joinService.selectDelCount(email);
		        System.out.println("delCount : " + delCount);

		        if (delCount == 0) { // 회원 탈퇴 후 7일이 지나지 않았을 경우
		            modelAndView.addObject("result", "fail");
		        } else { // 회원 탈퇴 후 7일이 지났거나, 혹은 처음으로 가입할 경우
		            // DB에 회원가입 처리
		            Member member = new Member();
		            
		            member.setEmail(email);
		            
		            joinService.insertMember(member);
		            modelAndView.addObject("result", "success");
		        }
		    } else {
		        Member member = new Member();
		        
		        member.setEmail(email);
		        
		        joinService.insertMember(member);
		        modelAndView.addObject("result", "success");
		    }

		    modelAndView.setViewName("joinResult");
		    return modelAndView;
		}

		
	//회원 가입 성공
	@GetMapping(value = "/memberJoin/joinSuccess")
	public ModelAndView memberInsertMember(@RequestParam Map<String, Object> map) throws Exception {
		log.debug("###### 회원가입 성공 ######");
		
		
		ModelAndView mv = new ModelAndView("InsertMember");
		return mv;
	}
	
	@GetMapping(value = "/brandJoinForm")
	public ModelAndView brandJoinForm(@RequestParam Map<String, Object> map) throws Exception {
		log.debug("###### 브랜드 회원가입 ######");
		ModelAndView mv = new ModelAndView("brandJoinForm");
		return mv;
	}
	
	@GetMapping(value = "/brand/bNumAuth")
	public ModelAndView bNumAuth(@RequestParam Map<String, Object> map) throws Exception {
		log.debug("###### 사업자 등록번호 인증 ######");
		ModelAndView mv = new ModelAndView("bNumAuth");
		return mv;
	}
	
	@GetMapping(value = "/brandJoin/brandInsertMember")
	public ModelAndView brandInsertMember(@RequestParam Map<String, Object> map) throws Exception {
		log.debug("###### 브랜드회원가입 성공 ######");
		ModelAndView mv = new ModelAndView("brandInsertMember");
		return mv;
	}
	
	@GetMapping(value = "/shopJoinForm")
	public ModelAndView shopJoinForm(@RequestParam Map<String, Object> map) throws Exception {
		log.debug("###### 매장 회원가입 ######");
		ModelAndView mv = new ModelAndView("shopJoinForm");
		return mv;
	}
	
	@GetMapping(value = "/shop/locationInfo")
	public ModelAndView shopLocationInfo(@RequestParam Map<String, Object> map) throws Exception {
		log.debug("###### 매장 위치 정보 확인 ######");
		ModelAndView mv = new ModelAndView("shopLocationInfo");
		return mv;
	}
	
	@GetMapping(value = "/shop/joinSuccess")
	public ModelAndView shopJoinSuccess(@RequestParam Map<String, Object> map) throws Exception {
		log.debug("###### 매장 회원가입성공 ######");
		ModelAndView mv = new ModelAndView("shopJoinSuccess");
		return mv;
	}
	
}
