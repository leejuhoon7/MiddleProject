package co.jtrip.qna.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jtrip.common.Command;
import co.jtrip.qna.service.QnaService;
import co.jtrip.qna.service.QnaVO;
import co.jtrip.qna.serviceImpl.QnaServiceImpl;
import co.jtrip.reply.service.ReplyService;
import co.jtrip.reply.service.ReplyVO;
import co.jtrip.reply.serviceImpl.ReplyServiceImpl;

public class QnaDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String viewPage = "qna/qnaError";
		QnaService dao = new QnaServiceImpl();
		QnaVO vo = new QnaVO();
		
		
		vo.setQnaNo(Integer.valueOf(request.getParameter("qnaNo1")));
		System.out.println(vo.getQnaNo());

		int n = dao.qnaDelete(vo);
		if(n != 0) {
			viewPage = "customCenter/qna";
		}else {
			request.setAttribute("message", "삭제 실패.");
		}
		
		ReplyService dao2 = new ReplyServiceImpl();
		ReplyVO vo1 = new ReplyVO();
		
		
		vo1.setQnaNo(Integer.valueOf(request.getParameter("qnaNo1")));
		System.out.println(vo1.getReplyNo());
		
		int n1 = dao2.qnaDelete(vo1);
		
		QnaService dao1 = new QnaServiceImpl();
		List<QnaVO> list = new ArrayList<QnaVO>();
		list = dao1.qnaSelectList();
		request.setAttribute("list", list);

		
		
		
		return viewPage;
	}

}
