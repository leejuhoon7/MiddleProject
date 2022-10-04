package co.jtrip.product.service;

import java.util.List;

public interface ProductService {
	List<ProductVO> productSelectList(); //데이터 전체보기
	ProductVO productSelect(ProductVO vo);  //데이터 가져오기
	int productInsert(ProductVO vo);  //데이터 추가
	int productUpdate(ProductVO vo);  //데이터 수정
	int productDelete(ProductVO vo);  //데이터 삭제
}
