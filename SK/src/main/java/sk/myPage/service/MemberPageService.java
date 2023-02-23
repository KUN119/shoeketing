package sk.myPage.service;

import java.util.Map;

public interface MemberPageService {

	//회원정보 가져오기
	Map<String, Object> selectAccountInfo(Map<String, Object> map) throws Exception;
	
	//회원정보수정
	void accountModify(Map<String, Object> map) throws Exception;
	
	//비밀번호 확인
	Map<String, Object> pwCheck(Map<String, Object> map) throws Exception;
	
	//회원 탈퇴처리(N->Y)
	void deleteAccount(Map<String, Object> map) throws Exception;
	 
}
