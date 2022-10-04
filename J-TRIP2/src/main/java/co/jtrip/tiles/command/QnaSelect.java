package co.jtrip.tiles.command;

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

public class QnaSelect implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// QnA 상세 보기

				QnaService dao = new QnaServiceImpl();
				QnaVO vo = new QnaVO();
				vo.setQnaNo(Integer.valueOf(request.getParameter("id")));
				
				
				vo = dao.qnaSelect(vo);
				request.setAttribute("vo", vo);
				
				
				ReplyService dao1 = new ReplyServiceImpl();
				List<ReplyVO> list = new ArrayList<ReplyVO>();
				ReplyVO vo1 = new ReplyVO();
				vo1.setQnaNo(Integer.valueOf(request.getParameter("id")));
				list = dao1.replySelectList(vo1);
				System.out.println(list);
				request.setAttribute("list", list);
				
				
				return "customCenter/qnaSelect";
	}

}
