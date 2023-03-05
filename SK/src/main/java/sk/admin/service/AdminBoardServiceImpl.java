package sk.admin.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import sk.admin.dao.AdminBoardDAO;

@Service("adminBoardService")
public class AdminBoardServiceImpl implements AdminBoardService {

	@Resource(name = "adminBoardDAO")
	private AdminBoardDAO adminBoardDAO;
}
