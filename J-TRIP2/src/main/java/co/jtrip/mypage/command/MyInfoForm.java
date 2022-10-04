package co.jtrip.mypage.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.jtrip.common.Command;
import co.jtrip.member.service.MemberService;
import co.jtrip.member.service.MemberVO;
import co.jtrip.member.serviceImpl.MemberServiceImpl;



public class MyInfoForm implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
		String a = (String)session.getAttribute("id");
		
		MemberService dao = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		
		vo.setMemberId(a);
		
		MemberVO resultVO = dao.memberSelect(vo);
		request.setAttribute("vo", resultVO);
			
		return "myPage/myInfoForm";
	}
	
}
