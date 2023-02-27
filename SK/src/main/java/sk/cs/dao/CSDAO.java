package sk.cs.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import sk.common.dao.AbstractDAO;
 
@Repository("CSDAO")
public class CSDAO extends AbstractDAO {

		//나의 문의 리스트 가져오기
		@SuppressWarnings("unchecked")
		public List<Map<String, Object>> selectCSList(Map<String, Object> map) throws Exception {
			return selectList("CS.selectCSList", map);
		}
		
		//나의 문의 개수 가져오기
		public int SelectCSCount(Map<String, Object> map) throws Exception {
			return (int)selectOne("CS.selectCSCount", map);
		}
		
		//지점 리스트 가져오기
		@SuppressWarnings("unchecked")
		public List<Map<String, Object>> selectShopList(Map<String, Object> map) throws Exception {
			return selectList("CS.selectShopList", map);
		}
		
		//지점 총 개수 가져오기
		public int selectShopCount(Map<String, Object> map) throws Exception {
			return (int)selectOne("CS.selectShopCount", map);
		}
		
		//문의글 작성처리
		public void insertCS (Map<String, Object> map) throws Exception {
			insert("CS.insertCS", map);
		}
		
		//문의글 상세보기 (데이터 한 줄 가져오기)
		@SuppressWarnings("unchecked")
		public Map<String, Object> selectCSDetail(Map<String, Object> map) throws Exception {
			return (Map<String, Object>) selectOne("CS.selectCSDeatil", map);
		}
		
		//문의 댓글 가져오기
		@SuppressWarnings("unchecked")
		public Map<String, Object> selectCSReply(Map<String, Object> map) throws Exception {
			return (Map<String, Object>) selectOne("CS.selectCSReply", map);
		}
		
		//삭제 추가 예정
	
}
