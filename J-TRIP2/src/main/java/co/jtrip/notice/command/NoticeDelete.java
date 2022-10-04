package co.jtrip.notice.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jtrip.common.Command;
import co.jtrip.notice.service.NoticeService;
import co.jtrip.notice.service.NoticeVO;
import co.jtrip.notice.serviceImpl.NoticeServiceImpl;

public class NoticeDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String viewPage = "notice/noticeError";
		NoticeService dao = new NoticeServiceImpl();
		NoticeVO vo = new NoticeVO();
		
		vo.setNoticeNo(Integer.valueOf(request.getParameter("noticeNo1")));
		
		System.out.println(vo.getNoticeNo());
		
		//첨부파일이 있을시 이곳에서 처리함
		int n = dao.noticeDelete(vo);
		if(n != 0) {
			viewPage = "noticeSelectList.do";
		}else {
			request.setAttribute("message", "게시글 삭제 실패.");
		}
		
		return viewPage;

	}

}
