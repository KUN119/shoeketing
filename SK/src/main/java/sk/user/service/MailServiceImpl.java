package sk.user.service;

import java.util.Map;

import javax.annotation.Resource;
import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import sk.user.dao.LoginDAO;

//https://devofroad.tistory.com/43
@Service("mailService")
public class MailServiceImpl implements MailService {

	@Autowired
	private JavaMailSender javaMailSender;
	private int authNumber;
	
	@Resource(name = "loginDAO")
	private LoginDAO loginDAO;

	public void setJavaMailSender(JavaMailSender javaMailSender) {
		this.javaMailSender = javaMailSender;
	}

//	@Override
//	public void makeRandomNumber() {
//		// 난수의 범위 111111 ~ 999999 (6자리 난수)
//		Random r = new Random();
//		int checkNum = r.nextInt(888888) + 111111;
//		System.out.println("인증번호 : " + checkNum);
//		authNumber = checkNum;
//	}

	@Override
	public String joinEmail(Map<String, Object> map) throws Exception {
		System.out.println("map: " + map);
		
		Map<String, Object> pw = loginDAO.findPwWithEmail(map);
		String pww = (String) pw.get("MEM_PW");
		String setFrom = "naesanamsa@gmail.com"; // email-config에 설정한 자신의 이메일 주소를 입력
		String toMail = (String) map.get("MEM_EMAIL");
		String title = "비밀번호 찾기 결과입니다."; // 이메일 제목
		String content = "슈케팅을 방문해주셔서 감사합니다." + // html 형식으로 작성 !
				"<br><br>" + "고객님의 비밀번호는 " + pww + "입니다." + "<br>" + "해당 비밀번호로 로그인해주세요."; // 이메일 내용 삽입
		mailSend(setFrom, toMail, title, content);
		
		return "성공";	
	}

	@Override
	public void mailSend(String setFrom, String toMail, String title, String content) {
		MimeMessage message = javaMailSender.createMimeMessage();
		// true 매개값을 전달하면 multipart 형식의 메세지 전달이 가능.문자 인코딩 설정도 가능하다.
		try {
			MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
			helper.setFrom(setFrom);
			helper.setTo(toMail);
			helper.setSubject(title);
			// true 전달 > html 형식으로 전송 , 작성하지 않으면 단순 텍스트로 전달.
			helper.setText(content, true);
			javaMailSender.send(message);
		} catch (MessagingException e) {
			e.printStackTrace();
		}
	}

}
