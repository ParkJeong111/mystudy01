package kr.co.teamd.mvc.dao;

import java.util.HashMap;
import java.util.List;

import kr.co.teamd.mvc.dto.MemberDTO;
import kr.co.teamd.mvc.dto.ReservationDTO;

public interface MemberInter {
	
	public List<ReservationDTO> myReservation(HashMap<Object, Object> map); //���� ���� ����Ȯ��
	public MemberDTO myInfo(String mid); //���� ���� Ȯ��
	public void myUpdate(MemberDTO mid); //���� ���� ����
	public int pwdCheck(MemberDTO mdto); //���� ������ ������ ��й�ȣ üũ 
	public MemberDTO idCheck(MemberDTO mdto); //�α��� �� ���̵�, ��й�ȣ üũ
	public void addMember(MemberDTO mdto);  // ȸ�� ���� (���)
	public int idChk(String id);  // ȸ������(���̵� �ߺ�Ȯ��)
}
