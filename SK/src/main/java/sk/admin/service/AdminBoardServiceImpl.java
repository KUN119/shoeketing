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
	public int insertNotice(Map<String, Object> map) throws Exception {
		return adminBoardDAO.insertNotice(map);

	}

	@Override
	public Map<String, Object> selectNoticeDetail(Map<String, Object> map) throws Exception {

		return adminBoardDAO.selectNoticeDetail(map);
	}

	@Override
	public int updateNoticeModify(Map<String, Object> map) throws Exception {

		return adminBoardDAO.updateNoticeModify(map);
	}

	@Override
	public int adminDeleteNotice(Map<String, Object> map) throws Exception {

		return adminBoardDAO.deleteNotice(map);
	}

	@Override
	public List<Map<String, Object>> selectTotalGoodsList(Map<String, Object> map) throws Exception {
		return adminBoardDAO.selectTotalGoodsList(map);
	}

	@Override
	public int selectTotalGoodsListCount(Map<String, Object> map) throws Exception {
		return adminBoardDAO.selectTotalGoodsListCount(map);
	}

	@Override
	public int adminDeleteGoods(Map<String, Object> map) throws Exception {
		int result = 0;

		if ((int) adminBoardDAO.adminDeleteGoods(map) == 1) {
			result = adminBoardDAO.adminDeleteGoodsImage(map);
		} else {
			result = 0;
		}

		return result;
	}

	@Override
	public void adminDeleteGoodsImage(Map<String, Object> map) throws Exception {

		adminBoardDAO.adminDeleteGoodsImage(map);
	}
}
