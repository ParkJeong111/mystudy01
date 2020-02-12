package kr.co.teamd.mvc.dao;

import java.util.List;

import kr.co.teamd.mvc.dto.BoardDTO;
import kr.co.teamd.mvc.dto.ItemsboardDTO;

public interface Adminboardrinterdao {
	public List<BoardDTO> board();
	public List<ItemsboardDTO> itemsboard();
	//public List<board> matchinglog();
	public void board_delete(String bnum);
	public void items_delete(String ibnum);
	//public void matchlog_delete(String mbnum);
}
