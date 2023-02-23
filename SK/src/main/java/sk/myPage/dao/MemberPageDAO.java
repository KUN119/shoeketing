package sk.myPage.dao;

import java.util.Map;

import org.springframework.stereotype.Repository;

import sk.common.dao.AbstractDAO;

@Repository("memberPageDAO")
public class MemberPageDAO extends AbstractDAO {
	
	//회원정보 가져오기
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectAccountInfo(Map<String, Object> map) throws Exception {
		return (Map<String, Object>) selectOne("memberPage.selectAccountInfo", map);
	}
	
	//회원정보 수정 처리
	public void updateAccountModify(Map<String, Object> map) throws Exception {
		update("memberPage.updateAccountModify", map);
	}
	
	//비밀번호 확인 (탈퇴 전)
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectPwCheck(Map<String, Object> map) throws Exception {
		return (Map<String, Object>) selectOne("memberPage.selectPw", map);
	}
	
	//회원 탈퇴 처리
	public void deleteAccount(Map<String, Object> map) throws Exception {
		update("memberPage.deleteAccount", map);
	}
	

	
	
}
