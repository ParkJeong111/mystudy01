package kr.co.teamd.mvc.dao;

import java.util.List;

import kr.co.teamd.mvc.dto.MemberDTO;
import kr.co.teamd.mvc.dto.ReservationDTO;

public interface MemberInter {
	
	public List<ReservationDTO> myReservation(String mid);
	public MemberDTO myInfo(String mid);
	public void myUpdate(MemberDTO mid);
	public int pwdCheck(MemberDTO mdto);
	public MemberDTO idCheck(MemberDTO mdto);

}
