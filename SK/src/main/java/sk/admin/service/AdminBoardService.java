package sk.admin.service;

import java.util.List;
import java.util.Map;

public interface AdminBoardService {

	List<Map<String, Object>> selectNoticeList(Map<String, Object> map) throws Exception;
	
	int selectNoticeCount(Map<String, Object> map) throws Exception;
	
	void insertNotice(Map<String, Object> map) throws Exception;
	
	Map<String, Object> selectNoticeDetail(Map<String, Object> map) throws Exception;

	void updateNoticeModify(Map<String, Object> map) throws Exception;
	
	void adminDeleteNotice(Map<String, Object> map) throws Exception;
	
	void adminDeleteGoods(Map<String, Object> map) throws Exception;
	
	void adminDeleteGoodsImage(Map<String, Object> map) throws Exception;
}
