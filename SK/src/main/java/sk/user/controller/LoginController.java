package sk.user.controller;

import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {

	Logger log = LoggerFactory.getLogger("testLogger");

	@GetMapping(value = "/loginSelect/member")
	public ModelAndView loginSelectMember(@RequestParam Map<String, Object> map) throws Exception {
		log.debug("###### 일반로그인 선택 페이지 ######");
		ModelAndView mv = new ModelAndView("loginSelectMember");
		return mv;
	}

	@GetMapping(value = "/loginSelect/shop")
	public ModelAndView loginSelectShop(@RequestParam Map<String, Object> map) throws Exception {
		log.debug("###### 매장회원 로그인 선택 페이지 ######");
		ModelAndView mv = new ModelAndView("loginSelectShop");
		return mv;
	}

	@GetMapping(value = "/loginSelect/brand")
	public ModelAndView loginSelectBrand(@RequestParam Map<String, Object> map) throws Exception {
		log.debug("###### 브랜드회원 로그인 선택 페이지 ######");
		ModelAndView mv = new ModelAndView("loginSelectBrand");
		return mv;
	}
	
	@GetMapping(value = "/loginSelect")
	public ModelAndView loginSelect(@RequestParam Map<String, Object> map)throws Exception{
		log.debug("###### 회원 로그인 선택 페이지 ######");
		ModelAndView mv = new ModelAndView("loginSelect");
		return mv;
	}
	
	@GetMapping(value = "/memberLoginForm")
	public ModelAndView memberLoginForm(@RequestParam Map<String, Object> map) throws Exception{
		log.debug("###### 일반 회원 로그인 폼 ######");
		ModelAndView mv = new ModelAndView("memberLoginForm");
		return mv;
	}
	
	@GetMapping(value = "/memberLogin")
	public ModelAndView memberLogin(@RequestParam Map<String, Object> map) throws Exception{
		log.debug("###### 일반 회원 로그인 ######");
		ModelAndView mv = new ModelAndView("memberLogin");
		return mv;
	}
	
	@GetMapping(value = "/brandLoginForm")
	public ModelAndView brandLoginForm(@RequestParam Map<String, Object> map) throws Exception{
		log.debug("###### 브랜드 회원 로그인 폼 ######");
		ModelAndView mv = new ModelAndView("brandLoginForm");
		return mv;
	}
	
	@GetMapping(value = "/brandLogin")
	public ModelAndView brandLogin(@RequestParam Map<String, Object> map) throws Exception{
		log.debug("###### 브랜드 회원 로그인 ######");
		ModelAndView mv = new ModelAndView("brandLogin");
		return mv;
	}
	
	@GetMapping(value = "/shopLoginForm")
	public ModelAndView shopLoginForm(@RequestParam Map<String, Object> map) throws Exception{
		log.debug("###### 매장 회원 로그인 폼 ######");
		ModelAndView mv = new ModelAndView("shopLoginForm");
		return mv;
	}
	
	@GetMapping(value = "/shopLogin")
	public ModelAndView shopLogin(@RequestParam Map<String, Object> map) throws Exception{
		log.debug("###### 매장 회원 로그인 ######");
		ModelAndView mv = new ModelAndView("shopLogin");
		return mv;
	}
	
	@GetMapping(value = "/logout")
	public ModelAndView logout(@RequestParam Map<String, Object> map) throws Exception{
		log.debug("###### 로그아웃 ######");
		ModelAndView mv = new ModelAndView("logout");
		return mv;
	}
	
	@GetMapping(value = "/findId")
	public ModelAndView findId(@RequestParam Map<String, Object> map) throws Exception{
		log.debug("###### 아이디 찾기 ######");
		ModelAndView mv = new ModelAndView("findId");
		return mv;
	}
	
	@GetMapping(value = "/findPw")
	public ModelAndView findPw(@RequestParam Map<String, Object> map) throws Exception{
		log.debug("###### 비밀번호 찾기 ######");
		ModelAndView mv = new ModelAndView("findPw");
		return mv;
	}
}
