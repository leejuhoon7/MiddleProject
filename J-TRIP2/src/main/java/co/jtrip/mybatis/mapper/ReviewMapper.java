package co.jtrip.mybatis.mapper;

import java.util.List;

import co.jtrip.review.service.ReviewVO;

public interface ReviewMapper {
	List<ReviewVO> reviewSelectList(ReviewVO vo);
	ReviewVO reviewSelect(ReviewVO vo);  
	int reviewInsert(ReviewVO vo);
	int reviewUpdate(ReviewVO vo);	
	int reviewDelete(ReviewVO vo);
	void reviewHitUpdate(int reviewNo);	
	
	List<ReviewVO> myReviewSelectList();

}
