package sk.common.service;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

@Service(value = "sessionService")
public class CommonService {
	
		//session_MEM_INFO의 회원정보 가져오는 메소드
		//이메일, 비밀번호는 이미 별도로 세션영역에 저장해서 포함 안 했음
	
		//회원정보 하나만 가져오는 메소드
		public String getSession(HttpSession session, String key) throws Exception {
			
			Map<String, Object> sessionMap = (Map<String, Object>) session.getAttribute("session_MEM_INFO");
			String info = "";
			Map<String, Object> map = new HashMap<>();
		
				if(key.equals("MEM_NAME")) {
					info = (String) session.getAttribute("S_MEM_NAME");
					//윗줄은 제가 테스트하느라고 임시로 세션에 올려놓은 이름이라
					//로그인 구현되고나서 실제로 사용하실 땐 아래줄 코드 사용해주세요
//					info = (String) sessionMap.get("MEM_NAME"); 
					
				} else if(key.equals("MEM_PHONE")) {
					info = (String) session.getAttribute("S_MEM_PHONE");
//					info = (String) sessionMap.get("MEM_PHONE");
					
				} else if(key.equals("MEM_INFORM_AGREE")) {
					info = (String) session.getAttribute("S_MEM_INFORM_AGREE");
//					info = (String) sessionMap.get("MEM_INFORM_AGREE");
					
				} else if(key.equals("MEM_NUM")) {
					info = session.getAttribute("S_MEM_NUM").toString();
//					info = sessionMap.get("MEM_NUM").toString();
					
				} else if(key.equals("MEM_PICKUP_COUNT")) {
					info = session.getAttribute("S_MEM_PICKUP_COUNT").toString();
//					info = sessionMap.get("MEM_PICKUP_COUNT").toString();
				} 	
				return info;
			}
		
		//여러개의 회원정보를 가져올 때 사용
		public Map<String, Object> getSessions(HttpSession session, String[] keys) throws Exception {
//			String info = "";
			Map<String, Object> infoMap = new HashMap<>();
			Map<String, Object> sessionMap = (Map<String, Object>) session.getAttribute("session_MEM_INFO");
			
			for(String key : keys) {
				
					if(key.equals("MEM_NAME")) {
						infoMap.put("MEM_NAME", session.getAttribute("S_MEM_NAME"));
						//윗줄은 제가 테스트하느라고 임시로 세션에 올려놓은 이름이라
						//로그인 구현되고나서 사용하실 땐 아래줄 코드 주석 풀어서 사용해주세요
//						infoMap.put("MEM_NAME", sessionMap.get("MEM_NAME"));
					
					} else if(key.equals("MEM_NUM")) {
						infoMap.put("MEM_NUM", session.getAttribute("S_MEM_NUM").toString());
//						info = sessionMap.get("MEM_NUM").toString();
					
					} else if(key.equals("MEM_PHONE")) {
						infoMap.put("MEM_PHONE", session.getAttribute("S_MEM_PHONE"));
//						infoMap.put("MEM_PHONE", sessionMap.get("MEM_PHONE"));
						
					} else if(key.equals("MEM_INFORM_AGREE")) {
						infoMap.put("MEM_INFORM_AGREE", session.getAttribute("S_MEM_INFORM_AGREE"));
//						infoMap.put("MEM_INFORM_AGREE", sessionMap.get("MEM_INFORM_AGREE"));
						
					} else if(key.equals("MEM_DEL_GB")) {
						infoMap.put("MEM_DEL_GB", session.getAttribute("S_MEM_DEL_GB"));
//						infoMap.put("MEM_DEL_GB", sessionMap.get("MEM_DEL_GB"));
						
					} else if(key.equals("MEM_ADMIN")) {
						infoMap.put("MEM_ADMIN", session.getAttribute("S_MEM_ADMIN"));
//						infoMap.put("MEM_ADMIN", sessionMap.get("MEM_ADMIN"));
						
					} else if(key.equals("MEM_GRADE")) {
						infoMap.put("MEM_GRADE", session.getAttribute("S_MEM_GRADE"));
//						infoMap.put("MEM_GRADE", sessionMap.get("S_MEM_GRADE"));
						
					} else if(key.equals("MEM_PICKUP_COUNT")) {
						infoMap.put("MEM_PICKUP_COUNT", session.getAttribute("S_MEM_PICKUP_COUNT").toString());
//						infoMap.put("MEM_PICKUP_COUNT", sessionMap.get("S_MEM_PICKUP_COUNT").toString());
					} 	
			}
			return infoMap;
		}
}
