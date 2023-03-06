package sk.item.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import sk.common.service.CommonService;
import sk.item.service.ReservationService;

@RestController
public class ReservationController {

	Log log = LogFactory.getLog(this.getClass());

	@Resource(name = "reservationService")
	private ReservationService reservationService;
	
	@Resource(name="sessionService")
	private CommonService commonService;
	
	@GetMapping(value = "/myPage/reservationList")
	public ModelAndView reservationList(Map<String, Object> map, HttpSession session) throws Exception {
		log.debug("###### 내가 픽업 예약한 리스트 ######");
		ModelAndView mv = new ModelAndView("reservationList");
		
		List<Map<String, Object>> pickupList = reservationService.selectPickupList(map, session);
		int pickupCount = reservationService.selectPickupCount(map, session);
		
		mv.addObject("pickupList", pickupList);
		mv.addObject("pickupCount", pickupCount);
		
		return mv;
	}

	@GetMapping(value = "/myPage/reservationDetail")
	public ModelAndView reservationDetail(@RequestParam Map<String, Object> map) throws Exception {
		log.debug("###### 픽업 예약 상세보기 ######");
		ModelAndView mv = new ModelAndView("reservationDetail");
		System.out.println("map확인: " + map);
		Map<String, Object> pickupDetailMap = reservationService.selectPickupDetail(map);
		
		mv.addObject("pickupDetailMap", pickupDetailMap);
		
		return mv;
	}
	
	@PostMapping(value = "/myPage/reservationDelete")
	public Map<String, Object> reservationDelete(@RequestParam Map<String, Object> map) throws Exception {
		log.debug("###### 픽업 예약 취소 ######");
		System.out.println("map 확인 : " + map);
		
		Map<String, Object> result = new HashMap<>();
		
		// 픽업 상태가 "예약 대기중"일 경우
		if(map.get("RESERVATION_STATUS").toString().equals("예약 대기중")){
			result = reservationService.deleteReservation(map);
		}
		
		// 픽업 상태가 "픽업 대기중"일 경우
		if(map.get("RESERVATION_STATUS").toString().equals("픽업 대기중")){
			result = reservationService.deletePickup(map);
		}
		
		Map<String, Object> detailMap = reservationService.selectPickupDetail(map);
		result.put("RESERVATION_STATUS", detailMap.get("RESERVATION_STATUS"));
		
		return result;
	}

	@GetMapping(value = "/shopPage/reservationList")
	public ModelAndView shopReservationList(Map<String, Object> map, HttpSession session) throws Exception {
		log.debug("###### 매장 픽업 예약 요청 리스트 ######");
		ModelAndView mv = new ModelAndView("reservationList"); // 추후 수정

		List<Map<String, Object>> reservaionList = reservationService.selectReservationRequestList(map, session);
		int reservationCount = reservationService.selectReservationCount(map, session);
		System.out.println("reservationList 확인 : " + reservaionList);
		System.out.println("reservationCount 확인 : " + reservationCount);
		
		mv.addObject("reservationList", reservaionList);
	
		return mv;
	}

	// Ajax로 구현예정
	@GetMapping(value = "/shopPage/reservationApprove")
	public ModelAndView shopReservationApprove(Map<String, Object> map) throws Exception {
		log.debug("###### 매장 픽업 예약 승인 ######");
		ModelAndView mv = new ModelAndView("testMain"); // 추후 수정

		Map<String, Object> resultMap = reservationService.updateReservationApprove(map);

		System.out.println("resultMap 확인 : " + resultMap);
		
		return mv;
	}

	// Ajax로 추후 수정 예정
	@GetMapping(value = "/shopPage/reservationCancel")
	public ModelAndView shopReservationCancel(Map<String, Object> map) throws Exception {
		log.debug("###### 매장 픽업 취소 ######");
		ModelAndView mv = new ModelAndView("testMain"); // 추후 수정
		
		Map<String, Object> result = new HashMap<>();
		
		// 임시 (ajax로 구현시 삭제)
		map.put("RESERVATION_NUM", 9);
		map.put("RESERVATION_STATUS", "픽업 대기중");
		
		// 픽업 상태가 "예약 대기중"일 경우 (재고변동 X)
		if(map.get("RESERVATION_STATUS").toString().equals("예약 대기중")){
			result = reservationService.deleteReservation(map);
		}
		
		// 픽업 상태가 "픽업 대기중"일 경우 (재고 +1)
		if(map.get("RESERVATION_STATUS").toString().equals("픽업 대기중")){
			result = reservationService.deletePickup(map);
		}
		
		Map<String, Object> detailMap = reservationService.selectPickupDetail(map);
		result.put("RESERVATION_STATUS", detailMap.get("RESERVATION_STATUS"));
		
		return mv;

	}

//	@GetMapping(value = "/reservationForm")
//	public ModelAndView reservationForm(Map<String, Object> map) throws Exception {
//		log.debug("###### 상품 픽업 예약 폼 ######");
//		ModelAndView mv = new ModelAndView("testMain"); // 추후 수정
//
//		return mv;
//	}
//
//	@GetMapping(value = "/makeReservation")
//	public ModelAndView makeReservation(Map<String, Object> map) throws Exception {
//		log.debug("###### 픽업 예약금 결제 ######");
//		ModelAndView mv = new ModelAndView("testMain"); // 추후 수정
//
//		return mv;
//	}
//
//	@GetMapping(value = "/reservationSuccess")
//	public ModelAndView reservationSuccess(Map<String, Object> map) throws Exception {
//		log.debug("###### 픽업 예약금 결제 성공 ######");
//		ModelAndView mv = new ModelAndView("testMain"); // 추후 수정
//
//		return mv;
//	}

}
