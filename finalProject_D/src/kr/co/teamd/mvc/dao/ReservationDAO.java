package kr.co.teamd.mvc.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.teamd.mvc.dto.ReservationDTO;

@Repository
public class ReservationDAO implements ReservationInter {

	@Autowired
	private SqlSessionTemplate ss;
	
	// 예약내역 저장
	@Override
	public void reservationInsert(ReservationDTO rdto) {
		ss.insert("reserve.addreserve", rdto);
	}

	// 포인트 차감
	@Override
	public void memberPointUpdate(ReservationDTO rdto) {
		ss.update("reserve.updatepoint", rdto);
	}
	
	// 포인트 사용 기록
	@Override
	public void usingpoingInsert(ReservationDTO rdto) {
		ss.insert("reserve.usingpoint", rdto);
	}
}
