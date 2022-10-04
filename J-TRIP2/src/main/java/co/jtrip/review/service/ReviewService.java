package co.jtrip.review.service;

import java.util.List;

public interface ReviewService {
	List<ReviewVO> reviewSelectList(ReviewVO vo);
	ReviewVO reviewSelect(ReviewVO vo);  
	int reviewInsert(ReviewVO vo);
	int reviewUpdate(ReviewVO vo);
	int reviewDelete(ReviewVO vo);
	void reviewHitUpdate(int reviewNo);
	
	List<ReviewVO> myReviewSelectList();
	
	//boolean isIdCheck(String id);  

}
