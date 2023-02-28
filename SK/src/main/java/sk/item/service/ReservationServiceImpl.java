package sk.item.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import sk.item.dao.ReservationDAO;

@Service("reservationService")
public class ReservationServiceImpl implements ReservationService {

	@Resource(name="reservationDAO")
	private ReservationDAO reservationDAO;

	//  나의 픽업 예약 리스트 (일반회원)
	@Override
	public List<Map<String, Object>> selectPickupList(Map<String, Object> map) throws Exception {

		return null;
	}
	
	// 픽업 예약 리스트 토탈개수 (일반회원)
	@Override
	public int selectPickupCount(Map<String, Object> map) throws Exception {

		return 0;
	}

	// 픽업 예약 상세조회
	@Override
	public Map<String, Object> selectPickupDetail(Map<String, Object> map) throws Exception {

		return null;
	}

	// ajax 구현 예정
	// 예약 취소. 일반 회원/매장이 예약 대기중인 상태에서 예약 취소 혹은, 매장이 픽업 승인 거부. 이때는 재고변동 X
	// + 예약 상태 변경에 따른 알림 (알림 유형1) 
	@Override
	public int deleteReservation(Map<String, Object> map) throws Exception {

		return 0;
	}

	// ajax 구현 예정
	// 픽업 대기중. 일반 회원/매장이 픽업 대기중인 상태에서 픽업 예약 취소. 이때는 재고변동 O
	// + 예약 상태 변경에 따른 알림 (알림 유형1)
	@Override
	public int deletePickup(Map<String, Object> map) throws Exception {

		return 0;
	}

	// 픽업 취소 후 재고 +1
	@Override
	public int updateStockIncrease(Map<String, Object> map) throws Exception {

		return 0;
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
	public int updateReservationApprove(Map<String, Object> map) throws Exception {
		
		//updateStockDecrease(map); 
		return 0;
	}

	// 픽업 예약 승인시, 재고 -1 (매장)
	@Override
	public int updateStockDecrease(Map<String, Object> map) throws Exception {

		return 0;
	}

	// 예약금 결제 성공_토스 페이먼츠 api 구현 예정 
	@Override
	public int insertReservation(Map<String, Object> map) throws Exception {

		return 0;
	}
	
	
	
}
