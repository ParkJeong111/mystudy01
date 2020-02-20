package kr.co.teamd.mvc.dao;

import kr.co.teamd.mvc.dto.ReservationDTO;

public interface ReservationInter {

	public void reservationInsert(ReservationDTO rdto);
	public void memberPointUpdate(ReservationDTO rdto);
}