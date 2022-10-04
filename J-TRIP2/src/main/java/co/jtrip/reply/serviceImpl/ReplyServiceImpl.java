package co.jtrip.reply.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.jtrip.common.DataSource;
import co.jtrip.mybatis.mapper.ReplyMapper;
import co.jtrip.reply.service.ReplyService;
import co.jtrip.reply.service.ReplyVO;

public class ReplyServiceImpl implements ReplyService{
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private ReplyMapper map = sqlSession.getMapper(ReplyMapper.class);
	

	@Override
	public ReplyVO replySelect(ReplyVO vo) {
		// TODO Auto-generated method stub
		return map.replySelect(vo);
	}
	@Override
	public int replyInsert(ReplyVO vo) {
		// TODO Auto-generated method stub
		return map.replyInsert(vo);
	}

	@Override
	public int replyDelete(ReplyVO vo) {
		// TODO Auto-generated method stub
		return map.replyDelete(vo);
	}
	@Override
	public List<ReplyVO> replySelectList(ReplyVO vo) {
		// TODO Auto-generated method stub
		return map.replySelectList(vo);
	}
	@Override
	public int qnaDelete(ReplyVO vo) {
		// TODO Auto-generated method stub
		return map.qnaDelete(vo);
	}

	



	
	
}
