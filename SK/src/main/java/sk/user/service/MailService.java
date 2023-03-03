package sk.user.service;

public interface MailService {

	public void makeRandomNumber();

	public String joinEmail(String email);

	public void mailSend(String setFrom, String toMail, String title, String content);

}
