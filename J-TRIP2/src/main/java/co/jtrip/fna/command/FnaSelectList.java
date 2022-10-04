package co.jtrip.fna.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jtrip.common.Command;
import co.jtrip.notice.service.NoticeService;
import co.jtrip.notice.service.NoticeVO;
import co.jtrip.notice.serviceImpl.NoticeServiceImpl;

public class FnaSelectList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 공지글 전체 목록 보기
		NoticeService dao = new NoticeServiceImpl();
		List<NoticeVO> list = new ArrayList<NoticeVO>();
		list = dao.fnaSelectList();
		request.setAttribute("list", list);
		
		return "customCenter/fna";
	}

}
