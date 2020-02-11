package kr.co.teamd.mvc.dao;

import java.util.List;

import kr.co.teamd.mvc.dto.MemberDTO;

public interface AdminMemberInter {
	public List<MemberDTO> memberlist();
	public void memberUpdate(int mnum);
}
