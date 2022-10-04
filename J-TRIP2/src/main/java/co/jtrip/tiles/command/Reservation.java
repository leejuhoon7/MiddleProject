package co.jtrip.tiles.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.jtrip.common.Command;
import co.jtrip.product.service.ProductService;
import co.jtrip.product.service.ProductVO;
import co.jtrip.product.serviceIml.ProductServicelmpl;

public class Reservation implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 예약 페이지
		  
	      
	      HttpSession session = request.getSession();  //세션을 불러온다.
	      
	      ProductService dao = new ProductServicelmpl();
	      ProductVO vo = new ProductVO();
	      
	      vo.setProductNo(Integer.valueOf(request.getParameter("no")));
	      vo = dao.productSelect(vo);
	      request.setAttribute("vo", vo);
	      
	      int count = Integer.valueOf(request.getParameter("amount"));
	      request.setAttribute("count", count);
	      

		
		return "product/reservation";
	}

}
