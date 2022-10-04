package co.jtrip.notice.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jtrip.common.Command;
import co.jtrip.notice.service.NoticeService;
import co.jtrip.notice.service.NoticeVO;
import co.jtrip.notice.serviceImpl.NoticeServiceImpl;

public class Notice implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		NoticeService dao = new NoticeServiceImpl();
		List<NoticeVO> list = new ArrayList<NoticeVO>();
		list = dao.noticeSelectList();
		request.setAttribute("list", list);
		
		System.out.println("notice");
		System.out.println(list);
		
		return "customCenter/notice";
	}

}
