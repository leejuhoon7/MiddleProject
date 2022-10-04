package co.jtrip.review.serviceIml;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.jtrip.common.DataSource;
import co.jtrip.mybatis.mapper.ReviewMapper;
import co.jtrip.review.service.ReviewService;
import co.jtrip.review.service.ReviewVO;

public class ReviewServiceImpl implements ReviewService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private ReviewMapper map = sqlSession.getMapper(ReviewMapper.class);

	@Override
	public List<ReviewVO> reviewSelectList(ReviewVO vo) {
		// 리뷰 리스트 보기(지역별)
		return map.reviewSelectList(vo);
	}

	@Override
	public ReviewVO reviewSelect(ReviewVO vo) {
		// 리뷰 상세 보기
		return map.reviewSelect(vo);
	}

	@Override
	public int reviewInsert(ReviewVO vo) {
		// 리뷰 글쓰기
		return map.reviewInsert(vo);
	}

	@Override
	public int reviewUpdate(ReviewVO vo) {
		// 리뷰 수정
		return map.reviewUpdate(vo);
	}



	@Override
	public void reviewHitUpdate(int reviewNo) {
		// 리뷰 조회수
		map.reviewHitUpdate(reviewNo);
	}

	@Override
	public int reviewDelete(ReviewVO vo) {
		// 리뷰 삭제
		return map.reviewDelete(vo);
	}

	@Override
	public List<ReviewVO> myReviewSelectList() {
		// TODO Auto-generated method stub
		return null;
	}

}
