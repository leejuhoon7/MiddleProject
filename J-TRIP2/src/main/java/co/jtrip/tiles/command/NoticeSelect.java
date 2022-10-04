package co.jtrip.tiles.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jtrip.common.Command;
import co.jtrip.notice.service.NoticeService;
import co.jtrip.notice.service.NoticeVO;
import co.jtrip.notice.serviceImpl.NoticeServiceImpl;

public class NoticeSelect implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 공지사항 상세 보기

				NoticeService dao = new NoticeServiceImpl();
				NoticeVO vo = new NoticeVO();
				vo.setNoticeNo(Integer.valueOf(request.getParameter("id")));
				
				vo = dao.noticeSelect(vo);
				request.setAttribute("vo", vo);
				
				return "customCenter/noticeSelect";
	}

}
