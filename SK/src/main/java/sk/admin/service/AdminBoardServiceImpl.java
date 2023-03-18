package sk.admin.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import sk.admin.dao.AdminBoardDAO;

@Service("adminBoardService")
public class AdminBoardServiceImpl implements AdminBoardService {

	@Resource(name = "adminBoardDAO")
	private AdminBoardDAO adminBoardDAO;
	
	@Override
	public List<Map<String, Object>> selectNoticeList(Map<String, Object> map) throws Exception {

		return adminBoardDAO.selectNoticeList(map);
	}
	
	@Override
	public int selectNoticeCount(Map<String, Object> map) throws Exception {
		return adminBoardDAO.selectNoticeCount(map);
	}
	
	@Override
	public void insertNotice(Map<String, Object> map) throws Exception {
		adminBoardDAO.insertNotice(map);
		
	}
	
	@Override
	public Map<String, Object> selectNoticeDetail(Map<String, Object> map) throws Exception {

		return adminBoardDAO.selectNoticeDetail(map);
	}
	
	@Override
	public void updateNoticeModify(Map<String, Object> map) throws Exception {

		adminBoardDAO.updateNoticeModify(map);
	}
	
	@Override
	public void adminDeleteNotice(Map<String, Object> map) throws Exception {

		adminBoardDAO.deleteNotice(map);
	}
	
	@Override
	public void adminDeleteGoods(Map<String, Object> map) throws Exception {

		adminBoardDAO.adminDeleteGoods(map);
	}
	
	@Override
	public void adminDeleteGoodsImage(Map<String, Object> map) throws Exception {

		adminBoardDAO.adminDeleteGoodsImage(map);
	}
}














