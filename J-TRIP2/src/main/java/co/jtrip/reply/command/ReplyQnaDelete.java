package co.jtrip.reply.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jtrip.common.Command;
import co.jtrip.reply.service.ReplyService;
import co.jtrip.reply.service.ReplyVO;
import co.jtrip.reply.serviceImpl.ReplyServiceImpl;

public class ReplyQnaDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String viewPage = "reply/replyError";
		ReplyService dao = new ReplyServiceImpl();
		ReplyVO vo = new ReplyVO();
		
		
		vo.setReplyNo(Integer.valueOf(request.getParameter("id2")));
		System.out.println(vo.getReplyNo());

		int n = dao.qnaDelete(vo);
		if(n != 0) {
			viewPage = "customCenter/qnaSelect";
		}else {
			request.setAttribute("message", "삭제 실패.");
		}
		
		
		
		return viewPage;
	}

}
