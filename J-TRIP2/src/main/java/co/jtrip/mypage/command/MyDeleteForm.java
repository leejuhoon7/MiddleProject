package co.jtrip.mypage.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.jtrip.common.Command;
import co.jtrip.member.service.MemberService;
import co.jtrip.member.service.MemberVO;
import co.jtrip.member.serviceImpl.MemberServiceImpl;



public class MyDeleteForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {

		
		
		return "myPage/myDeleteForm";

	}

}
