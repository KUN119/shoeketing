package sk.item.controller;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.maven.shared.invoker.SystemOutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

import sk.item.service.ReservationService;

@Controller
public class TossPaymentsController {

	Log log = LogFactory.getLog(this.getClass());

	@Resource(name = "reservationService")
	private ReservationService reservationService;
	
	@GetMapping(value = "/reservationForm")
	public ModelAndView reservationForm(Map<String, Object> map) throws Exception {
		log.debug("###### 상품 픽업 예약 폼 ######");
		ModelAndView mv = new ModelAndView("tossTest"); // 추후 수정

		map.put("RESERVATION_NUM", 9);
		Map<String, Object> detailMap = reservationService.selectPickupDetail(map);
		System.out.println("detailMap 확인 : " + detailMap);
		
		mv.addObject("detailMap", detailMap);
		
		
		
		return mv;
	}

	@GetMapping(value = "/makeReservation")
	public ModelAndView makeReservation(Map<String, Object> map) throws Exception {
		log.debug("###### 픽업 예약금 결제 ######");
		ModelAndView mv = new ModelAndView("tossTest"); // 추후 수정

		return mv;
	}

	@GetMapping(value = "/reservationSuccess")
	public ModelAndView reservationSuccess(Map<String, Object> map, @RequestParam String paymentKey, String orderId) throws Exception {
		log.debug("###### 픽업 예약금 결제 성공 ######");
		ModelAndView mv = new ModelAndView("reservationList"); // 추후 수정

		System.out.println("paymentKey : " + paymentKey);
		System.out.println("orderId : " + orderId);
		mv.addObject("paymentKey", paymentKey);
		mv.addObject("orderId", orderId);
		
		return mv;
	}
	
	@GetMapping(value = "/reservationFail")
	public ModelAndView reservationFail(Map<String, Object> map) throws Exception {
		log.debug("###### 픽업 예약금 결제 실패 ######");
		ModelAndView mv = new ModelAndView("tossTest"); // 추후 수정

		return mv;
	}
	
	@ResponseBody
	@PostMapping(value = "/reservationCancel")
	public Map<String, Object> reservationCancel(@RequestParam Map<String, Object> map) throws Exception {
		log.debug("###### 픽업 예약금 결제 취소 ######");
		//ModelAndView mv = new ModelAndView("tossTest"); // 추후 수정
		log.debug("map 확인 : " + map);
		
		// Request
		String paymentKey = map.get("paymentKey").toString();
		String cancelReason = "고객이 취소를 원함";
		
		
		log.debug("paymentKey 확인 :" + paymentKey);
		
		// 결제 취소시 연결할 웹페이지 url
		String apiURL = "https://api.tosspayments.com/v1/payments/" + paymentKey + "/cancel";
		System.out.println(apiURL);
		
		try {
			URL url = new URL(apiURL);
			HttpURLConnection con = (HttpURLConnection) url.openConnection(); // url 연결

			con.setRequestMethod("POST");
			con.setDoOutput(true); // OutputStream으로 POST 데이터 넘겨주기 위해 true로 지정
			con.setRequestProperty("Authorization", "Basic dGVzdF9za19PeUwwcVo0RzFWT0xvYkI2S3d2cm9XYjJNUVlnOg=="); 
			con.setRequestProperty("Content-Type", "application/json");

			StringBuilder sb = new StringBuilder();

			// append() 사용해 문자열 더하기 (보내줄 파라미터들 한줄로 묶기)
			sb.append("{\"cancelReason\":" + "\"" + cancelReason + "\"}");

			OutputStream os = con.getOutputStream();
			OutputStreamWriter writer = new OutputStreamWriter(os);

			writer.write(sb.toString()); // sb 객체 String으로 변경해서, 파라미터 보내기
			writer.flush();
			writer.close();

			System.out.println("sb.toString() : " + sb.toString());
			os.close();
			con.connect();

			// 버퍼 이용해서 읽기위해 객체선언 (readLine():입력 값으로 들어온 데이터를 한 줄로 읽어 String으로 바꿔줌)
			BufferedReader br;
			int responseCode = con.getResponseCode(); // 응답코드 받아서 responseCode에 저장
			System.out.println("responseCode=" + responseCode);

			if (responseCode == 200) { // 정상 호출일 경우 (응답코드 200)
				br = new BufferedReader(new InputStreamReader(con.getInputStream()));
			} else { // 에러 발생 (응답코드 200 아님)
				br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
			}

			String inputLine;
			StringBuffer res = new StringBuffer();

			// 입력 값으로 들어온 데이터를 String으로 변경해 inputLine에 저장해주고, 이 값이 null이 아니면
			while ((inputLine = br.readLine()) != null) {
				res.append(inputLine); // StringBuffer객체에 더해주기
			}
			
			System.out.println("res : " + res);
			
			br.close();

			if (responseCode == 200) { // 정상 호출일 경우 (응답코드 200)
				Map<String, Object> resultMap = new HashMap<>();
				
				// 픽업 상태가 "예약 대기중"일 경우
				if(map.get("RESERVATION_STATUS").toString().equals("예약 대기중")){
					resultMap = reservationService.deleteReservation(map);
				}
				
				// 픽업 상태가 "픽업 대기중"일 경우
				if(map.get("RESERVATION_STATUS").toString().equals("픽업 대기중")){
					resultMap = reservationService.deletePickup(map);
				}
				
				Map<String, Object> detailMap = reservationService.selectPickupDetail(map);
				resultMap.put("RESERVATION_STATUS", detailMap.get("RESERVATION_STATUS"));

				return resultMap;

			}
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return null;
	}
}
