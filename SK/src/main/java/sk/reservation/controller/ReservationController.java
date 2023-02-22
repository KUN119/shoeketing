package sk.reservation.controller;

import java.util.Map;

<<<<<<< HEAD
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
=======
>>>>>>> parent of b4f038a (2023-02-21 성택 - 로그 설정 중(쿼리 제외 정상 작동))
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ReservationController {

<<<<<<< HEAD
	Log log = LogFactory.getLog(this.getClass());

	// reservationList
	@GetMapping(value = "/reservationList")
=======
	//reservationList
	@GetMapping(value="/reservationList")
>>>>>>> parent of b4f038a (2023-02-21 성택 - 로그 설정 중(쿼리 제외 정상 작동))
	public ModelAndView reservationList(@RequestParam Map<String, Object> map) throws Exception {
		ModelAndView mv = new ModelAndView("reservationList");
	 
	 return mv;
	}
	
	//reservationDetail
	@GetMapping(value="/reservationDetail")
	public ModelAndView reservationDetail(@RequestParam Map<String, Object> map) throws Exception {
		ModelAndView mv = new ModelAndView("reservationDetail");
	 
	 return mv;
	}
}
