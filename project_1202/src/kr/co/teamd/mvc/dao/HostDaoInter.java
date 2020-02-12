package kr.co.teamd.mvc.dao;

import java.util.List;

import kr.co.teamd.mvc.dto.AdminlogDTO;
import kr.co.teamd.mvc.dto.BoardDTO;
import kr.co.teamd.mvc.dto.HostDTO;
import kr.co.teamd.mvc.dto.HostregDTO;

public interface HostDaoInter {
	public List<HostregDTO> hostreglist(); //������ ��û ����Ʈ
	public void hostinsert(HostDTO hdto); // ������ ���
	public List<HostDTO> hostalllist(); //������ ����Ʈ
	public HostDTO hostinfo(String hname);//�ش� ������ ���� info 
	public void hostdelete(HostDTO hdto); //������ ���� (Post�� ������)

	
	
	public List<AdminlogDTO> adminloglist();
	
	
}
