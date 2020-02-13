package kr.co.teamd.mvc.dao;

import java.util.List;
import kr.co.teamd.mvc.dto.BoardDTO;
import kr.co.teamd.mvc.dto.BoardListAjaxDTO;
import kr.co.teamd.mvc.dto.ItemsboardDTO;

public interface BoardDaoInter {
	
	public List<BoardListAjaxDTO> boardAlllist();
	public BoardListAjaxDTO boardInfo(int bnum);
	public List<BoardListAjaxDTO> boardAjax(int check);
	public List<ItemsboardDTO> itemsboardAjax(int check);
	public void myboardAdd(BoardDTO bdto);
}
