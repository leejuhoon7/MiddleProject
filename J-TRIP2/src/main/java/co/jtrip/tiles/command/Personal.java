package co.jtrip.tiles.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jtrip.common.Command;

public class Personal implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 1:1 문의
		return "customCenter/personal";
	}

}
