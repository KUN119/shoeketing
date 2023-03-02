package sk.item.controller;

import java.util.Map;

import javax.annotation.Resource;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import sk.item.service.ReservationService;

@RestController
public class ReservationController {

	Log log = LogFactory.getLog(this.getClass());

	@Resource(name = "reservationService")
	private ReservationService reservationService;

	@GetMapping(value = "/myPage/reservationList")
	public ModelAndView reservationList(Map<String, Object> map) throws Exception {
		log.debug("###### 내가 픽업 예약한 리스트 ######");
		ModelAndView mv = new ModelAndView("reservationList"); // 추후 수정

		return mv;
	}

	@GetMapping(value = "/myPage/reservationDetail")
	public ModelAndView reservationDetail(Map<String, Object> map) throws Exception {
		log.debug("###### 픽업 예약 상세보기 ######");
		ModelAndView mv = new ModelAndView("reservationDetail"); // 추후 수정

		return mv;
	}

	@GetMapping(value = "/myPage/reservationDelete")
	public ModelAndView reservationDelete(Map<String, Object> map) throws Exception {
		log.debug("###### 픽업 예약 취소 ######");
		ModelAndView mv = new ModelAndView("testMain"); // 추후 수정

		return mv;
	}

	@GetMapping(value = "/shopPage/reservationList")
	public ModelAndView shopReservationList(Map<String, Object> map) throws Exception {
		log.debug("###### 매장 픽업 예약 요청 리스트 ######");
		ModelAndView mv = new ModelAndView("testMain"); // 추후 수정

		return mv;
	}

	@GetMapping(value = "/shopPage/reservationApprove")
	public ModelAndView shopReservationApprove(Map<String, Object> map) throws Exception {
		log.debug("###### 매장 픽업 예약 승인 ######");
		ModelAndView mv = new ModelAndView("testMain"); // 추후 수정

		return mv;
	}

	@GetMapping(value = "/shopPage/reservationCancel")
	public ModelAndView shopReservationCancel(Map<String, Object> map) throws Exception {
		log.debug("###### 매장 픽업 취소 ######");
		ModelAndView mv = new ModelAndView("testMain"); // 추후 수정

		return mv;
	}

	@GetMapping(value = "/reservationForm")
	public ModelAndView reservationForm(Map<String, Object> map) throws Exception {
		log.debug("###### 매장 상품 재고 리스트 ######");
		ModelAndView mv = new ModelAndView("testMain"); // 추후 수정

		return mv;
	}

	@GetMapping(value = "/makeReservation")
	public ModelAndView makeReservation(Map<String, Object> map) throws Exception {
		log.debug("###### 픽업 예약금 결제 ######");
		ModelAndView mv = new ModelAndView("testMain"); // 추후 수정

		return mv;
	}

	@GetMapping(value = "/reservationSuccess")
	public ModelAndView reservationSuccess(Map<String, Object> map) throws Exception {
		log.debug("###### 픽업 예약금 결제 성공 ######");
		ModelAndView mv = new ModelAndView("testMain"); // 추후 수정

		return mv;
	}

}
