package co.jtrip.mypage.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jtrip.common.Command;
import co.jtrip.review.service.ReviewService;
import co.jtrip.review.service.ReviewVO;
import co.jtrip.review.serviceIml.ReviewServiceImpl;



public class ReviewSelect implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 공지사항 상세보기
		ReviewService dao = new ReviewServiceImpl();
		ReviewVO vo = new ReviewVO();
		
		vo.setMemberId(request.getParameter("memberId"));

		ReviewVO resultVO = dao.reviewSelect(vo);
		if (resultVO != null) {
			dao.reviewSelect(vo);
			request.setAttribute("vo", resultVO);
		}
		return "myPage/myReview";
	}
}
