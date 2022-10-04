package co.jtrip.mybatis.mapper;

import java.util.List;

import co.jtrip.qna.service.QnaVO;

public interface QnaMapper {
	List<QnaVO> qnaSelectList();	//
	QnaVO qnaSelect(QnaVO vo);
	int qnaInsert(QnaVO vo);
	int qnaUpdate(QnaVO vo);
	int qnaDelete(QnaVO vo);
	
}
