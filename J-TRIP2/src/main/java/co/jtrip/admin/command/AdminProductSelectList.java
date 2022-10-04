package co.jtrip.admin.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jtrip.common.Command;
import co.jtrip.product.service.ProductService;
import co.jtrip.product.service.ProductVO;
import co.jtrip.product.serviceIml.ProductServicelmpl;

public class AdminProductSelectList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 상품 전체 목록 보기
		ProductService dao = new ProductServicelmpl();
		List<ProductVO> list = new ArrayList<ProductVO>();
		
		list = dao.productSelectList();
		request.setAttribute("list", list);
		return "admin/adminProduct";
	}

}
