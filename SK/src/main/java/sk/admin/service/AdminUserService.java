package sk.admin.service;

import java.util.List;
import java.util.Map;

public interface AdminUserService {

	List<Map<String, Object>> adminMemberList(Map<String, Object> map) throws Exception;
	
	 Map<String, Object> adminMemberDetail(Map<String, Object> map) throws Exception;
	 
	 List<Map<String, Object>> adminShopList(Map<String, Object> map) throws Exception;

	 Map<String, Object> adminShopDetail(Map<String, Object> map) throws Exception;
	 
	 List<Map<String, Object>> adminBrandList(Map<String, Object> map) throws Exception;
	 
	 Map<String, Object> adminBrandDetail(Map<String, Object> map) throws Exception;
}












