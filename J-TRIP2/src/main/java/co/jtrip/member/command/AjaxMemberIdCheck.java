package co.jtrip.member.command;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jtrip.common.Command;
import co.jtrip.member.service.MemberService;
import co.jtrip.member.serviceImpl.MemberServiceImpl;
public class AjaxMemberIdCheck implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e1) {
			e1.printStackTrace();
		}
		MemberService dao = new MemberServiceImpl();
		String id = request.getParameter("id");
		System.out.println("넘어온 id: " + id);
		boolean result = dao.isIdCheck(id); // 검색 결과 얻기
		System.out.println("참인가요?" + result);
		
		String str = "ajax:0"; // 페이지에 돌려줄 값을 담을 변수
			
		if (result) {  // 0은 중복, 1은 새거
			str = "ajax:1";
		} 
		System.out.println(str);
		return str;
	}
}
