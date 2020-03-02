package kr.co.teamd.mvc.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

//import kr.co.teamd.mvc.dto.ChkBTypeDTO;
import kr.co.teamd.mvc.dto.LoginlogDTO;
import kr.co.teamd.mvc.dto.MemberDTO;
import kr.co.teamd.mvc.dto.PointlogDTO;
import kr.co.teamd.mvc.dto.RecentListDTO;
import kr.co.teamd.mvc.dto.RecenthostDTO;
import kr.co.teamd.mvc.dto.ReservationDTO;
@Repository
public class MemberDAO implements MemberInter{
	
	@Override    // 회원가입 (아이디 중복확인)
	public int idChk(String id) {
		return ss.selectOne("member.idchk", id);   // idchk -> member.xml id중복확인 아이디 
	}
	
	@Override   // 회원가입 (멤버 추가)
	public void addMember(MemberDTO mdto) {
		ss.insert("member.addmember", mdto);
	}
	
	@Autowired
	private SqlSessionTemplate ss;

	@Override
	public List<ReservationDTO> myReservation(HashMap<Object, Object> map) { //나의 예약 내역확인
		return ss.selectList("member.myreservation",map);
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

	@Override
	public void loginLogInsert(LoginlogDTO logdto) {
		ss.insert("member.memberloginlog", logdto);
		
	}

	@Override
	public void gamepointUpdate(MemberDTO dto) {
		ss.insert("member.gamepointUpdate",dto);
	}

	@Override
	public void gamepointlogInsert(PointlogDTO dto) {
		ss.insert("member.gamepointlogInsert",dto);
		
	}

	@Override
	public int gamecheck(String mid) {
		return ss.selectOne("member.gamecheck",mid);
	}
	
	@Override
	public MemberDTO androidLogin(MemberDTO mdto) {   // 안드로이드 로그인 체크 (재민)
		return ss.selectOne("member.androidLoginChk", mdto);
	}

	@Override    // 안드 내정보 (재민)
	public List<MemberDTO> androidMyinfo(MemberDTO mdto) {
		return ss.selectList("member.androidMyinfo", mdto);
	}
	
	@Override
	public void recentHostInsert(RecenthostDTO rhdto) {
		ss.insert("member.recentHostInsert", rhdto);
	}

	@Override
	public List<RecentListDTO> recentHostList(String mid) {
		return ss.selectList("member.recentHostList", mid);
	}

	@Override
	public List<PointlogDTO> gamepointlogList(String mid) {
		return ss.selectList("member.gamepointlogList", mid);
	}

}
