package kr.co.teamd.mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.teamd.mvc.dto.MatchingboardDTO;
import kr.co.teamd.mvc.dto.MatchinglogDTO;

@Repository
public class AdminMatchingboardrdao implements AdminMatchingboardInter {
	
	@Autowired
	private SqlSessionTemplate ss;

	@Override
	public List<MatchingboardDTO> matchingboard() {
		return ss.selectList("admin.matchingboard");
	}

	@Override
	public void matching_delete(String mbnum) {
		ss.delete("admin.matchingdelete",mbnum);
	}

	@Override
	public List<MatchinglogDTO> matchinglog() {
		return ss.selectList("admin.matchinglog");
	}

	@Override
	public void matchlog_delete(String mbnum) {
		ss.delete("admin.matchlogdelete",mbnum);
	}
	


}
