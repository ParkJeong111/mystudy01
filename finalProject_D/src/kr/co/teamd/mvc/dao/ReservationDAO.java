package kr.co.teamd.mvc.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.teamd.mvc.dto.ReservationDTO;

@Repository
public class ReservationDAO implements ReservationInter {

	@Autowired
	private SqlSessionTemplate ss;
	
	@Override
	public void reservationInsert(ReservationDTO rdto) {
		ss.insert("reserve.addreserve", rdto);
	}

	@Override
	public void memberPointUpdate(ReservationDTO rdto) {
		ss.update("reserve.updatepoint", rdto);
	}
}
