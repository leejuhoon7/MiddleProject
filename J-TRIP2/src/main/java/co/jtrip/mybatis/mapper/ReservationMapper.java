package co.jtrip.mybatis.mapper;

import co.jtrip.reservation.service.ReservationVO;

public interface ReservationMapper {
	
	ReservationVO reservationSelect(ReservationVO vo);
	int reservationInsert(ReservationVO vo);
}
