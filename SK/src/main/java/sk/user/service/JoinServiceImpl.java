package sk.user.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Service;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;
import sk.user.dao.JoinDAO;

@Service("joinService")
public class JoinServiceImpl implements JoinService {
	
	@Resource(name = "joinDAO")
	private JoinDAO joinDAO;

	
	// 이메일 중복체크
	@Override
	public Map<String, Object> selectEmailCheck(Map<String, Object> map) throws Exception {

		return joinDAO.selectEmailCheck(map);
	}
	
	

	// 회원탈퇴 후 7일 지났는지 여부 확인
	@Override
	public int selectDelCount(Map<String, Object> map) throws Exception {

		return joinDAO.selectDelCount(map);
	}

	@Override
	public int selectDelGB(Map<String, Object> map) throws Exception {

		return joinDAO.selectDelGB(map);
	}
	
	// 회원가입 성공
	@Override
	public void insertMember(Map<String, Object> map) throws Exception {
		
		joinDAO.insertMember(map);
	}

	@Override
	public Map<String, Object> selectbNumAuth(Map<String, Object> map) throws Exception {
		
		return joinDAO.selectbNumAuth(map);
	}
	
	// 브래드 회원가입 성공
	@Override
	public void insertBrand(Map<String, Object> map) throws Exception {
		
		joinDAO.insertBrand(map);
	}

	//매장 위치정보 확인
	@Override
	public Map<String, Object> selectshopLocationInfo(Map<String, Object> map) throws Exception {
		
		return joinDAO.selectshopLocationInfo(map);
	}
	
	// 매장 회원가입 성공
	@Override
	public void insertShop(Map<String, Object> map) throws Exception {
		
		joinDAO.insertShop(map);
	}


	// 핸드폰 인증
	@Override
	public void certifiedPhoneNumber(String userPhoneNumber, int randomNumber) throws Exception{
		String api_key = "NCSIKOFKNRPPVHGV";
	    String api_secret = "ZGAHL7RMAJJUKXDNKCOFRV286GPH3LU3";
	    Message coolsms = new Message(api_key, api_secret);

	    // 4 params(to, from, type, text) are mandatory. must be filled
	    HashMap<String, String> params = new HashMap<String, String>();
	    params.put("to", userPhoneNumber);    // 수신전화번호
	    params.put("from", "01044226533");    // 발신전화번호. 테스트시에는 발신,수신 둘다 본인 번호로 하면 됨
	    params.put("type", "SMS");
	    params.put("text", "[TEST] 인증번호는" + "["+randomNumber+"]" + "입니다."); // 문자 내용 입력
	    params.put("app_version", "test app 1.2"); // application name and version

	    try {
	        JSONObject obj = (JSONObject) coolsms.send(params);
	        System.out.println(obj.toString());
	      } catch (CoolsmsException e) {
	        System.out.println(e.getMessage());
	        System.out.println(e.getCode());
	      }
	}

}
