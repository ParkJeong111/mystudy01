package kr.co.teamd.mvc.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.teamd.mvc.dto.RandomMatchingDTO;

@Repository
public class RandomMatchingDAO implements RandomMatchinginter {
	
	@Autowired
	private SqlSessionTemplate ss;

	@Override
	public void randommatchinginsert(RandomMatchingDTO dto) {
		ss.insert("morepage.randominsert", dto);
		System.out.println("random매칭 인원 insert 완료");
	}

	@Override
	public List<RandomMatchingDTO> randomatchinglist() {
		return ss.selectList("morepage.randomlist");
	}

	@Override
	public List<String> idlist(RandomMatchingDTO dto) {
		return ss.selectList("morepage.idlist",dto);
	}

	@Override
	public void updatestatus(HashMap<String, Object> maplist) {
		ss.update("morepage.statusupdate",maplist);
		
	}

	@Override
	public void randomresultinsert(RandomMatchingDTO dto) {
		ss.insert("morepage.resultinsert",dto);
		
	}

	@Override
	public int matchingidcheck(String mid) {
		return ss.selectOne("morepage.matchingidcheck",mid);
	}




}
