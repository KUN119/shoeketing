package sk.admin.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import sk.admin.dao.AdminUserDAO;

@Service("adminUserService")
public class AdminUserServiceImpl implements AdminUserService {

	@Resource(name = "adminUserDAO")
	private AdminUserDAO adminUserDAO;
}
