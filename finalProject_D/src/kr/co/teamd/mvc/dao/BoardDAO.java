package kr.co.teamd.mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import kr.co.teamd.mvc.dto.BoardDTO;
import kr.co.teamd.mvc.dto.BoardListAjaxDTO;
import kr.co.teamd.mvc.dto.ChkBTypeDTO;
import kr.co.teamd.mvc.dto.ItemsboardDTO;
import kr.co.teamd.mvc.dto.ReservationDTO;
import kr.co.teamd.mvc.dto.MatchingboardDTO;

@Repository
public class BoardDAO implements BoardInter{

	@Autowired
	private SqlSessionTemplate ss;
	
	@Override   // ��� 		-- �Խñ� �ۼ� --
	public void myboardAdd(BoardDTO bdto) {
		ss.insert("talk.addboard", bdto);     // talk = mapper allias/�̸��� , addboard�� mapper id�����°�
	}
	
	@Override
	public List<BoardListAjaxDTO> boardAlllist() {
		return ss.selectList("talk.boardAlllist");
	}

	@Override
	public List<BoardListAjaxDTO> boardAjax(int check) {
		return ss.selectList("talk.boardAjax", check);
	}

	@Override
	public List<ItemsboardDTO> itemsboardAjax(int check) {
		return ss.selectList("talk.itemsboard", check);
	}
	
	@Override
	public BoardListAjaxDTO boardInfo(int bnum) {
		return ss.selectOne("talk.boardInfo", bnum);
	}

	@Override
	public ItemsboardDTO itemsboardinfo(int ibnum) {
		
		return ss.selectOne("talk.itemsboardinfo", ibnum);
	}
	
	//�ϹݰԽñ� �Ű��ϱ�(�߰����� ����)
	@Override
	public void reportInsert(int bnum) {
		ss.update("talk.reportInsert", bnum);
	}
	
	//�߰����ͰԽñ� �Ű��ϱ�
	@Override
	public void itemsReportInsert(int ibnum) {
		ss.update("talk.itemsReportInsert", ibnum);
		
	}

	@Override  // ���          -- �߰� �Խ��� �� �ۼ� --
	public void itemboardAdd(ItemsboardDTO itbdto) {
		ss.insert("talk.additboard", itbdto);
	}

	@Override
	public List<String> btype2select(ChkBTypeDTO chkbdto) {
		return ss.selectList("talk.chkhname", chkbdto);
	}

	@Override
	public List<MatchingboardDTO> androidBData(MatchingboardDTO mbdto) {
		return ss.selectList("talk.androidBData", mbdto);
	}

	@Override
	public List<ReservationDTO> recommendlist() {
		return ss.selectList("talk.recommendlist");
	}
	/*@Override  // ���         -- �ȵ� �Խñ� ������ --
	public List<BoardDTO> androidBoardData(BoardDTO bdto) {
		return ss.selectList("talk.androidBoardData", bdto);
	}*/

	@Override
	public BoardDTO androidBoardData(BoardDTO bdtodata) {
		// TODO Auto-generated method stub
		return null;
	}


}
