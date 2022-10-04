package co.jtrip.reservation.service;

public interface ReservationService {
	
	ReservationVO reservationSelect(ReservationVO vo);
	int reservationInsert(ReservationVO vo);
	
	
}
