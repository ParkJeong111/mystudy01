package kr.co.teamd.mvc.dao;

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
		System.out.println("random¸ÅÄª insert ¿Ï·á!");
	}




}
