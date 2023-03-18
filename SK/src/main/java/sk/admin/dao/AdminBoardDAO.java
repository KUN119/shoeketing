package sk.admin.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import sk.common.dao.AbstractDAO;

@Repository("adminBoardDAO")
public class AdminBoardDAO extends AbstractDAO {

	public List<Map<String, Object>> selectNoticeList(Map<String, Object> map) throws Exception {
		System.out.println("selectNoticeList 파라미터" + map);
		
		return (List<Map<String, Object>>) selectList("adminBoard.selectNoticeList", map);
	}
	
	public int selectNoticeCount(Map<String, Object> map) throws Exception {
		System.out.println("selectNoticeList 파라미터" + map);
		
		return (int) selectOne("adminBoard.selectNoticeCount", map);
	}
	
	public void insertNotice(Map<String, Object> map) throws Exception {
		System.out.println("insertNotice 파라미터 : " + map);

		insert("adminBoard.insertNotice", map);
	}
	
    public Map<String, Object> selectNoticeDetail(Map<String, Object> map) throws Exception {
    	System.out.println("selectReportDetail 파라미터 : " + map);

		return (Map<String, Object>) selectOne("adminBoard.selectNoticeDetail", map);
    }
    
	public void updateNoticeModify(Map<String, Object> map) throws Exception {
		System.out.println("updateNoticeModify 파라미터 : " + map);

		update("adminBoard.updateNoticeModify", map);
	}
	
	
	public void deleteNotice(Map<String, Object> map) throws Exception {
		System.out.println("deleteNotice 파라미터 : " + map);

		delete("adminBoard.deleteNotice", map);
	}
	
	public void adminDeleteGoods(Map<String, Object> map) throws Exception {
		System.out.println("adminDeleteNotice 파라미터 : " + map);

		delete("adminBoard.deleteGoods", map);
	}
	
	public void adminDeleteGoodsImage(Map<String, Object> map) throws Exception {
		System.out.println("adminDeleteGoodsImage 파라미터 : " + map);

		delete("adminBoard.deleteGoodsImage", map);
	}
	
}




















































