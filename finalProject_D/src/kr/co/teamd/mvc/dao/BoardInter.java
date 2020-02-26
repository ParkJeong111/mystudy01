package kr.co.teamd.mvc.dao;

import java.util.List;
import kr.co.teamd.mvc.dto.BoardDTO;
import kr.co.teamd.mvc.dto.BoardListAjaxDTO;
import kr.co.teamd.mvc.dto.BoardcommentDTO;
import kr.co.teamd.mvc.dto.ChkBTypeDTO;
import kr.co.teamd.mvc.dto.ItemsboardDTO;

import kr.co.teamd.mvc.dto.ItemscommentDTO;

import kr.co.teamd.mvc.dto.ReservationDTO;

import kr.co.teamd.mvc.dto.MatchingboardDTO;

public interface BoardInter {
	public List<BoardListAjaxDTO> boardAlllist(); 
	public List<BoardListAjaxDTO> boardAjax(int check); // �� ����Ʈ
	public List<ItemsboardDTO> itemsboardAjax(int check); //�߰����͸���Ʈ
	public BoardListAjaxDTO boardInfo(int bnum); //�� ������
	public ItemsboardDTO itemsboardinfo(int ibnum); //�߰����� ������
	public void reportInsert(int bnum); //�Խ��� �Ű��ϱ�
	public void itemsReportInsert(int ibnum);//�߰�Խ��� �Ű��ϱ�
	public void boardCommentInsert(BoardcommentDTO bcdto);//�Խ��� ��� ����
	public void itemsCommentInsert(ItemscommentDTO icdto);// �߰�Խ��� ��� ����
	public List<BoardcommentDTO> boardCommentList(BoardcommentDTO bcdto); //�Խ��� ��۸���Ʈ
	public List<ItemscommentDTO> itemsCommentList(ItemscommentDTO icdto); //�߰�Խ��� ��۸���Ʈ
	public void myboardAdd(BoardDTO bdto);   // ���۾��� �߰�(���)
	public void itemboardAdd(ItemsboardDTO itbdto);  // �߰� �Խñ� �߰� (���)
	public List<String> btype2select(ChkBTypeDTO chkbdto); // �Խ��� ȣ��Ʈ ���Ը� 
	public BoardDTO androidBoardData(BoardDTO bdtodata);  // �ȵ� ���帮��Ʈ
	public List<ReservationDTO> recommendlist(); //��õ��ü����Ʈ
	//public List<BoardDTO> androidBoardData(BoardDTO bdtodata);  // �ȵ� ���帮��Ʈ
	public List<MatchingboardDTO> androidBData(MatchingboardDTO mbdto);  // �ȵ� �Բ��ڹ� ����Ʈ
}
