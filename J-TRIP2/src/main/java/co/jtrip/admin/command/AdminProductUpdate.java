package co.jtrip.admin.command;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import co.jtrip.common.Command;
import co.jtrip.product.service.ProductService;
import co.jtrip.product.service.ProductVO;
import co.jtrip.product.serviceIml.ProductServicelmpl;

public class AdminProductUpdate implements Command {
   
   private String saveFolder = "C:\\Dev\\workspace\\J-TRIP2\\src\\main\\webapp\\upload"; // 실제 파일이 저장되는 위치
   private String charactSet = "utf-8"; // 한글 깨짐 방지
   private int maxSize = 1024*1024*1024; // 업로드할 파일 최대 사이즈
   
   @Override
   public String exec(HttpServletRequest request, HttpServletResponse response) {
      // 상품 수정
      System.out.println("a");
      ProductService dao = new ProductServicelmpl();
      System.out.println("a2");
      ProductVO vo = new ProductVO();
      System.out.println("a3");
      String viewPage = "product/productError";
      
      String fileName = "";
      String fileRealName = "";
      
      try {
         MultipartRequest multi =
               new MultipartRequest(request, saveFolder, maxSize, charactSet, new DefaultFileRenamePolicy());
      
         fileName = multi.getOriginalFileName("file"); // 실제 파일 이름
         fileRealName = multi.getFilesystemName("file"); // 파일시스템 이름
         
   
         vo.setProductNo(Integer.valueOf(multi.getParameter("adminNo")));
         System.out.println("adminProduct no" + multi.getParameter("productNo"));
         vo.setProductDate(multi.getParameter("productDate"));
         vo.setProductName(multi.getParameter("productName"));
         vo.setProductPrice(Integer.valueOf(multi.getParameter("productPrice")));
         vo.setProductImg(fileName);
         vo.setProductImgName(saveFolder + File.separator + fileRealName);
         
         System.out.println("adminProduct vo : " + vo);
         
         
      } catch (IOException e) {
         e.printStackTrace();
      }
      int n = dao.productUpdate(vo);
      
      System.out.println("adminProduct의 n" + n);
      
      if(n != 0) {
         vo = dao.productSelect(vo);
         request.setAttribute("vo", vo);
         viewPage = "adminProductSelectList.do";
      }else {
         request.setAttribute("message", "게시글 등록이 실패했습니다.");
      }
      return viewPage;
   }

}