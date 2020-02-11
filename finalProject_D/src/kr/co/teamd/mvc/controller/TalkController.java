package kr.co.teamd.mvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.teamd.mvc.dao.BoardDaoInter;

import kr.co.teamd.mvc.dto.BoardListAjaxDTO;

@Controller
public class TalkController {
	
	@Autowired
	private BoardDaoInter bdao;
	
	@RequestMapping(value= "talklist")  //게시판리스트
	public ModelAndView boardtalk(int check) {
		ModelAndView mav = new ModelAndView("talk/talklist");
		
		List<BoardListAjaxDTO> list = bdao.boardAjax(check);
		mav.addObject("list", list);
		return mav;
	}
	
	
	
	@RequestMapping(value= "talk_detail")  //글 상세보기
	public ModelAndView talkDetail(int bnum) {
		ModelAndView mav = new ModelAndView("talk/talk_detail");
		BoardListAjaxDTO dto = bdao.boardInfo(bnum);
		mav.addObject("dto", dto);
		return mav;
	}
	
	@RequestMapping(value= "itemsboard")  //중고거래
	public String itemsboard() {
		return "talk/itemsboard";
	}
	
	//김채은 영역 시작
	
	
	
		//김채은 영역 끝
		

		//권세진 영역 시작
		
		
		
		//권세진 영역 끝

		//박정연 영역 시작
		
		
		
		//박정연 영역 끝

		//주성중 영역 시작
		
		
		
		//주성중 영역 끝
	
}
