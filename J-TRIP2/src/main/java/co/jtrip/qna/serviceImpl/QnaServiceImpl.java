package co.jtrip.qna.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.jtrip.common.DataSource;
import co.jtrip.mybatis.mapper.NoticeMapper;
import co.jtrip.mybatis.mapper.QnaMapper;
import co.jtrip.qna.service.QnaService;
import co.jtrip.qna.service.QnaVO;

public class QnaServiceImpl implements QnaService{
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private QnaMapper map = sqlSession.getMapper(QnaMapper.class);
	
	
	@Override
	public List<QnaVO> qnaSelectList() {
		// TODO Auto-generated method stub
		return map.qnaSelectList();
	}
	@Override
	public QnaVO qnaSelect(QnaVO vo) {
		// TODO Auto-generated method stub
		return map.qnaSelect(vo);
	}

	@Override
	public int qnaInsert(QnaVO vo) {
		// TODO Auto-generated method stub
		return map.qnaInsert(vo);
	}

	@Override
	public int qnaDelete(QnaVO vo) {
		// TODO Auto-generated method stub
		return map.qnaDelete(vo);
	}
	@Override
	public int qnaUpdate(QnaVO vo) {
		// TODO Auto-generated method stub
		return map.qnaUpdate(vo);
	}

}
