package co.jtrip.mypage.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jtrip.common.Command;

public class MyPageMain implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {

		return "myPage/myPageMain";
	}

}
