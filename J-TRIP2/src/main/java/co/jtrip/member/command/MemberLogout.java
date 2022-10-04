package co.jtrip.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.jtrip.common.Command;

public class MemberLogout implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 로그아웃 처리
		HttpSession session = request.getSession();
		String name = (String) session.getAttribute("name");  //세션에 담긴 이름 가져오기
		session.invalidate(); //세션을 완전히 삭제한다.
		request.setAttribute("message", name +"♥" + "님이 로그아웃 되었습니다.");
		return "member/memberMessage";

}

}
