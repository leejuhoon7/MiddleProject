package co.jtrip.notice.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jtrip.common.Command;
import co.jtrip.notice.service.NoticeService;
import co.jtrip.notice.service.NoticeVO;
import co.jtrip.notice.serviceImpl.NoticeServiceImpl;

public class NoticeUpdate implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		
		String viewPage = "notice/noticeError";
		
		NoticeService dao = new NoticeServiceImpl();
		NoticeVO vo = new NoticeVO();
		vo.setNoticeNo(Integer.valueOf(request.getParameter("noticeNo")));
		vo.setNoticeTitle(request.getParameter("noticeTitle"));
		vo.setNoticeContent(request.getParameter("noticeContent"));
		
		System.out.println(vo.getNoticeNo());
		System.out.println(vo.getNoticeContent());
		int update =dao.noticeUpdate(vo);
		if(update != 0) {
			viewPage = "noticeSelectList.do";
			
		}else {
			request.setAttribute("message", "게시글 수정이 실패했습니다.");
		}
		
		return viewPage;
	}

}
