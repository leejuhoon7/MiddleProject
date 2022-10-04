package co.jtrip.review.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jtrip.common.Command;
import co.jtrip.review.service.ReviewService;
import co.jtrip.review.service.ReviewVO;
import co.jtrip.review.serviceIml.ReviewServiceImpl;


public class ReviewEditForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 리뷰 수정 폼
		// 리뷰 수정(수정폼으로)
				ReviewService dao = new ReviewServiceImpl();
				ReviewVO vo = new ReviewVO();
				vo.setReviewNo(Integer.valueOf(request.getParameter("reviewNo")));			
				vo = dao.reviewSelect(vo);
				request.setAttribute("vo", vo);
				return "review/reviewEditForm";
	}

}
