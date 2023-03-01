package sk.item.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import sk.common.dao.InformDAO;
import sk.common.service.CommonService;
import sk.item.dao.ReservationDAO;

@Service("reservationService")
public class ReservationServiceImpl implements ReservationService {

	@Resource(name="reservationDAO")
	private ReservationDAO reservationDAO;

	@Resource(name="sessionService")
	private CommonService commonService;
	
	@Resource(name="informDAO")
	private InformDAO informDAO;
	
	//  나의 픽업 예약 리스트 (일반회원)
	@Override
	public List<Map<String, Object>> selectPickupList(Map<String, Object> map, HttpSession session) throws Exception {

		map.put("MEM_NUM", commonService.getSession(session, "MEM_NUM"));
		map.put("START", 1);
		map.put("END", 5);
		
		List<Map<String, Object>> pickupList = reservationDAO.selectPickupList(map);
		
		return pickupList;
	}
	
	// 픽업 예약 리스트 토탈개수 (일반회원)
	@Override
	public int selectPickupCount(Map<String, Object> map, HttpSession session) throws Exception {

		map.put("MEM_NUM", commonService.getSession(session, "MEM_NUM"));
		
		int pickupCount = reservationDAO.selectPickupCount(map);
		
		return pickupCount;
	}

	// 픽업 예약 상세조회
	@Override
	public Map<String, Object> selectPickupDetail(Map<String, Object> map) throws Exception {

		//map.put("RESERVATION_NUM", 1);  // 추후 삭제
		map.put("RESERVATION_NUM", map.get("RESERVATION_NUM"));
		
		Map<String, Object> pickupDetailMap = reservationDAO.selectPickupDetail(map);
		
		return pickupDetailMap;
	}

	// ajax 구현 완료
	// 예약 취소. 일반 회원/매장이 예약 대기중인 상태에서 예약 취소 혹은, 매장이 픽업 승인 거부. 이때는 재고변동 X
	// + 예약 상태 변경에 따른 알림 (알림 유형1) 
	@Override
	public Map<String, Object> deleteReservation(Map<String, Object> map) throws Exception {

		//map.put("RESERVATION_NUM", 1);  // 추후 삭제
		map.put("RESERVATION_NUM", map.get("RESERVATION_NUM"));
		
		//예약 취소하고, 취소된 결과 Map에 담아주기위해 resultMap 선언
		int deleteResult = reservationDAO.deleteReservation(map);
		Map<String, Object> resultMap = new HashMap<>();
		
		// 예약 취소 성공했으면
		if(deleteResult == 1) {
			resultMap.put("result", "pass");
		}else {
			resultMap.put("result", "fail");
		}
		System.out.println("예약 deleteResult 결과 : " + deleteResult);
		System.out.println("예약 resultMap 확인 : " + resultMap);
		
		// 예약번호로 예약 상세조회해서, 상품명 가져오기
		Map<String, Object> pickupDetailMap = reservationDAO.selectPickupDetail(map);
		String pickupGoodsName = (String)pickupDetailMap.get("TOTAL_GOODS_NAME");
		int reservationUserMemNum = Integer.parseInt(pickupDetailMap.get("RESERVATION_USER").toString());
		
		// 예약 상태가 예약 대기중 -> 예약 취소로 변경됐으므로, 회원에게 알림
		String str = "회원님께서 예약하신 " + pickupGoodsName + "의 예약 상태가 '예약 취소'로 변경되었습니다.";
		
		// insertInform시 필요한 파라미터들 넣어주기 (알림내용, 알림받을 회원번호, 알림유형)
		map.put("INFORM_CONTENT", str);
		map.put("MEM_NUM", reservationUserMemNum);
		map.put("INFORM_TYPE", 1);
		
		informDAO.insertInform(map,str);
		
		return resultMap;
	}

	// ajax 구현 완료
	// 픽업 대기중. 일반 회원/매장이 픽업 대기중인 상태에서 픽업 예약 취소. 이때는 재고변동 O
	// + 예약 상태 변경에 따른 알림 (알림 유형1)
	@Override
	public Map<String, Object> deletePickup(Map<String, Object> map) throws Exception {

		map.put("RESERVATION_NUM", map.get("RESERVATION_NUM"));
		
		// 픽업 취소하고, 취소된 결과 map에 담아주기 위해 resultMap 선언
		int deleteResult = reservationDAO.deletePickup(map);
		Map<String, Object> resultMap = new HashMap<>();
		
		// 픽업 취소 성공했으면
		if(deleteResult == 1) {
			resultMap.put("result", "pass");
		}else {
			resultMap.put("result", "fail");
		}
		
		System.out.println("픽업 deleteResult 결과 : " + deleteResult);
		System.out.println("픽업 resultMap 결과 : " + resultMap);
		
		// 예약번호로 예약 상세조회해서, 상품명 가져오기
		Map<String, Object> pickupDetailMap = reservationDAO.selectPickupDetail(map);
		String pickupGoodsName = (String)pickupDetailMap.get("TOTAL_GOODS_NAME");
		int reservationUserMemNum = Integer.parseInt(pickupDetailMap.get("RESERVATION_USER").toString());
		
		// 예약 상태가 픽업 대기중 -> 픽업 취소로 변경됐으므로, 회원에게 알림
		String str = "회원님께서 예약하신 " + pickupGoodsName + "의 예약 상태가 '픽업 취소'로 변경되었습니다.";
		
		// insertInform시 필요한 파라미터들 넣어주기 (알림내용, 알림받을 회원번호, 알림유형)
		map.put("INFORM_CONTENT", str);
		map.put("MEM_NUM", reservationUserMemNum);
		map.put("INFORM_TYPE", 1);
		
		informDAO.insertInform(map,str);
		
		return resultMap;
	}

	// ajax 구현 예정
	// 픽업 취소 후 재고 +1
	@Override
	public Map<String, Object> updateStockIncrease(Map<String, Object> map) throws Exception {

		Map<String, Object> resultMap = new HashMap<>();
		
		return resultMap;
	}

	// 픽업 예약 요청 리스트 (매장)
	@Override
	public List<Map<String, Object>> selectReservationRequestList(Map<String, Object> map) throws Exception {

		return null;
	}

	// 해당 매장의 총 픽업 예약개수 (매장)
	@Override
	public int selectReservationCount(Map<String, Object> map) throws Exception {

		return 0;
	}

	// ajax 구현 예정
	// 픽업 예약 승인 (매장)
	// + 예약 상태 변경에 따른 알림 (알림 유형1)
	@Override
	public Map<String, Object> updateReservationApprove(Map<String, Object> map) throws Exception {
		
		//updateStockDecrease(map); 
		Map<String, Object> resultMap = new HashMap<>();
		
		return resultMap;
	}

	// 픽업 예약 승인시, 재고 -1 (매장)
	@Override
	public Map<String, Object> updateStockDecrease(Map<String, Object> map) throws Exception {

		Map<String, Object> resultMap = new HashMap<>();
		
		return resultMap;
	}

	// ajax 구현 예정
	// 예약금 결제 성공_토스 페이먼츠 api 구현 예정 
	@Override
	public Map<String, Object> insertReservation(Map<String, Object> map) throws Exception {

		Map<String, Object> resultMap = new HashMap<>();
		
		return resultMap;
	}
	
	
	
}
