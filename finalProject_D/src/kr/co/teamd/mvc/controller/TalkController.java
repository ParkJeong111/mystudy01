package kr.co.teamd.mvc.controller;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.teamd.mvc.dao.BoardDaoImple;
import kr.co.teamd.mvc.dao.BoardDaoInter;
import kr.co.teamd.mvc.dto.BoardDTO;
import kr.co.teamd.mvc.dto.BoardListAjaxDTO;
import kr.co.teamd.mvc.dto.ItemsboardDTO;

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
	
	@RequestMapping(value= "talk_detail2")  //글 상세보기
	public ModelAndView talkDetail2(int ibnum) {
		ModelAndView mav = new ModelAndView("talk/talk_detail2");
		ItemsboardDTO dto = bdao.itemsboardinfo(ibnum);
		mav.addObject("dto", dto);
		return mav;
	}
	
	@RequestMapping(value= "itemsboard")  //중고거래
	public String itemsboard() {
		return "talk/itemsboard";
	}
	
	//---------------------------------재민 영역 시작-------------------------------------------
	//--------------------------- 멤버 내글쓰기 게시글 작성--------------------------------------
	@RequestMapping(value = "my_board", method = RequestMethod.POST) // 내글쓰기 게시글 작성
	public ModelAndView insertmyboard(@ModelAttribute("bdto") BoardDTO bdto, HttpSession session, 
			HttpServletRequest request) {
			bdao.myboardAdd(bdto);
			ModelAndView mav = new ModelAndView();
			mav.setViewName("member/my_board");
		return mav;
	}
	
	
	
	
	//-----------------------------------재민 영역 끝-------------------------------------------
	
	//김채은 영역 시작
	
	
	
		//김채은 영역 끝
		

		//권세진 영역 시작
		
		
		
		//권세진 영역 끝

		//박정연 영역 시작
		
		
		
		//박정연 영역 끝

		//주성중 영역 시작
		
		
		
		//주성중 영역 끝
	
}
