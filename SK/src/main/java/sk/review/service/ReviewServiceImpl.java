package sk.review.service;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import sk.review.dao.ReviewDAO;

@Service("reviewService")
public class ReviewServiceImpl implements ReviewService {

	@Resource(name = "reviewDAO")
	private ReviewDAO reviewDAO;

	//후기 등록
	@Override
	public void insertReview(Map<String, Object> map) throws Exception {
		System.out.println("reviewWrite 서비스 파라미터 : " + map);
		reviewDAO.insertReview(map);
		
	}

	//리뷰 평점 평균 계산하여 DB에 저장
	@Override
	public void updateGoodsReviewScoreAvg(Map<String, Object> map) throws Exception {
		System.out.println("updateGoodsReviewScoreAvg 서비스 파라미터 : " + map);
		reviewDAO.updateGoodsReviewScoreAvg(map);
	}
	
	
}
