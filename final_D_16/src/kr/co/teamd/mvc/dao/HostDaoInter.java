package kr.co.teamd.mvc.dao;

import java.util.List;

import kr.co.teamd.mvc.dto.AdminlogDTO;
import kr.co.teamd.mvc.dto.BoardDTO;
import kr.co.teamd.mvc.dto.HostDTO;
import kr.co.teamd.mvc.dto.HostregDTO;

public interface HostDaoInter {
	public List<HostregDTO> hostreglist(); //가맹점 요청 리스트
	public void hostinsert(HostDTO hdto); // 가맹점 등록
	public List<HostDTO> hostalllist(); //가맹점 리스트
	public HostDTO hostinfo(String hname);//해당 가맹점 정보 info 
	public void hostdelete(HostDTO hdto); //가맹점 삭제 (Post로 보낼거)

	
	
	public List<AdminlogDTO> adminloglist();
	
	
}
