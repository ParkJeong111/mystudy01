package kr.co.teamd.mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.teamd.mvc.dto.MemberDTO;

@Repository
public class AdminMemberDAO implements AdminMemberInter{
	
	@Autowired
	private SqlSessionTemplate ss;

	@Override
	public List<MemberDTO> memberlist() {
		return ss.selectList("admin.memberlist");
	}

	@Override
	public void memberUpdate(int mnum) {		
		ss.update("admin.memberupdate",mnum);
	}
	
}
