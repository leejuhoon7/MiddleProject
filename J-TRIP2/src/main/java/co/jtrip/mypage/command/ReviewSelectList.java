package co.jtrip.mypage.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jtrip.common.Command;
import co.jtrip.review.service.ReviewService;
import co.jtrip.review.service.ReviewVO;
import co.jtrip.review.serviceIml.ReviewServiceImpl;


public class ReviewSelectList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		List<ReviewVO> list = new ArrayList<>();
		ReviewService dao = new ReviewServiceImpl();
		
		list = dao.reviewSelectList(null);
		request.setAttribute("list", list);

		return "myPage/myReviewList";

	
	}
}
