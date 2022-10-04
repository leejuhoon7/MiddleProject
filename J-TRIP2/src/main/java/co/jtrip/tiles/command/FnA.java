package co.jtrip.tiles.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jtrip.common.Command;

public class FnA implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// FnA
		return "customCenter/fna";
	}

}
