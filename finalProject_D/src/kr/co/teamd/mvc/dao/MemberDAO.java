package kr.co.teamd.mvc.dao;

import java.util.HashMap;
import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.teamd.mvc.dto.HostlistDTO;
//import kr.co.teamd.mvc.dto.ChkBTypeDTO;
import kr.co.teamd.mvc.dto.LoginlogDTO;
import kr.co.teamd.mvc.dto.MemberDTO;
import kr.co.teamd.mvc.dto.ReservationDTO;
@Repository
public class MemberDAO implements MemberInter{
	
	@Override    // ȸ������ (���̵� �ߺ�Ȯ��)
	public int idChk(String id) {
		return ss.selectOne("member.idchk", id);   // idchk -> member.xml id�ߺ�Ȯ�� ���̵� 
	}
	
	@Override   // ȸ������ (��� �߰�)
	public void addMember(MemberDTO mdto) {
		ss.insert("member.addmember", mdto);
	}
	
	@Autowired
	private SqlSessionTemplate ss;

	@Override
	public List<ReservationDTO> myReservation(HashMap<Object, Object> map) { //���� ���� ����Ȯ��
		return ss.selectList("member.myreservation",map);
	}
	
	@Override
	public MemberDTO myInfo(String mid) { //���� ���� Ȯ��
		return ss.selectOne("member.myinfo", mid);
	}

	@Override
	public void myUpdate(MemberDTO mdto) { //���� ���� ����
		ss.update("member.myupdate",mdto);
		
	}
	@Override
	public int pwdCheck(MemberDTO mdto) { //���� ������ ������ ��й�ȣ üũ 
		return ss.selectOne("member.pwdcheck", mdto);
	}

	@Override
	public MemberDTO idCheck(MemberDTO mdto) { //�α��� �� ���̵�, ��й�ȣ üũ
		return ss.selectOne("member.idcheck",mdto);
	}

	@Override
	public void loginLogInsert(LoginlogDTO logdto) {
		ss.insert("member.memberloginlog", logdto);
		
	}

	@Override
	public MemberDTO androidLogin(String mid, String mpwd) {
		return ss.selectOne(mid, mpwd);
	}

}
