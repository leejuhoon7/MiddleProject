package co.jtrip.product.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jtrip.common.Command;
import co.jtrip.product.service.ProductService;
import co.jtrip.product.service.ProductVO;
import co.jtrip.product.serviceIml.ProductServicelmpl;

public class ProductSelect implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 패키지 상품 상세보기
		System.out.println("상품 번호 no : " + request.getParameter("no"));
		ProductService dao = new ProductServicelmpl();
		ProductVO vo = new ProductVO();
		vo.setProductNo(Integer.valueOf(request.getParameter("no")));
		System.out.println("productSelect의 vo(입력) : " + vo.getProductNo());
		
		vo = dao.productSelect(vo);
		System.out.println("productSelect의 vo(반환) : " + vo);
		
		
		String viewPage="";
		
		if(vo.getProductNo() == 1) {
			viewPage = "product/productGyeongju";
		}if(vo.getProductNo() == 2) {
			viewPage = "product/productBusan";
		}if(vo.getProductNo() == 3) {
			viewPage = "product/productJeju";
		}if(vo != null)
			request.setAttribute("vo", vo);
		return viewPage;
	}

}
