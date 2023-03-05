package sk.user.service;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Service;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;
import sk.user.dao.LoginDAO;

@Service("loginService")
public class LoginServiceImpl implements LoginService{
	
	@Resource(name = "loginDAO")
	private LoginDAO loginDAO;
	
	@Override
	public Map<String, Object> selectId(Map<String, Object> map) throws Exception {
		return loginDAO.selectId(map);
	}

	/*
	 * @Override public String findIdWithPhone(String phoneNumber, String numStr)
	 * throws Exception {
	 * 
	 * return loginDAO.findIdWithPhone(null); }
	 */
	
	 public String findIdWithPhone(String phoneNumber, String cerNum, String MEM_NAME) throws Exception {

	        String api_key = "NCSOZ2I0JHF1B2S5";
	        String api_secret = "EKMITVG0WHE4P6CMJWHZFB2ANYBW6XLO";
	        Message coolsms = new Message(api_key, api_secret);
	        
	        String MEM_EMAIL = "";
	        String EMAIL = loginDAO.findIdWithPhone("MEM_EMAIL");
	        System.out.println("MEM_EMAIL: " + MEM_EMAIL);
	        if(MEM_EMAIL != null) {
	        	MEM_EMAIL = EMAIL;
	        }
	        
	        if(MEM_EMAIL != null) {
	        // 4 params(to, from, type, text) are mandatory. must be filled
	        HashMap<String, String> params = new HashMap<String, String>();
	        params.put("to", phoneNumber);    // 수신전화번호
	        params.put("from", "01021282629");    // 발신전화번호. 테스트시에는 발신,수신 둘다 본인 번호로 하면 됨
	        params.put("type", "SMS");
	        params.put("text", "핫띵크 휴대폰인증 테스트 메시지 : 인증번호는" + "["+cerNum+"]" + "입니다.");
	        params.put("app_version", "test app 1.2"); // application name and version
	        
		        try {
		            JSONObject obj = (JSONObject) coolsms.send(params);
		            System.out.println(obj.toString());
		        } catch (CoolsmsException e) {
		            System.out.println(e.getMessage());
		            System.out.println(e.getCode());
		        }
	        }
	        return MEM_EMAIL;
	    }

	@Override
	public Map<String, Object> findPwWithEmail(Map<String, Object> map) throws Exception {

		return loginDAO.findPwWithEmail(map);
	}

	@Override
	public Map<String, Object> selectIdBrand(Map<String, Object> map) throws Exception {
		
		return loginDAO.selectIdBrand(map);
	}

	@Override
	public Map<String, Object> selectIdShop(Map<String, Object> map) throws Exception {
		
		return loginDAO.selectIdShop(map);
	}
	

}
