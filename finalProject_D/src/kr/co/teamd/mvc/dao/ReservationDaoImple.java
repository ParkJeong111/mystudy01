package kr.co.teamd.mvc.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.teamd.mvc.dto.ReservationDTO;

@Repository
public class ReservationDaoImple implements ReservationDaoInter {

	@Autowired
	private SqlSessionTemplate ss;
	
	@Override
	public void ReservationInsert(ReservationDTO rdto) {
		ss.insert("reserve.addreserve", rdto);
	}

}
