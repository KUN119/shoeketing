package sk.user.service;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import net.nurigo.sdk.NurigoApp;
import net.nurigo.sdk.message.exception.NurigoMessageNotReceivedException;
import net.nurigo.sdk.message.model.Message;
import net.nurigo.sdk.message.service.DefaultMessageService;
import sk.common.util.FileUtils;
import sk.user.dao.JoinDAO;

@Service("joinService")
public class JoinServiceImpl implements JoinService {

	@Resource(name = "fileUtils")
	private FileUtils filesUtils;

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
	public void insertBrand(Map<String, Object> map, MultipartHttpServletRequest request) throws Exception {

		String BRAND_LOGO_FILE = filesUtils.parseBrandLogoFile(map, request);
		map.put("BRAND_LOGO_FILE", BRAND_LOGO_FILE);

		String BRAND_BUSINESS_NUM = map.get("BRAND_BUSINESS_NUM").toString();
		StringBuffer sb = new StringBuffer();
		sb.append(BRAND_BUSINESS_NUM.substring(0, 3));
		sb.append("-");
		sb.append(BRAND_BUSINESS_NUM.substring(3, 5));
		sb.append("-");
		sb.append(BRAND_BUSINESS_NUM.substring(5));
		map.put("BRAND_BUSINESS_NUM", sb.toString());

		sb = new StringBuffer();
		sb.append(map.get("BRAND_ADD"));
		sb.append(" ");
		sb.append(map.get("BRAND_ADD2"));
		map.put("BRAND_ADD", sb.toString());

		joinDAO.insertBrand(map);

	}

	// 매장 위치정보 확인
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
	public void certifiedPhoneNumber(String userPhoneNumber, int randomNumber) throws Exception {
		DefaultMessageService messageService = NurigoApp.INSTANCE.initialize("NCSGUOCRV7I7PBGM",
				"YZLW9DSUIZA6MCCSJ5Q5PUUH06Y3L2MS", "https://api.solapi.com");
		Message message = new Message();

		message.setFrom("01075837725");
		message.setTo(userPhoneNumber);
		message.setText("[TEST] 인증번호는" + "[" + randomNumber + "]" + "입니다.");

		try {
			// send 메소드로 ArrayList<Message> 객체를 넣어도 동작합니다!
			messageService.send(message);
		} catch (NurigoMessageNotReceivedException exception) {
			// 발송에 실패한 메시지 목록을 확인할 수 있습니다!
			System.out.println(exception.getFailedMessageList());
			System.out.println(exception.getMessage());
		} catch (Exception exception) {
			System.out.println(exception.getMessage());
		}
	}

}
