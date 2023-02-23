package sk.myPage.dao;

import java.util.Map;

import org.springframework.stereotype.Repository;

import sk.common.dao.AbstractDAO;

@Repository("memberPageDAO")
public class MemberPageDAO extends AbstractDAO {
	
	//회원정보 수정 처리
	public void updateAccountModify(Map<String, Object> map) throws Exception {
		update("myPage.updateAccountModify", map);
	}
	
	//비밀번호 확인 (탈퇴 전)
	public int selectPwCheck(Map<String, Object> map) throws Exception {
		return (int)selectOne("myPage.selectPw", map);
	}
	
	//회원 탈퇴 처리
	public void deleteAccount(Map<String, Object> map) throws Exception {
		update("myPage.deleteAccount", map);
	}
	

	
	
}
