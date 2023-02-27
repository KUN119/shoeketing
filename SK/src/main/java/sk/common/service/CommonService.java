package sk.common.service;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

@Service(value = "sessionService")
public class CommonService {
	
		//세션의 회원정보 쉽게 가져오는 메소드
		//이메일, 비밀번호는 이미 따로 영역에 있어서 포함 X
	
		//회원정보 하나씩만 가져오는 메소드
		public String getSession(HttpSession session, String key) throws Exception {
			
			Map<String, Object> sessionMap = (Map<String, Object>) session.getAttribute("session_MEM_INFO");
			String info = "";
			Map<String, Object> map = new HashMap<>();
		
				if(key.equals("MEM_NAME")) {
					info = (String) session.getAttribute("S_MEM_NAME");
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
//						infoMap.put("MEM_NAME", sessionMap.get("S_MEM_NAME"));
//						info = (String) session.getAttribute("S_MEM_NAME");
					
					} else if(key.equals("MEM_NUM")) {
						infoMap.put("MEM_NUM", session.getAttribute("S_MEM_NUM").toString());
//						info = session.getAttribute("S_MEM_NUM").toString();
//						info = sessionMap.get("MEM_NUM").toString();
					
					} else if(key.equals("MEM_PHONE")) {
						infoMap.put("MEM_PHONE", session.getAttribute("S_MEM_PHONE"));
//						infoMap.put("MEM_PHONE", sessionMap.get("S_MEM_PHONE"));
//						info = (String) session.getAttribute("S_MEM_PHONE");
						
					} else if(key.equals("MEM_INFORM_AGREE")) {
						infoMap.put("MEM_INFORM_AGREE", session.getAttribute("S_MEM_INFORM_AGREE"));
//						infoMap.put("MEM_INFORM_AGREE", sessionMap.get("S_MEM_INFORM_AGREE"));
//						info = (String) session.getAttribute("S_MEM_INFORM_AGREE");
						
					} else if(key.equals("MEM_DEL_GB")) {
						infoMap.put("MEM_DEL_GB", session.getAttribute("S_MEM_DEL_GB"));
//						infoMap.put("MEM_DEL_GB", sessionMap.get("S_MEM_DEL_GB"));
//						info = session.getAttribute("S_MEM_NUM").toString();
						
					} else if(key.equals("MEM_ADMIN")) {
						infoMap.put("MEM_ADMIN", session.getAttribute("S_MEM_ADMIN"));
//						infoMap.put("MEM_ADMIN", sessionMap.get("S_MEM_ADMIN"));
//						info = session.getAttribute("S_MEM_NUM").toString();
						
					} else if(key.equals("MEM_GRADE")) {
						infoMap.put("MEM_GRADE", session.getAttribute("S_MEM_GRADE"));
//						infoMap.put("MEM_GRADE", sessionMap.get("S_MEM_GRADE"));
//						info = session.getAttribute("S_MEM_NUM").toString();
						
					} else if(key.equals("MEM_PICKUP_COUNT")) {
						infoMap.put("MEM_PICKUP_COUNT", session.getAttribute("S_MEM_NUM"));
//						infoMap.put("MEM_PICKUP_COUNT", sessionMap.get("S_MEM_NUM"));
//						info = session.getAttribute("S_MEM_NUM").toString();
					} 	
			}
			return infoMap;
		}
			

}
