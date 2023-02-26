package sk.myPage.service;

import java.util.Map;

import javax.annotation.Resource;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Service;

import sk.myPage.dao.MemberPageDAO;

@Service("memberPageService")
public class MemberPageServiceImpl implements MemberPageService {
	Log log = LogFactory.getLog(this.getClass());
	
	@Resource(name="memberPageDAO")
	private MemberPageDAO memberPageDAO;

	//회원정보 가져오기
	@Override
	public Map<String, Object> selectAccountInfo(Map<String, Object> map) throws Exception {
		System.out.println("selectAccountInfo 서비스 파라미터 : " + map);
		return (Map<String, Object>) memberPageDAO.selectAccountInfo(map);
	}

	//회원정보 수정
	@Override
	public void accountModify(Map<String, Object> map) throws Exception {
		System.out.println("updateAccountModify 서비스 파라미터 : " + map);
		memberPageDAO.updateAccountModify(map);
		
	}
	
	//비밀번호 확인
	@Override
	public Map<String, Object> pwCheck(Map<String, Object> map) throws Exception {
		System.out.println("selectPwCheck 서비스 파라미터 : " + map);
		return memberPageDAO.selectPwCheck(map);
	}


	//회원탈퇴
	@Override
	public void deleteAccount(Map<String, Object> map) throws Exception {
		System.out.println("deleteAccount 서비스 파라미터 : " + map);
		memberPageDAO.deleteAccount(map);
	}
	
	
}
