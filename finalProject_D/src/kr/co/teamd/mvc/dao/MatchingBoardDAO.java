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




}
