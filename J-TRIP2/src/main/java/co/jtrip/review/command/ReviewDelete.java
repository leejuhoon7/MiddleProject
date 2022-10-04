package co.jtrip.review.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jtrip.common.Command;
import co.jtrip.review.service.ReviewService;
import co.jtrip.review.service.ReviewVO;
import co.jtrip.review.serviceIml.ReviewServiceImpl;

public class ReviewDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 리뷰 삭제하기
		
		String viewPage = "review/reviewError";
		ReviewService dao = new ReviewServiceImpl();
		ReviewVO vo = new ReviewVO();
		
		vo.setReviewNo(Integer.valueOf(request.getParameter("reviewNo")));
		
		System.out.println(vo.getReviewNo());
		
		//첨부파일이 있을시 이곳에서 처리함
		int n = dao.reviewDelete(vo);
		if(n != 0) {
			viewPage = "reviewMain.do";
		}else {
			request.setAttribute("message", "게시글 삭제 실패.");
		}
		
		return viewPage;

	}

}
