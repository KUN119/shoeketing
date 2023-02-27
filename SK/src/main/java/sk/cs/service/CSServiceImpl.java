package sk.cs.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Service;

import sk.cs.dao.CSDAO;

@Service("CSService")
public class CSServiceImpl implements CSService {
	Log log = LogFactory.getLog(this.getClass());
	
	@Resource(name="CSDAO")
	private CSDAO CSDAO;
	
	//나의 문의 내역
	@Override
	public List<Map<String, Object>> selectCSList(Map<String, Object> map) throws Exception {
		return CSDAO.selectCSList(map);
	}

	//문의 개수
	@Override
	public int SelectCSCount(Map<String, Object> map) throws Exception {
		return CSDAO.SelectCSCount(map);
	}

	//문의할 매장찾기 지점 리스트
	@Override
	public List<Map<String, Object>> selectShopList(Map<String, Object> map) throws Exception {
		return CSDAO.selectShopList(map);
	}

	//지점 총 개수
	@Override
	public int selectShopCount(Map<String, Object> map) throws Exception {
		return CSDAO.selectShopCount(map);
	}

	//문의 작성하기
	@Override
	public void insertCS(Map<String, Object> map) throws Exception {
		CSDAO.insertCS(map);
	}

	//문의글 상세
	@Override
	public Map<String, Object> selectCSDetail(Map<String, Object> map) throws Exception {
		return CSDAO.selectCSDetail(map);
	}

	//문의 댓글 조회
	@Override
	public Map<String, Object> selectCSReply(Map<String, Object> map) throws Exception {
		return CSDAO.selectCSReply(map);
	}

	
}
