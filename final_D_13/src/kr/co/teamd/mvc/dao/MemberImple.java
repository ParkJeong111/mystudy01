package kr.co.teamd.mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.teamd.mvc.dto.MemberDTO;
import kr.co.teamd.mvc.dto.ReservationDTO;
@Repository
public class MemberImple implements MemberInter{
	
	@Autowired
	private SqlSessionTemplate ss;

	@Override
	public List<ReservationDTO> myReservation(String mid) {
		return ss.selectList("member.myreservation",mid);
	}

	@Override
	public MemberDTO myInfo(String mid) {
		return ss.selectOne("member.myinfo", mid);
	}

	@Override
	public void myUpdate(MemberDTO mdto) {
		ss.update("member.myupdate",mdto);
		
	}

	@Override
	public int pwdCheck(MemberDTO mdto) {
		return ss.selectOne("member.pwdcheck", mdto);
	}

	@Override
	public MemberDTO idCheck(MemberDTO mdto) {
		return ss.selectOne("member.idcheck",mdto);
	}

}
