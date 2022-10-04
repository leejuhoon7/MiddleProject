package co.jtrip.qna.service;

import java.util.List;

public interface QnaService {
	List<QnaVO> qnaSelectList();	//
	QnaVO qnaSelect(QnaVO vo);
	int qnaInsert(QnaVO vo);
	int qnaDelete(QnaVO vo);
	int qnaUpdate(QnaVO vo);
	
}
