package kr.co.teamd.mvc.dao;

import java.util.HashMap;
import java.util.List;

//import kr.co.teamd.mvc.dto.ChkBTypeDTO;
import kr.co.teamd.mvc.dto.LoginlogDTO;
import kr.co.teamd.mvc.dto.MemberDTO;
import kr.co.teamd.mvc.dto.PointlogDTO;
import kr.co.teamd.mvc.dto.ReservationDTO;

public interface MemberInter {
	
	public List<ReservationDTO> myReservation(HashMap<Object, Object> map); //나의 예약 내역확인
	public MemberDTO myInfo(String mid); //나의 정보 확인
	public void myUpdate(MemberDTO mid); //나의 정보 수정
	public int pwdCheck(MemberDTO mdto); //나의 정보로 진입전 비밀번호 체크 
	public MemberDTO idCheck(MemberDTO mdto); //로그인 시 아이디, 비밀번호 체크
	public void addMember(MemberDTO mdto);  // 회원 가입 (재민)
	public int idChk(String id);  // 회원가입(아이디 중복확인)
	public void loginLogInsert(LoginlogDTO logdto); //로그인 로그
	public MemberDTO androidLogin(String mid, String mpwd);    // 안드 로그인 체크
	public void gamepointUpdate(MemberDTO dto);// 게임을 통해 포인트를 지급해주는 기능
	public void gamepointlogInsert(PointlogDTO dto); // 1일 1회만 플레이하게 하기 위한 로그 입력
	public int gamecheck(String mid); // 1일 1회 체크를 위한 입력
	
}
