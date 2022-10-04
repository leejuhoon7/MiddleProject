package co.jtrip.mypage.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jtrip.common.Command;

import co.jtrip.qna.service.QnaService;
import co.jtrip.qna.service.QnaVO;

import co.jtrip.qna.serviceImpl.QnaServiceImpl;

public class QNASelectList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		List<QnaVO> list = new ArrayList<>();

		QnaService dao = new QnaServiceImpl();
		list = dao.qnaSelectList();
		System.out.println(list);
		
		request.setAttribute("list", list);
		
		return "myPage/myQnAList";
		
	}

}
