package sk.user.service;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import net.nurigo.sdk.NurigoApp;
import net.nurigo.sdk.message.exception.NurigoMessageNotReceivedException;
import net.nurigo.sdk.message.model.Message;
import net.nurigo.sdk.message.service.DefaultMessageService;
import sk.user.dao.LoginDAO;

@Service("loginService")
public class LoginServiceImpl implements LoginService {

	@Resource(name = "loginDAO")
	private LoginDAO loginDAO;

	@Override
	public Map<String, Object> selectId(Map<String, Object> map) throws Exception {
		return loginDAO.selectId(map);
	}

	@Override
	public String findIdWithPhone(String userPhoneNumber, int randomNumber, String MEM_NAME) throws Exception {
		DefaultMessageService messageService = NurigoApp.INSTANCE.initialize("NCSGUOCRV7I7PBGM",
				"YZLW9DSUIZA6MCCSJ5Q5PUUH06Y3L2MS", "https://api.solapi.com");
		Message message = new Message();

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("MEM_NAME", MEM_NAME);
		map.put("MEM_PHONE", userPhoneNumber);

		String MEM_EMAIL = loginDAO.findIdWithPhone(map);
		if (MEM_EMAIL != null) {
			// 4 params(to, from, type, text) are mandatory. must be filled
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

			return MEM_EMAIL;

		} else {
			return "error";
		}

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
