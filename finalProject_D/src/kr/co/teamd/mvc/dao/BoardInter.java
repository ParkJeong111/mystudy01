package kr.co.teamd.mvc.dao;

import java.util.List;
import kr.co.teamd.mvc.dto.BoardDTO;
import kr.co.teamd.mvc.dto.BoardListAjaxDTO;
import kr.co.teamd.mvc.dto.ChkBTypeDTO;
import kr.co.teamd.mvc.dto.ItemsboardDTO;
import kr.co.teamd.mvc.dto.MatchingboardDTO;

public interface BoardInter {
	public List<BoardListAjaxDTO> boardAlllist(); 
	public List<BoardListAjaxDTO> boardAjax(int check); // 글 리스트
	public List<ItemsboardDTO> itemsboardAjax(int check); //중고장터리스트
	public BoardListAjaxDTO boardInfo(int bnum); //글 상세정보
	public ItemsboardDTO itemsboardinfo(int ibnum); //중고장터 상세정보
	public void myboardAdd(BoardDTO bdto);   // 내글쓰기 추가(재민)
	public void itemboardAdd(ItemsboardDTO itbdto);  // 중고 게시글 추가 (재민)
	public List<String> btype2select(ChkBTypeDTO chkbdto); // 게시판 호스트 가게명 
	//public List<BoardDTO> androidBoardData(BoardDTO bdtodata);  // 안드 보드리스트
	public List<MatchingboardDTO> androidBData(MatchingboardDTO mbdto);  // 안드 보드리스트
}
