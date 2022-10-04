package co.jtrip.reply.command;

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

public class ReplyDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String viewPage = "reply/replyError";
		ReplyService dao = new ReplyServiceImpl();
		ReplyVO vo = new ReplyVO();
		
		
		vo.setReplyNo(Integer.valueOf(request.getParameter("id2")));
		System.out.println(vo.getReplyNo());

		int n = dao.replyDelete(vo);
		if(n != 0) {
			viewPage = "customCenter/qnaSelect";
		}else {
			request.setAttribute("message", "삭제 실패.");
		}
		
		
		QnaService dao1 = new QnaServiceImpl();
		QnaVO vo1 = new QnaVO();
		vo1.setQnaNo(Integer.valueOf(request.getParameter("id3")));
		System.out.println(vo1.getQnaNo());
		vo1 = dao1.qnaSelect(vo1);
		request.setAttribute("vo", vo1);
		
		ReplyService dao2 = new ReplyServiceImpl();
		List<ReplyVO> list = new ArrayList<ReplyVO>();
		ReplyVO vo2 = new ReplyVO();
		vo2.setQnaNo(Integer.valueOf(request.getParameter("id3")));
		list = dao2.replySelectList(vo2);
		System.out.println(list);
		request.setAttribute("list", list);
		
		//첨부파일이 있을시 이곳에서 처리함
		
		return viewPage;

	}

}
