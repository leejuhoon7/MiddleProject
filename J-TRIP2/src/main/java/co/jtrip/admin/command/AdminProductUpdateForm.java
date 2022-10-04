package co.jtrip.admin.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jtrip.common.Command;
import co.jtrip.product.service.ProductService;
import co.jtrip.product.service.ProductVO;
import co.jtrip.product.serviceIml.ProductServicelmpl;


public class AdminProductUpdateForm implements Command {

   @Override
   public String exec(HttpServletRequest request, HttpServletResponse response) {
      // 수정 폼 이동
      System.out.println("gg");
      ProductService dao = new ProductServicelmpl();
      System.out.println("gg2");
      ProductVO vo = new ProductVO();
      vo.setProductNo(Integer.valueOf(request.getParameter("adminNo")));
      System.out.println("AdminProductUpdateForm : "+request.getParameter("adminNo"));
      vo = dao.productSelect(vo);
      
      System.out.println("admin 수정의 "+vo);
      
      System.out.println("g");
      request.setAttribute("vo", vo);
      System.out.println(vo.getProductDate()+vo.getProductImg()+vo.getProductImgName()+vo.getProductName());
      
      return "admin/adminProductUpdateForm";
   }

}