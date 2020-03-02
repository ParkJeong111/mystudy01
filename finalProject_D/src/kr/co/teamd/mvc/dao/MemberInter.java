package kr.co.teamd.mvc.dao;

import java.util.HashMap;
import java.util.List;

//import kr.co.teamd.mvc.dto.ChkBTypeDTO;
import kr.co.teamd.mvc.dto.LoginlogDTO;
import kr.co.teamd.mvc.dto.MemberDTO;
import kr.co.teamd.mvc.dto.PointlogDTO;
import kr.co.teamd.mvc.dto.RecentListDTO;
import kr.co.teamd.mvc.dto.RecenthostDTO;
import kr.co.teamd.mvc.dto.ReservationDTO;

public interface MemberInter {
	
	public List<ReservationDTO> myReservation(HashMap<Object, Object> map); //���� ���� ����Ȯ��
	public MemberDTO myInfo(String mid); //���� ���� Ȯ��
	public void myUpdate(MemberDTO mid); //���� ���� ����
	public int pwdCheck(MemberDTO mdto); //���� ������ ������ ��й�ȣ üũ 
	public MemberDTO idCheck(MemberDTO mdto); //�α��� �� ���̵�, ��й�ȣ üũ
	public void addMember(MemberDTO mdto);  // ȸ�� ���� (���)
	public int idChk(String id);  // ȸ������(���̵� �ߺ�Ȯ��) (���)
	public void loginLogInsert(LoginlogDTO logdto); //�α��� �α�
	public MemberDTO androidLogin(MemberDTO mdto);    // �ȵ� �α��� üũ (���)
	public void gamepointUpdate(MemberDTO dto);// ������ ���� ����Ʈ�� �������ִ� ���
	public void gamepointlogInsert(PointlogDTO dto); // 1�� 1ȸ�� �÷����ϰ� �ϱ� ���� �α� �Է�
	public int gamecheck(String mid); // 1�� 1ȸ üũ�� ���� �Է�
	public List<PointlogDTO> gamepointlogList(String mid); //����Ʈ����
	public List<MemberDTO> androidMyinfo(MemberDTO mdto); // �ȵ� ������ (���)
	public void recentHostInsert(RecenthostDTO rhdto);  // �ֱٺ����� �߰�
	public List<RecentListDTO> recentHostList(String mid);//�ֱٺ����� ����Ʈ
	
}
