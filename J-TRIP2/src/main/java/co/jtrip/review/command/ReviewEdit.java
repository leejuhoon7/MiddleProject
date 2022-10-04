package co.jtrip.review.command;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import co.jtrip.common.Command;
import co.jtrip.review.service.ReviewService;
import co.jtrip.review.service.ReviewVO;
import co.jtrip.review.serviceIml.ReviewServiceImpl;

public class ReviewEdit implements Command {
	
	private String saveFolder = "c:\\fileUploadTest";
	   private String charactSet = "utf-8"; // 전송되는 문자열 엔코딩 타입
	   private int maxSize = 1024*1024*1024; // 최대사이즈

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 리뷰 게시글 수정
				ReviewService dao = new ReviewServiceImpl();
			      ReviewVO vo = new ReviewVO();
			      String viewPage = "review/reviewError";
			      String filename ="";
			      String originalFileName="";
			      try {
			         MultipartRequest multi = 
			               new MultipartRequest(request, saveFolder, maxSize, charactSet, new DefaultFileRenamePolicy());
			      
			         filename = multi.getFilesystemName("ufile"); // 물리적 위치에 저장
			         originalFileName = multi.getOriginalFileName("ufile"); // 실제 파일명
			         System.out.println("ReviewEidt 접속여부1");
			         vo.setReviewNo(Integer.valueOf(multi.getParameter("reviewNo")));
			         vo.setReviewTitle(multi.getParameter("reviewTitle"));
			         vo.setMemberId(multi.getParameter("memberId"));
			         System.out.println("ReviewEidt 접속여부2");
			         vo.setReviewContent(multi.getParameter("reviewContent"));
			         vo.setReviewScore(multi.getParameter("reviewScore"));
			         vo.setReviewImg(originalFileName);
			         System.out.println("ReviewEdit 접속여부3");
			         vo.setReviewImgDir(saveFolder+File.separator+filename);
			         vo.setReviewLocal(multi.getParameter("reviewLocal"));
			         
			System.out.println("reviwEidt의 : "+vo);
			         
			      } catch (IOException e) {
			         e.printStackTrace();
			      }
			      
			
						
						//첨부파일 처리하고
						int n = dao.reviewUpdate(vo);
						if(n != 0) {
							vo = dao.reviewSelect(vo);
							request.setAttribute("vo", vo);
							viewPage = "review/reviewSelect"; //수정완료시 완료된 내용을 보여준다
						}else {
							request.setAttribute("message", "데이터가 수정되지 않았습니다.");
						}
						return viewPage;
					}

				}