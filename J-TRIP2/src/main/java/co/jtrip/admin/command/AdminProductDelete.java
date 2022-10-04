package co.jtrip.admin.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jtrip.common.Command;
import co.jtrip.product.service.ProductService;
import co.jtrip.product.service.ProductVO;
import co.jtrip.product.serviceIml.ProductServicelmpl;

public class AdminProductDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 상품 삭제
		ProductService dao = new ProductServicelmpl();
		ProductVO vo = new ProductVO();
		vo.setProductNo(Integer.valueOf(request.getParameter("adminNo")));
		System.out.println("admin delete : " + request.getParameter("adminNo"));
		int n = dao.productDelete(vo);
		String viewPage = "product/productError";
		if(n != 0) {
			viewPage = "adminProductSelectList.do";
		}else {
			request.setAttribute("message", "삭제가 실패하였습니다.");
		}
		return viewPage;
	}

}
