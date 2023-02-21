package sk.main.dao;

import java.util.Map;

import org.springframework.stereotype.Repository;

import sk.common.dao.AbstractDAO;

@Repository("mainDAO")
public class MainDAO extends AbstractDAO {

	@SuppressWarnings("unchecked")
	public Map<String, Object> testMapper(Map<String, Object> map) throws Exception {
		return (Map<String, Object>) selectOne("login.selectId", map);
	}
}
