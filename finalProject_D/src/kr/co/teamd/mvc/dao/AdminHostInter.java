package kr.co.teamd.mvc.dao;

import java.util.List;

import kr.co.teamd.mvc.dto.AdminlogDTO;
import kr.co.teamd.mvc.dto.BoardDTO;
import kr.co.teamd.mvc.dto.HostDTO;
import kr.co.teamd.mvc.dto.HostregDTO;

public interface AdminHostInter {
	public List<HostregDTO> hostreglist(); //가맹점 요청 리스트
	public int hnamechk(String hname);
	public void hostinsert(HostDTO hdto); // 가맹점 등록
	public void updatehrstatus(HostDTO hdto); //가맹점 요청 수정
	public List<HostDTO> hostalllist(); //가맹점 리스트
	public HostDTO hostinfo(int hnum);//해당 가맹점 정보 info
	public void hostupdate(HostDTO hdto); //가맹점 수정 (Post)
	public void hostdelete(String hname); //가맹점 삭제 (Get로 보낼거)
	
	//가맹점 삭제 host transaction//
	public void reservationDelete(String hname); //가맹점 삭제 (Get로 보낼거)
	public void hostgoodsDelete(String hname); // 삭제 (Get로 보낼거)
	public void boardDelete(String hname); // 삭제 (Get로 보낼거)
	public void recenthostDelete(String hname); // 삭제 (Get로 보낼거)
	//가맹점 삭제 host transaction//
	

	
	
	public List<AdminlogDTO> adminloglist();
	
	
}
