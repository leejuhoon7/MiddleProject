package co.jtrip.mybatis.mapper;

import java.util.List;

import co.jtrip.product.service.ProductVO;


public interface ProductMapper {
	List<ProductVO> productSelectList(); //데이터 전체보기
	ProductVO productSelect(ProductVO vo);  //데이터 가져오기
	int productInsert(ProductVO vo);  //데이터 추가
	int productUpdate(ProductVO vo);  //데이터 수정
	int productDelete(ProductVO vo);  //데이터 삭제

}
