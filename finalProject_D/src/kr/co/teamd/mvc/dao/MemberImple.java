package kr.co.teamd.mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.teamd.mvc.dto.MemberDTO;
import kr.co.teamd.mvc.dto.ReservationDTO;
@Repository
public class MemberImple implements MemberInter{
	
	@Override   // 회원가입 (멤버 추가)
	public void addMember(MemberDTO mdto) {
		ss.insert("member.addmember", mdto);
	}
	
	@Autowired
	private SqlSessionTemplate ss;

	@Override
	public List<ReservationDTO> myReservation(String mid) { //나의 예약 내역확인
		return ss.selectList("member.myreservation",mid);
	}
	
	

	@Override
	public MemberDTO myInfo(String mid) { //나의 정보 확인
		return ss.selectOne("member.myinfo", mid);
	}

	@Override
	public void myUpdate(MemberDTO mdto) { //나의 정보 수정
		ss.update("member.myupdate",mdto);
		
	}
	@Override
	public int pwdCheck(MemberDTO mdto) { //나의 정보로 진입전 비밀번호 체크 
		return ss.selectOne("member.pwdcheck", mdto);
	}

	@Override
	public MemberDTO idCheck(MemberDTO mdto) { //로그인 시 아이디, 비밀번호 체크
		return ss.selectOne("member.idcheck",mdto);
	}

}
