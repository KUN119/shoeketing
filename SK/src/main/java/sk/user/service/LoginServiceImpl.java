package sk.user.service;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import sk.user.dao.LoginDAO;

@Service("loginService")
public class LoginServiceImpl implements LoginService{
	
	@Resource(name = "loginDAO")
	private LoginDAO loginDAO;
	
	@Override
	public Map<String, Object> selectId(Map<String, Object> map) throws Exception {
		return loginDAO.selectId(map);
	}

	@Override
	public Map<String, Object> findIdWithPhone(Map<String, Object> map) throws Exception {

		return loginDAO.findIdWithPhone(map);
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
