package co.jtrip.mypage.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jtrip.common.Command;
import co.jtrip.member.service.MemberService;
import co.jtrip.member.service.MemberVO;
import co.jtrip.member.serviceImpl.MemberServiceImpl;


public class MyInfo implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		String viewPage = "myPage/myError";
		MemberService dao = new MemberServiceImpl();
	
		MemberVO vo = new MemberVO();
		String fullEmail = "";
		 fullEmail +=request.getParameter("memberEmail");
		 fullEmail +=request.getParameter("textEmail");
		 		
		
		vo.setMemberId(request.getParameter("memberId"));
		vo.setMemberPassword(request.getParameter("memberPassword"));
		vo.setMemberName(request.getParameter("memberName"));
		vo.setMemberAddress(request.getParameter("memberAddress"));
		vo.setMemberTel(request.getParameter("memberTel"));
		vo.setMemberEmail(fullEmail);
		vo.setMemberEmail(request.getParameter("memberEmail"));
		vo.setMemberAuthor(request.getParameter("memberAuthor"));
		vo.setMemberFavorite(request.getParameter("memberFavorite"));
	
		
		int result = dao.memberUpdate(vo);
		
		if(result != 0) {
			MemberVO resultVO = dao.memberSelect(vo);

			request.setAttribute("vo", resultVO);
			viewPage = "myPage/myInfoForm";
			
		} else {
			request.setAttribute("message", "정보수정에 실패했어요!!");
		}
		
		return viewPage;
	}

}
