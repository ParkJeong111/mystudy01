package kr.co.teamd.mvc.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.teamd.mvc.dto.MatchingboardDTO;

@Repository
public class MatchingBoardDAO implements MatchingBoardInter {
	
	@Autowired
	private SqlSessionTemplate ss;


	@Override
	public List<MatchingboardDTO> optionsearch(HashMap<String, Object> list) {
		return ss.selectList("morepage.optionsearch",list);
	}

	@Override
	public List<MatchingboardDTO> matchpage(int mbnum) {
		return ss.selectList("morepage.matchpage",mbnum);
	}

	@Override
	public List<MatchingboardDTO> countselect(int mbnum) {
		return ss.selectList("morepage.countselect",mbnum);
	}

	@Override
	public void statusadd(HashMap<String, Object> update) {
		ss.update("morepage.statusadd",update);
	}

	@Override
	public int boardmatchcheck(HashMap<String, Object> resultcheck) {
		return ss.selectOne("morepage.boardmatchcheck",resultcheck);
	}






}
