package kr.co.teamd.mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.teamd.mvc.dto.MatchingboardDTO;

@Repository
public class Matchingdao implements Matchinginterdao {
	
	@Autowired
	private SqlSessionTemplate ss;

	@Override
	public List<MatchingboardDTO> matchinglist() {
		return ss.selectList("morepage.matchlist");
	}

	
	


}
