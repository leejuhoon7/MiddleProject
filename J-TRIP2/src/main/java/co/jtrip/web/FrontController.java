package co.jtrip.web;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jtrip.admin.command.AdminProductDelete;
import co.jtrip.admin.command.AdminProductInsert;
import co.jtrip.admin.command.AdminProductInsertForm;
import co.jtrip.admin.command.AdminProductSelectList;
import co.jtrip.admin.command.AdminProductUpdate;
import co.jtrip.admin.command.AdminProductUpdateForm;
import co.jtrip.common.Command;
import co.jtrip.fna.command.FnaSelectList;
import co.jtrip.main.Main;
import co.jtrip.member.command.AjaxMemberIdCheck;
import co.jtrip.member.command.MemberInsert;
import co.jtrip.member.command.MemberJoin;
import co.jtrip.member.command.MemberLogin;
import co.jtrip.member.command.MemberLoginAction;
import co.jtrip.member.command.MemberLogout;
import co.jtrip.mypage.command.MemberSelectList;
import co.jtrip.mypage.command.MyDelete;
import co.jtrip.mypage.command.MyDeleteForm;
import co.jtrip.mypage.command.MyInfo;
import co.jtrip.mypage.command.MyInfoForm;
import co.jtrip.mypage.command.MyPageMain;
import co.jtrip.mypage.command.QNASelect;
import co.jtrip.mypage.command.QNASelectList;
import co.jtrip.mypage.command.ReviewSelectList;
import co.jtrip.notice.command.NoticeDelete;
import co.jtrip.notice.command.NoticeInsert;
import co.jtrip.notice.command.NoticeInsertForm;
import co.jtrip.notice.command.NoticeSelectList;
import co.jtrip.notice.command.NoticeUpdate;
import co.jtrip.notice.command.NoticeUpdateForm;
import co.jtrip.product.command.PayForm;
import co.jtrip.product.command.Product;
import co.jtrip.product.command.ProductSelect;
import co.jtrip.qna.command.QnaDelete;
import co.jtrip.qna.command.QnaInsert;
import co.jtrip.qna.command.QnaInsertForm;
import co.jtrip.qna.command.QnaSelectList;
import co.jtrip.qna.command.QnaUpdate;
import co.jtrip.reply.command.ReplyDelete;
import co.jtrip.reply.command.ReplyInsert;
import co.jtrip.reply.command.ReplyQnaDelete;
import co.jtrip.reply.command.ReplySelect;
import co.jtrip.review.command.ReviewDelete;
import co.jtrip.review.command.ReviewEdit;
import co.jtrip.review.command.ReviewEditForm;
import co.jtrip.review.command.ReviewInsert;
import co.jtrip.review.command.ReviewList;
import co.jtrip.review.command.ReviewMain;
import co.jtrip.review.command.ReviewSelect;
import co.jtrip.review.command.ReviewWriteForm;
import co.jtrip.tiles.command.FnA;
import co.jtrip.tiles.command.Home;
import co.jtrip.tiles.command.Info;
import co.jtrip.tiles.command.JoinForm;
import co.jtrip.tiles.command.Login;
import co.jtrip.tiles.command.Notice;
import co.jtrip.tiles.command.NoticeForm;
import co.jtrip.tiles.command.NoticeSelect;
import co.jtrip.tiles.command.FnaNoticeForm;
import co.jtrip.tiles.command.FnaSelect;
import co.jtrip.tiles.command.QnA;
import co.jtrip.tiles.command.QnaNoticeForm;
import co.jtrip.tiles.command.QnaSelect;
import co.jtrip.tiles.command.Reservation;


@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private HashMap<String, Command> map = new HashMap<String, Command>();

	public FrontController() {
		super();
	}

	public void init(ServletConfig config) throws ServletException {
		// 명령 집단 저장하는 곳

		// main
		map.put("/main.do", new Main());
		map.put("/home.do", new Home());
		map.put("/info.do", new Info());

		map.put("/memberLogin.do", new MemberLogin()); // 로그인 폼.
		map.put("/memberLoginAction.do", new MemberLoginAction()); // 로그인 처리.
		map.put("/memberLogout.do", new MemberLogout()); // 로그아웃.
		
		map.put("/memberJoin.do", new MemberJoin()); // 회원가입 폼.
		map.put("/memberInsert.do", new MemberInsert()); // 회원가입 입력 처리.
		map.put("/ajaxMemberIdCheck.do", new AjaxMemberIdCheck()); //멤버 아이디 중복 확인.
		
		// Product 상품(패키지)
		map.put("/product.do", new Product());
		map.put("/productSelect.do", new ProductSelect());


		// Pay, Reservation
		map.put("/reservation.do", new Reservation());
		map.put("/payForm.do", new PayForm());
		
		//======================================================================

		// Review
				map.put("/reviewMain.do", new ReviewMain());			// 리뷰 메인
			
				map.put("/reviewList.do", new ReviewList());			//  목록
				map.put("/reviewSelect.do", new ReviewSelect()); 		// 리뷰 상세보기
				map.put("/reviewWriteForm.do", new ReviewWriteForm());	// 리뷰 등록폼		
				map.put("/reviewInsert.do", new ReviewInsert()); 		// 리뷰 등록		
				
				map.put("/reviewEdit.do", new ReviewEdit());			// 리뷰 수정
				map.put("/reviewEditForm.do", new ReviewEditForm());	// 리뷰 수정폼
				
				map.put("/reviewDelete.do", new ReviewDelete()); // 리뷰 삭제
			
				// Custom Center
				// 1)고객센터 메인
				map.put("/qna.do", new QnaSelectList());

				map.put("/noticeSelectList.do", new NoticeSelectList()); // 공지사항 페이지
				map.put("/noticeSelect.do", new NoticeSelect());		// 공지사항 보기
				map.put("/noticeInsert.do", new NoticeInsert());		// 공지사항 쓰기
				map.put("/noticeUpdate.do", new NoticeUpdate());		// 공지사항 수정
				map.put("/noticeInsertForm.do", new NoticeInsertForm());
				map.put("/noticeUpdateForm.do", new NoticeUpdateForm());
				map.put("/noticeDelete.do", new NoticeDelete());
				
				map.put("/fnaSelectList.do", new FnaSelectList());
				
				map.put("/replyInsert.do", new ReplyInsert());
				map.put("/replySelect.do", new ReplySelect());
				map.put("/replyDelete.do", new ReplyDelete());
				map.put("/replyQnaDelete.do", new ReplyQnaDelete());
				
				
				map.put("/qnaSelectList.do", new QnaSelectList());
				map.put("/qnaSelect.do",new QnaSelect());	
				map.put("/qnaInsert.do",new QnaInsert());
				map.put("/qnaDelete.do", new QnaDelete());
				map.put("/qnaInsertForm.do", new QnaInsertForm());
				map.put("/qnaUpdate.do", new QnaUpdate());
				
				
				
				// 2) 등록, 수정 폼
				map.put("/noticeForm.do", new NoticeForm());
				map.put("/qnaNoticeForm.do", new QnaNoticeForm());

				// 3) 상세 조회 폼

				map.put("/fnaSelect.do", new FnaSelect());
				
				//======================================================================



				// Admin
				map.put("/adminProductSelectList.do", new AdminProductSelectList());
				map.put("/adminProductUpdate.do", new AdminProductUpdate());
				map.put("/adminProductUpdateForm.do", new AdminProductUpdateForm());
				map.put("/adminProductInsert.do", new AdminProductInsert());
				map.put("/adminProductInsertForm.do", new AdminProductInsertForm());
				map.put("/adminProductDelete.do", new AdminProductDelete());
				
				// myPage
				map.put("/myPageMain.do", new MyPageMain());
				map.put("/myInfo.do", new MyInfo());
				map.put("/myInfoForm.do", new MyInfoForm());
				map.put("/memberSelectList.do", new MemberSelectList());
				map.put("/myQnA.do", new QNASelect());
				map.put("/myQnAList.do", new QNASelectList());
				map.put("/myReview.do", new ReviewSelect());
				map.put("/myReviewList.do", new ReviewSelectList());
				map.put("/myDelete.do", new MyDelete());
				map.put("/myDeleteForm.do", new MyDeleteForm());		
				
				

	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 실제 수행할 서비스

		request.setCharacterEncoding("utf-8"); // 한글깨짐 방지
		String uri = request.getRequestURI();
		String contextPath = request.getContextPath();
		String page = uri.substring(contextPath.length());
		System.out.println("front의 page:" + page);
		Command command = map.get(page);
		String viewPage = command.exec(request, response);

		if (!viewPage.endsWith(".do")) {
			if (viewPage.startsWith("ajax:")) { // ajax를 사용할 때
				response.setContentType("text/html; charset=UTF-8");
				response.getWriter().append(viewPage.substring(5));
				return;
			} else {
				if (viewPage.startsWith("no:")) {// tiles 사용안할때
					viewPage = "/WEB-INF/views/" + viewPage.substring(3) + ".jsp";
					System.out.println("viewPage_tiles 안 쓸때 경로 : " + viewPage);
				} else {
					viewPage = viewPage + ".tiles"; // tiles layout 사용할때
					System.out.println("viewPage_tiles 사용할때 경로: " + viewPage);
				}

				RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
				dispatcher.forward(request, response);
			}
		} else {
			response.sendRedirect(viewPage); // .do return
		}

	}

}
