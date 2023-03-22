package sk.admin.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import sk.common.dao.AbstractDAO;

@Repository("adminUserDAO")
public class AdminUserDAO extends AbstractDAO {

	public List<Map<String, Object>> adminMemberList(Map<String, Object> map) throws Exception {
		System.out.println("adminMemberList 파라미터" + map);
		
		return (List<Map<String, Object>>) selectList("adminUser.adminMemberList", map);
	}
	
	 public Map<String, Object> adminMemberDetail(Map<String, Object> map) throws Exception {
	    	System.out.println("adminMemberDetail 파라미터 : " + map);

			return (Map<String, Object>) selectOne("adminUser.adminMemberDetail", map);
	}
	 
	 public List<Map<String, Object>> adminShopList(Map<String, Object> map) throws Exception {
			System.out.println("adminShopList 파라미터" + map);
			
			return (List<Map<String, Object>>) selectList("adminUser.adminShopList", map);
	}
	 
	 public Map<String, Object> adminShopDetail(Map<String, Object> map) throws Exception {
	    	System.out.println("adminShopDetail 파라미터 : " + map);

			return (Map<String, Object>) selectOne("adminUser.adminShopDetail", map);
	}
	 
	 public List<Map<String, Object>> adminBrandList(Map<String, Object> map) throws Exception {
			System.out.println("adminBrandList 파라미터" + map);
			
			return (List<Map<String, Object>>) selectList("adminUser.adminBrandList", map);
	}
	 
	 public Map<String, Object> adminBrandDetail(Map<String, Object> map) throws Exception {
	    	System.out.println("adminBrandDetail 파라미터 : " + map);

			return (Map<String, Object>) selectOne("adminUser.adminBrandDetail", map);
	}
}



















