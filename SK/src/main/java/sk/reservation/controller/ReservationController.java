package sk.reservation.controller;

import java.util.Map;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ReservationController {

	Logger log = LogManager.getLogger(ReservationController.class);

	// reservationList
	@GetMapping(value = "/reservationList")
	public ModelAndView reservationList(@RequestParam Map<String, Object> map) throws Exception {
		ModelAndView mv = new ModelAndView("reservationList");

		return mv;
	}

	// reservationDetail
	@GetMapping(value = "/reservationDetail")
	public ModelAndView reservationDetail(@RequestParam Map<String, Object> map) throws Exception {
		ModelAndView mv = new ModelAndView("reservationDetail");

		return mv;
	}
}
