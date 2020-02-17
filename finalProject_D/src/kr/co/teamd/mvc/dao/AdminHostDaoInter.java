package kr.co.teamd.mvc.dao;

import java.util.List;

import kr.co.teamd.mvc.dto.AdminlogDTO;
import kr.co.teamd.mvc.dto.BoardDTO;
import kr.co.teamd.mvc.dto.HostDTO;
import kr.co.teamd.mvc.dto.HostregDTO;

public interface AdminHostDaoInter {
	public List<HostregDTO> hostreglist(); //������ ��û ����Ʈ
	public int hnamechk(String hname);
	public void hostinsert(HostDTO hdto); // ������ ���
	public void updatehrstatus(HostDTO hdto); //������ ��û ����
	public List<HostDTO> hostalllist(); //������ ����Ʈ
	public HostDTO hostinfo(String hname);//�ش� ������ ���� info
	public void hostupdate(HostDTO hdto); //������ ���� (Post)
	public void hostdelete(HostDTO hdto); //������ ���� (Post�� ������)

	
	
	public List<AdminlogDTO> adminloglist();
	
	
}
