package co.jtrip.review.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.jtrip.common.Command;
import co.jtrip.review.service.ReviewService;
import co.jtrip.review.service.ReviewVO;
import co.jtrip.review.serviceIml.ReviewServiceImpl;

public class ReviewSelect implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {

		// 리뷰 상세보기
		ReviewService dao = new ReviewServiceImpl();
		ReviewVO vo = new ReviewVO();

		vo.setReviewNo(Integer.valueOf(request.getParameter("reviewNo")));
		System.out.println("ReviewSelect의 가져오는 vo(reviewNo) : " + request.getParameter("reviewNo"));

		
		vo = dao.reviewSelect(vo);
		System.out.println("ReviewSelect의 가져오는 vo(dao.reviewSelect) : " + vo);

		System.out.println("ReviewSelect의 vo2 : " + vo);
		
		//조회수 증가
		if (vo != null) {
			dao.reviewHitUpdate(vo.getReviewNo());
			request.setAttribute("vo", vo);

		}

		return "review/reviewSelect";
	}

}
