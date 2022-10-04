package co.jtrip.product.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jtrip.common.Command;
import co.jtrip.product.service.ProductService;
import co.jtrip.product.service.ProductVO;
import co.jtrip.product.serviceIml.ProductServicelmpl;

public class Product implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 상품 리스트 이동, 전체 조회
		ProductService dao = new ProductServicelmpl();
		List<ProductVO> list = new ArrayList<ProductVO>();
		
		list = dao.productSelectList();
		request.setAttribute("list", list);
		return "product/product";
	}

}
