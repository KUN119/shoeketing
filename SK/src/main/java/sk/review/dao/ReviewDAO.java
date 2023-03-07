package sk.review.dao;

import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Repository;

import sk.common.dao.AbstractDAO;

@Repository("reviewDAO")
public class ReviewDAO extends AbstractDAO {

	
	Log log = LogFactory.getLog(this.getClass());
	
	//후기 작성
	public void insertReview(Map<String, Object> map) throws Exception {
		System.out.println("insertReview 파라미터 : " + map);
		insert("review.insertReview", map);
	}
	
	//평점 평균을 DB에 저장
	public void updateGoodsReviewScoreAvg(Map<String, Object> map) throws Exception {
		System.out.println("insertReview 파라미터 : " + map);
		update("review.updateGoodsReviewScoreAvg", map);
	}
	
}
