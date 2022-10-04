package co.jtrip.review.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.jtrip.common.Command;
import co.jtrip.review.service.ReviewService;
import co.jtrip.review.service.ReviewVO;
import co.jtrip.review.serviceIml.ReviewServiceImpl;

public class ReviewList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		//리뷰글 전체 보기
	      List<ReviewVO> list = new ArrayList<ReviewVO>(); 
	      ReviewService dao = new ReviewServiceImpl();
	      ReviewVO vo = new ReviewVO();
	      HttpSession ses = request.getSession();
	      
	      String local = request.getParameter("local");
	     
	      if(local == null) {
	    	 local=(String) ses.getAttribute("local");
	      }
	      
	      vo.setReviewLocal(local);
	      
	      list = dao.reviewSelectList(vo);
	      
	      System.out.println("ReviewBusan의 list : " + list);
	      request.setAttribute("list", list);
	      System.out.println("ReviewBusan의 list2 : " + list);
		return "review/reviewList";
	}

}
