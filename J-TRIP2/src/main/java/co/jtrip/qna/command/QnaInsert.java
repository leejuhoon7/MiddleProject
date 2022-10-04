package co.jtrip.qna.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jtrip.common.Command;
import co.jtrip.qna.service.QnaService;
import co.jtrip.qna.service.QnaVO;
import co.jtrip.qna.serviceImpl.QnaServiceImpl;

public class QnaInsert implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String viewPage = "qna/qnaError";
		QnaService dao = new QnaServiceImpl();
		QnaVO vo = new QnaVO();

		//vo.setNoticeDate(Date.valueOf(request.getParameter("noticeDate"))); //문자를 java Date객체로 변환
		vo.setMemberId("id");
		vo.setQnaTitle(request.getParameter("qnaTitle"));
		vo.setQnaContent(request.getParameter("qnaContent"));
		System.out.println(vo.getMemberId());
		
		//첨부파일이 있을시 이곳에서 처리함
		int n = dao.qnaInsert(vo);
		if(n != 0) {
			viewPage = "qna.do";
		}else {
			request.setAttribute("message", "질문 등록이 실패했다.");
		}
		
		
		
		return viewPage;
	}


}
