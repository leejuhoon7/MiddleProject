package co.jtrip.qna.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jtrip.common.Command;
import co.jtrip.qna.service.QnaService;
import co.jtrip.qna.service.QnaVO;
import co.jtrip.qna.serviceImpl.QnaServiceImpl;

public class QnaUpdate implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String viewPage = "qna/qnaError";

		QnaService dao = new QnaServiceImpl();
		QnaVO vo = new QnaVO();
		vo.setQnaNo(Integer.valueOf(request.getParameter("qnaNo")));
		vo.setQnaTitle(request.getParameter("qnaTitle"));
		vo.setQnaContent(request.getParameter("qnaContent"));

		System.out.println(vo.getQnaNo());
		System.out.println(vo.getQnaContent());
		int update = dao.qnaUpdate(vo);
		if (update != 0) {
			viewPage = "qnaSelectList.do";

		} else {
			request.setAttribute("message", "게시글 수정이 실패했습니다.");
		}

		return viewPage;
	}

}
