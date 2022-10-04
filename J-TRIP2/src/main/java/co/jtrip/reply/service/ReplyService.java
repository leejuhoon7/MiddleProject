package co.jtrip.reply.service;

import java.util.List;

public interface ReplyService {
	
	List<ReplyVO> replySelectList(ReplyVO vo);
	ReplyVO replySelect(ReplyVO vo);
	int replyInsert(ReplyVO vo);
	int replyDelete(ReplyVO vo);	
	int qnaDelete(ReplyVO vo);
}
