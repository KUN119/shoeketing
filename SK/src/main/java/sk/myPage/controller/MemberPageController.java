package sk.myPage.controller;


import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import sk.myPage.service.MemberPageService;

@RestController
public class MemberPageController {
	
	Log log = LogFactory.getLog(this.getClass());

	@Resource(name = "memberPageService")
	private MemberPageService memberPageService;


	//마이페이지 메인
	@RequestMapping(value="/myPage")
	public ModelAndView myPageMain(Map<String, Object> map, HttpServletRequest request, HttpSession session) throws Exception {
		log.debug("----------- 일반회원 마이페이지 메인 ----------");
		
		ModelAndView mv = new ModelAndView("myPageMain");
		
		//임시로직
		session.setAttribute("S_MEM_NUM", 2);
		session.setAttribute("S_MEM_NAME", "홍길동");
		session.setAttribute("S_MEM_EMAIL", "user1@naver.com");
		session.setAttribute("S_MEM_PW", "asdasd123!");
		session.setAttribute("S_MEM_GRADE", "골드");
		
			
//		//세션영역에 저장된 이름에 따라 mem_info 수정 필요
//		if(session.getAttribute("mem_info") != null) {
//			mv.addObject("mem_info", session.getAttribute("mem_info"));
//		}
		
		return mv;
	}
	
	//회원정보 수정 폼
	@RequestMapping(value="/myPage/accountModifyForm")
	public ModelAndView accountModifyForm(Map<String, Object> map, HttpServletRequest request, HttpSession session) throws Exception {
		log.debug("----------- 일반회원 회원정보 수정 폼 ----------");
		
		ModelAndView mv = new ModelAndView("accountModifyForm");
		Map<String, Object> resultMap = new HashMap<>();
//		//세션영역에 저장된 이름에 따라 mem_info 수정 필요
//		if(session.getAttribute("mem_info") == null) {
//			mv.addObject("mem_info", session.getAttribute("mem_info"));
//		}
		resultMap = memberPageService.selectAccountInfo(map);
		System.out.println("selectAccountInfo 조회결과 : "+ resultMap);
		//폼에서 mem_num 전달하거나 세션에서 가져오는 코드 작성 예정
		return mv;
	}
	
	//회원정보 수정
	@RequestMapping(value="/myPage/accountModify")
	public ModelAndView accountModify(Map<String, Object> map, HttpServletRequest request) throws Exception {
		log.debug("----------- 일반회원 회원정보 수정 처리 ----------");
		
		ModelAndView mv = new ModelAndView("redirect:/myPage/main");
		
		memberPageService.accountModify(map);
		
		return mv;
	}

	//회원 탈퇴 폼
	@GetMapping(value="/myPage/accountDeleteForm")
	public ModelAndView accountDeleteForm(Map<String, Object> map, HttpServletRequest request, HttpSession session) throws Exception {
		log.debug("----------- 일반회원 탈퇴 페이지 ----------");
		ModelAndView mv = new ModelAndView("accountDeleteForm");
		
		return mv;

	}
	 
	//비밀번호 확인
	@PostMapping(value="/myPage/accountDeleteForm", consumes = MediaType.APPLICATION_JSON_VALUE)
	//consumes = 전송 받을 데이터 타입이 json
	public Map<String, Object> checkPw(@RequestBody Map<String, Object> map, HttpServletRequest request, HttpSession session) throws Exception {
		log.debug("----------- 일반회원 회원 비밀번호 확인 ----------");
		String dbPw = ""; 
		String pw ="";
		Map<String, Object> result = new HashMap<>();
		map.put("MEM_EMAIL", (String)session.getAttribute("S_MEM_EMAIL"));
		
			//DB에서 비밀번호 꺼내오기
			dbPw = String.valueOf(memberPageService.pwCheck(map).get("MEM_PW"));
			//입력한 비밀번호
			pw = String.valueOf(map.get("MEM_PW").toString());
			System.out.println("DB 비밀번호 : " + dbPw + ", 입력한 비밀번호 : " + pw);
			
			if(dbPw.equals(pw)) { //비밀번호가 일치하면
			result.put("result", "success");
			} else if(!dbPw.equals(pw)) { //비밀번호가 일치하지 않으면
				result.put("result", "fail");
			}
			System.out.println(result.get("result").toString());
		//모든 상품의 예약 상태가 예약 대기중, 픽업완료, 픽업취소인 경우인지 체크하는 쿼리 작성 필요..
		//메인으로 리다이렉트 안 되는 거 해결하기
			
		return result;
	}

	//탈퇴 처리
	@SuppressWarnings("unchecked")
	@RequestMapping(value="/myPage/accountDelete")
	public ModelAndView accountDelete(HttpServletRequest request, HttpSession session) throws Exception {
		log.debug("----------- 일반회원 회원 탈퇴 처리 ----------");
		ModelAndView mv = new ModelAndView("redirect:/main");
		Map<String, Object> mem_num = new HashMap<>();
			
		if(session != null) {
			mem_num.put("MEM_NUM", session.getAttribute("S_MEM_NUM")); //임시로직이므로 수정예정
			memberPageService.deleteAccount(mem_num); //탈퇴 처리
			session.invalidate();//탈퇴 후 로그아웃 처리
		}
		return mv;
	}
		




}
