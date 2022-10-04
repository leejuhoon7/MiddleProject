package co.jtrip.reservation.serviceImpl;

import org.apache.ibatis.session.SqlSession;

import co.jtrip.common.DataSource;
import co.jtrip.mybatis.mapper.ReservationMapper;
import co.jtrip.reservation.service.ReservationService;
import co.jtrip.reservation.service.ReservationVO;

public class ReservationServiceImpl implements ReservationService{

	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private ReservationMapper map = sqlSession.getMapper(ReservationMapper.class);
	
	
	@Override
	public ReservationVO reservationSelect(ReservationVO vo) {
		// TODO Auto-generated method stub
		return map.reservationSelect(vo);
	}
	@Override
	public int reservationInsert(ReservationVO vo) {
		// TODO Auto-generated method stub
		return map.reservationInsert(vo);
	}
	
	
}
