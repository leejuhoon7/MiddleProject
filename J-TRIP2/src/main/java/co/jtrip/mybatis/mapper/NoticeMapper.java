package co.jtrip.mybatis.mapper;

import java.util.List;

import co.jtrip.notice.service.NoticeVO;

public interface NoticeMapper {

	//공지사항 관련  no1
	List<NoticeVO> noticeSelectList(); 		
	NoticeVO noticeSelect(NoticeVO vo);
	int noticeInsert(NoticeVO vo);		
	int noticeUpdate(NoticeVO vo);
	int noticeDelete(NoticeVO vo); 

	//fna 관련 fn1
	List<NoticeVO> fnaSelectList(); 		
	NoticeVO fnaSelect(NoticeVO vo);
	int fnaInsert(NoticeVO vo);		
	int fnaUpdate(NoticeVO vo);
	int fnaDelete(NoticeVO vo); 

	
}
