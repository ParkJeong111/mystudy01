package kr.co.teamd.mvc.dao;

import java.util.List;

import kr.co.teamd.mvc.dto.MemberDTO;
import kr.co.teamd.mvc.dto.ReservationDTO;

public interface MemberInter {
	
	public List<ReservationDTO> myReservation(String mid); //나의 예약 내역확인
	public MemberDTO myInfo(String mid); //나의 정보 확인
	public void myUpdate(MemberDTO mid); //나의 정보 수정
	public int pwdCheck(MemberDTO mdto); //나의 정보로 진입전 비밀번호 체크 
	public MemberDTO idCheck(MemberDTO mdto); //로그인 시 아이디, 비밀번호 체크

}
