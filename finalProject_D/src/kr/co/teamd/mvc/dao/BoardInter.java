package kr.co.teamd.mvc.dao;

import java.util.List;
import kr.co.teamd.mvc.dto.BoardDTO;
import kr.co.teamd.mvc.dto.BoardListAjaxDTO;
import kr.co.teamd.mvc.dto.ChkBTypeDTO;
import kr.co.teamd.mvc.dto.ItemsboardDTO;

public interface BoardInter {
	public List<BoardListAjaxDTO> boardAlllist(); 
	public List<BoardListAjaxDTO> boardAjax(int check); // �� ����Ʈ
	public List<ItemsboardDTO> itemsboardAjax(int check); //�߰����͸���Ʈ
	public BoardListAjaxDTO boardInfo(int bnum); //�� ������
	public ItemsboardDTO itemsboardinfo(int ibnum); //�߰����� ������
	public void myboardAdd(BoardDTO bdto);   // ���۾��� �߰�(���)
	public void itemboardAdd(ItemsboardDTO itbdto);  // �߰� �Խñ� �߰� (���)
	public List<String> btype2select(ChkBTypeDTO chkbdto); // �Խ��� ȣ��Ʈ ���Ը� 
	public BoardDTO androidBoardData(BoardDTO bdtodata);  // �ȵ� ���帮��Ʈ
}
