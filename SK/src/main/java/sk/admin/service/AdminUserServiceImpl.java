package sk.admin.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import sk.admin.dao.AdminUserDAO;

@Service("adminUserService")
public class AdminUserServiceImpl implements AdminUserService {

	@Resource(name = "adminUserDAO")
	private AdminUserDAO adminUserDAO;
	
	@Override
	public List<Map<String, Object>> adminMemberList(Map<String, Object> map) throws Exception {

		return adminUserDAO.adminMemberList(map);
	}
	
	@Override
	public Map<String, Object> adminMemberDetail(Map<String, Object> map) throws Exception {

		return adminUserDAO.adminMemberDetail(map);
	}
	
	@Override
	public List<Map<String, Object>> adminShopList(Map<String, Object> map) throws Exception {

		return adminUserDAO.adminShopList(map);
	}
	
	@Override
	public Map<String, Object> adminShopDetail(Map<String, Object> map) throws Exception {

		return adminUserDAO.adminShopDetail(map);
	}
	
	@Override
	public List<Map<String, Object>> adminBrandList(Map<String, Object> map) throws Exception {

		return adminUserDAO.adminBrandList(map);
	}
	
	@Override
	public Map<String, Object> adminBrandDetail(Map<String, Object> map) throws Exception {

		return adminUserDAO.adminBrandDetail(map);
	}
}


















