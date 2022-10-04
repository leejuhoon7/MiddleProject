package co.jtrip.notice.service;

import java.util.List;

public interface NoticeService {

	//공지사항 관련  no1
	List<NoticeVO> noticeSelectList(); 			// 공지사항 목록보기
	NoticeVO noticeSelect(NoticeVO vo);			// 공지사항 하나 보기
	int noticeInsert(NoticeVO vo);				// 공지사항 쓰기
	int noticeUpdate(NoticeVO vo);				// 공지사항 수정하기
	int noticeDelete(NoticeVO vo); 				// 공지사항 삭제하기

	//fna 관련 fn1
	List<NoticeVO> fnaSelectList(); 			
	NoticeVO fnaSelect(NoticeVO vo);


	
	
}
