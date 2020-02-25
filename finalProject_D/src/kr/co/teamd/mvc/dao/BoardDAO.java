package kr.co.teamd.mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import kr.co.teamd.mvc.dto.BoardDTO;
import kr.co.teamd.mvc.dto.BoardListAjaxDTO;
import kr.co.teamd.mvc.dto.ChkBTypeDTO;
import kr.co.teamd.mvc.dto.ItemsboardDTO;

@Repository
public class BoardDAO implements BoardInter{

	@Autowired
	private SqlSessionTemplate ss;
	
	@Override   // 재민 		-- 게시글 작성 --
	public void myboardAdd(BoardDTO bdto) {
		ss.insert("talk.addboard", bdto);     // talk = mapper allias/이름명 , addboard는 mapper id가져온거
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
	
	//일반게시글 신고하기(중고장터 제외)
	@Override
	public void reportInsert(int bnum) {
		ss.update("talk.reportInsert", bnum);
	}
	
	//중고장터게시글 신고하기
	@Override
	public void itemsReportInsert(int ibnum) {
		ss.update("talk.itemsReportInsert", ibnum);
		
	}

	@Override  // 재민          -- 중고 게시판 글 작성 --
	public void itemboardAdd(ItemsboardDTO itbdto) {
		ss.insert("talk.additboard", itbdto);
	}

	@Override
	public List<String> btype2select(ChkBTypeDTO chkbdto) {
		return ss.selectList("talk.chkhname", chkbdto);
	}

	@Override  // 재민         -- 안드 게시글 데이터 --
	public BoardDTO androidBoardData(BoardDTO bdto) {
		return ss.selectOne("talk.androidBoardData", bdto);
	}



}
