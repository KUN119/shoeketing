package sk.main.service;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import sk.main.dao.MainDAO;

@Service("mainService")
public class MainServiceImpl implements MainService {

	@Resource(name = "mainDAO")
	private MainDAO mainDAO;

	@Override
	public Map<String, Object> testMapper(Map<String, Object> map) throws Exception {
		map.put("MEM_EMAIL", "user1@naver.com");
		return mainDAO.testMapper(map);
	}

}
