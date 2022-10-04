package co.jtrip.mybatis.mapper;

import java.util.List;

import co.jtrip.reply.service.ReplyVO;

public interface ReplyMapper {
	List<ReplyVO> replySelectList(ReplyVO vo);
	ReplyVO replySelect(ReplyVO vo);
	int replyInsert(ReplyVO vo);
	int replyDelete(ReplyVO vo);
	int qnaDelete(ReplyVO vo);
}
