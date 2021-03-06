package kr.co.teamd.mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.teamd.mvc.dto.BoardListAjaxDTO;
import kr.co.teamd.mvc.dto.ItemsboardDTO;

@Repository
public class BoardDaoImple implements BoardDaoInter{
	@Autowired
	private SqlSessionTemplate ss;
	
	@Override
	public List<BoardListAjaxDTO> boardAlllist() {
		return ss.selectList("talk.boardAlllist");
	}
	
	
	@Override
	public BoardListAjaxDTO boardInfo(int bnum) {
		return ss.selectOne("talk.boardInfo", bnum);
	}

	
	@Override
	public List<BoardListAjaxDTO> boardAjax(int check) {
		return ss.selectList("talk.boardAjax", check);
	}


	@Override
	public List<ItemsboardDTO> itemsboardAjax(int check) {
		return ss.selectList("talk.itemsboard", check);
	}






}
