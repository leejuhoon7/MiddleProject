package co.jtrip.reply.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jtrip.common.Command;
import co.jtrip.reply.service.ReplyService;
import co.jtrip.reply.service.ReplyVO;
import co.jtrip.reply.serviceImpl.ReplyServiceImpl;

public class ReplySelect implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		ReplyService dao = new ReplyServiceImpl();
		ReplyVO vo = new ReplyVO();
		vo.setReplyNo(Integer.valueOf(request.getParameter("id")));
		
		vo = dao.replySelect(vo);
		request.setAttribute("vo", vo);
		return "reply/replySelect";
	}

}
