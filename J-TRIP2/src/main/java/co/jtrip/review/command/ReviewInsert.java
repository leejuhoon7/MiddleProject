package co.jtrip.review.command;

import java.io.File;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import co.jtrip.common.Command;
import co.jtrip.review.service.ReviewService;
import co.jtrip.review.service.ReviewVO;
import co.jtrip.review.serviceIml.ReviewServiceImpl;

public class ReviewInsert implements Command {

	// 리뷰 글쓰기 (기능)
	private String saveFolder = "c:\\fileUploadTest";
	private String charactSet = "utf-8"; // 전송되는 문자열 엔코딩 타입
	private int maxSize = 1024 * 1024 * 1024; // 최대사이즈

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 리뷰 등록(입력)
		ReviewService dao = new ReviewServiceImpl();
		ReviewVO vo = new ReviewVO();
		String viewPage = "main/reviewError";
		String filename = "";
		String originalFileName = "";
		
		HttpSession ses = request.getSession();
		try {
			MultipartRequest multi = new MultipartRequest(request, saveFolder, maxSize, charactSet,
					new DefaultFileRenamePolicy());

			filename = multi.getFilesystemName("ufile"); // 물리적 위치에 저장
			originalFileName = multi.getOriginalFileName("ufile"); // 실제 파일명
			System.out.println("ReviewInsert 접속여부1");
			vo.setReviewTitle(multi.getParameter("reviewTitle"));
			vo.setMemberId(multi.getParameter("memberId"));
			System.out.println("ReviewInsert 접속여부2");
			vo.setReviewContent(multi.getParameter("reviewContent"));
			vo.setReviewScore(multi.getParameter("reviewScore"));
			vo.setReviewImg(originalFileName);
			System.out.println("ReviewInsert 접속여부3");
			vo.setReviewImgDir(saveFolder + File.separator + filename);
			vo.setReviewLocal(multi.getParameter("reviewLocal"));

			System.out.println("reviewinsert의 : " + vo);

		} catch (IOException e) {
			e.printStackTrace();
		}

		int n = dao.reviewInsert(vo);

		String local = vo.getReviewLocal();

		if (n != 0) {
			// 지역에 따라서
			if (local.equals("부산")) {
				viewPage = "reviewList.do";
				ses.setAttribute("local", local);
			
				
			} else if (local.equals("경주")) {
				viewPage = "reviewList.do";
				ses.setAttribute("local", local);
				
			} else if (local.equals("울릉도")) {
				viewPage = "reviewList.do";
				ses.setAttribute("local", local);
				
			} else if (local.equals("제주도")) {
				viewPage = "reviewList.do";
				ses.setAttribute("local", local);

		} 
		}else {
			request.setAttribute("message", "게시글 등록이 실패했습니다.");

		}

		return viewPage;

	}

}