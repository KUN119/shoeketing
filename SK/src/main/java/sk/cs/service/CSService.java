package sk.cs.service;

import java.util.List;
import java.util.Map;

public interface CSService {

	//나의 문의 리스트 가져오기
	public List<Map<String, Object>> selectCSList(Map<String, Object> map) throws Exception;
	
	//나의 문의 개수 가져오기
	public int SelectCSCount(Map<String, Object> map) throws Exception;
	 
	//지점 리스트 가져오기
	public List<Map<String, Object>> selectShopList(Map<String, Object> map) throws Exception;	
	
	//지점 총 개수 가져오기
	public int selectShopCount(Map<String, Object> map) throws Exception;
	
	//문의글 작성
	public void insertCS (Map<String, Object> map) throws Exception;
	
	//문의글 상세보기 (데이터 한 줄 가져오기)
	public Map<String, Object> selectCSDetail(Map<String, Object> map) throws Exception;
	
	//문의 댓글 가져오기
	public Map<String, Object> selectCSReply(Map<String, Object> map) throws Exception;
	
	
}
