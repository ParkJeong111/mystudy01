package kr.co.teamd.mvc.dao;

import java.util.List;

import kr.co.teamd.mvc.dto.AdminlogDTO;
import kr.co.teamd.mvc.dto.BoardDTO;
import kr.co.teamd.mvc.dto.HostDTO;
import kr.co.teamd.mvc.dto.HostregDTO;

public interface AdminHostInter {
	public List<HostregDTO> hostreglist(); //������ ��û ����Ʈ
	public int hnamechk(String hname);
	public void hostinsert(HostDTO hdto); // ������ ���
	public void updatehrstatus(HostDTO hdto); //������ ��û ����
	public List<HostDTO> hostalllist(); //������ ����Ʈ
	public HostDTO hostinfo(int hnum);//�ش� ������ ���� info
	public void hostupdate(HostDTO hdto); //������ ���� (Post)
	public void hostdelete(String hname); //������ ���� (Get�� ������)
	
	//������ ���� host transaction//
	public void reservationDelete(String hname); //������ ���� (Get�� ������)
	public void hostgoodsDelete(String hname); // ���� (Get�� ������)
	public void boardDelete(String hname); // ���� (Get�� ������)
	public void recenthostDelete(String hname); // ���� (Get�� ������)
	//������ ���� host transaction//
	

	
	
	public List<AdminlogDTO> adminloglist();
	
	
}
