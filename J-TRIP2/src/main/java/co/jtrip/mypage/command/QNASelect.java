package co.jtrip.mypage.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jtrip.common.Command;

import co.jtrip.qna.service.QnaService;
import co.jtrip.qna.service.QnaVO;

import co.jtrip.qna.serviceImpl.QnaServiceImpl;



public class QNASelect implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 공지사항 상세보기
		QnaService dao = new QnaServiceImpl();
		QnaVO vo = new QnaVO();
		
		vo.setMemberId(request.getParameter("memberId"));

		QnaVO resultVO = dao.qnaSelect(vo);
		if (resultVO != null) {
			dao.qnaSelect(vo);
			request.setAttribute("vo", resultVO);
		}
		return "myPage/myQnA";
	}
}
