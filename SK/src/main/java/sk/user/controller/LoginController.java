package sk.user.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import sk.user.service.LoginService;

@Controller
public class LoginController {

	Log log = LogFactory.getLog(this.getClass());

	@Resource(name = "loginService")
	private LoginService loginService;

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
	public ModelAndView loginSelect(@RequestParam Map<String, Object> map) throws Exception {
		log.debug("###### 회원 로그인 선택 페이지 ######");
		ModelAndView mv = new ModelAndView("loginSelect");
		return mv;
	}
	
	@GetMapping(value = "/memberLoginForm")
	public ModelAndView memberLoginForm(@RequestParam Map<String, Object> map) throws Exception {
		log.debug("###### 일반 회원 로그인 폼 ######");
		ModelAndView mv = new ModelAndView("memberLoginForm");
		return mv;
	}

	@GetMapping(value = "/memberLogin")
	public @ResponseBody Map<String, Object> login(@RequestBody Map<String, Object> map, HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		log.debug("###### 로그인 ######");
		// ModelAndView mv = new ModelAndView("loginForm");
		Map<String, Object> result = new HashMap<String, Object>();
		System.out.println("로그인 요청에 들어온 Map : " + map.toString());

		// 입력받은 아이디를 꺼내 변수 id에 저장
		Map<String, Object> member = loginService.selectId(map);
		log.debug("아이디 : " + (String) map.get("MEM_EMAIL"));

		HttpSession session = request.getSession();

		if (member == null) { // 가져온 데이터가 없으면
			result.put("result", "emailfail");

			log.debug("맵이 비어있음");

		} else { // 가져온 데이터가 있으면

			if (member.get("MEM_STATUS").toString().equals("N")) { // 정지된 회원이 아니면

				if (member.get("MEM_PW").equals(map.get("MEM_PW"))) { // 비밀번호 비교

					// 세션영역에 회원정보 올리기
					session.setAttribute("session_MEM_ID", map.get("MEM_EMAIL"));
					session.setAttribute("session_MEM_PW", map.get("MEM_PW"));
					session.setAttribute("session_MEM_INFO", member);

					// 로그인 유지 체크했을 경우
					if (map.get("useCookie") != null) {
						log.debug("############# 로그인 유지 체크");
						System.out.println("로그인 유지 체크 여부 : " + map.get("useCookie"));

						// 쿠키 생성
						Cookie cookie1 = new Cookie("emailCookie", (String) map.get("MEM_EMAIL"));
						Cookie cookie2 = new Cookie("pwCookie", (String) map.get("MEM_PW"));

						// 쿠키에 대한 설정
						Cookie[] cookies = { cookie1, cookie2 };
						for (int i = 0; i < cookies.length; i++) {
							// 유효시간 설정 (일주일)
							cookies[i].setMaxAge(60 * 60 * 24 * 7);

							cookies[i].setHttpOnly(true);

							// 쿠키 경로 설정
							cookies[i].setPath("/");

							// response로 쿠키 전달
							response.addCookie(cookies[i]);
						}
					}

					result.put("result", "succeess");

					log.debug("로그인 통과, 세션에 저장");

				} else { // 비밀번호가 일치하지 않을 때
					result.put("result", "prwfail");

					log.debug("비밀번호 틀림");
				}

			} else if (member.get("MEM_STATUS").equals("Y")) { // 정지된 회원이면
				result.put("result", "suspend");
			}

		}
		// result 출력
		log.debug(result);

		// mv.addObject("result", result);

		// return mv;
		return result;
	}

	@GetMapping(value = "/brandLoginForm")
	public ModelAndView brandLoginForm(@RequestParam Map<String, Object> map) throws Exception {
		log.debug("###### 브랜드 회원 로그인 폼 ######");
		ModelAndView mv = new ModelAndView("brandLoginForm");
		return mv;
	}

	@GetMapping(value = "/brandLogin")
	public ModelAndView brandLogin(@RequestParam Map<String, Object> map) throws Exception {
		log.debug("###### 브랜드 회원 로그인 ######");
		ModelAndView mv = new ModelAndView("brandLogin");
		return mv;
	}

	@GetMapping(value = "/shopLoginForm")
	public ModelAndView shopLoginForm(@RequestParam Map<String, Object> map) throws Exception {
		log.debug("###### 매장 회원 로그인 폼 ######");
		ModelAndView mv = new ModelAndView("shopLoginForm");
		return mv;
	}

	@GetMapping(value = "/shopLogin")
	public ModelAndView shopLogin(@RequestParam Map<String, Object> map) throws Exception {
		log.debug("###### 매장 회원 로그인 ######");
		ModelAndView mv = new ModelAndView("shopLogin");
		return mv;
	}

	@GetMapping(value = "/logout")
	public ModelAndView logout(@RequestParam Map<String, Object> map) throws Exception {
		log.debug("###### 로그아웃 ######");
		ModelAndView mv = new ModelAndView("logout");
		return mv;
	}

	@GetMapping(value = "/findId")
	public ModelAndView findId(@RequestParam Map<String, Object> map) throws Exception {
		log.debug("###### 아이디 찾기 ######");
		ModelAndView mv = new ModelAndView("findId");
		return mv;
	}

	@GetMapping(value = "/findPw")
	public ModelAndView findPw(@RequestParam Map<String, Object> map) throws Exception {
		log.debug("###### 비밀번호 찾기 ######");
		ModelAndView mv = new ModelAndView("findPw");
		return mv;
	}
}
