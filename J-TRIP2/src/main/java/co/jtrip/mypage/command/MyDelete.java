package co.jtrip.mypage.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.jtrip.common.Command;
import co.jtrip.member.service.MemberService;
import co.jtrip.member.service.MemberVO;
import co.jtrip.member.serviceImpl.MemberServiceImpl;

public class MyDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {

		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		
		MemberService dao = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		
		vo.setMemberId(id);
		vo.setMemberPassword(request.getParameter("memberPassword"));
		
		String viewPage = "myPage/myError";
		
		
		
		int result = dao.memberDelete(vo);
		
		if (result !=0) {
			viewPage = "main/home";
				session.invalidate();
			
		} else {
			// request.setAttribute("message", "회원 삭제에 실패했어요!");
		}
		
		return viewPage;
	}

}
