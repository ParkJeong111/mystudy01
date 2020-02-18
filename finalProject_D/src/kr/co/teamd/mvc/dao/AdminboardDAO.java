package kr.co.teamd.mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.teamd.mvc.dto.BoardDTO;
import kr.co.teamd.mvc.dto.ItemsboardDTO;

@Repository
public class AdminboardDAO implements AdminboardInter {
	
	@Autowired
	private SqlSessionTemplate ss;

	@Override
	public List<BoardDTO> board() {
		return ss.selectList("admin.boardlist");
	}
	@Override
	public void board_delete(String bnum) {
		ss.delete("admin.boarddelete",bnum);
	}
	
	@Override
	public List<ItemsboardDTO> itemsboard() {
		return ss.selectList("admin.itemsboardlist");
	}
	@Override
	public void items_delete(String ibnum) {
		ss.delete("admin.itemsdelete",ibnum);
	}
	


}
