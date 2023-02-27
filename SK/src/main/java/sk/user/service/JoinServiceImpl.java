package sk.user.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

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
	
	// 폰인증
	@Override
	public Map<String, Object> selectPhoneAuth(Map<String, Object> map) throws Exception {
		return joinDAO.selectPhoneAuth(map);
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

}
