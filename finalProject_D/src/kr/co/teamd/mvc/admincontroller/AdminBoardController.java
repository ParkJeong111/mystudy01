package kr.co.teamd.mvc.admincontroller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


import kr.co.teamd.mvc.dao.AdminboardInter;
import kr.co.teamd.mvc.dto.BoardDTO;
import kr.co.teamd.mvc.dto.ItemsboardDTO;

@Controller
public class AdminBoardController {

	@Autowired
	private AdminboardInter boardrdao;
	
	@RequestMapping(value= "admin_board")
	public ModelAndView adminMatching() {
		ModelAndView mav = new ModelAndView();
		List<BoardDTO> dto =  boardrdao.board();
		List<ItemsboardDTO> dto1 = boardrdao.itemsboard();
		System.out.println("여기가1번");
		mav.addObject("itemsboard",dto1);
		System.out.println("여기가2번");
		mav.addObject("board", dto);
		System.out.println("여기가3번");
		mav.setViewName("admin/a_board");
		System.out.println("여기가4번");
		return mav;
	}
	@RequestMapping(value= "board_delete")
	public String board_delete(String bnum) {
		boardrdao.board_delete(bnum);
		return "redirect:/admin_board";
	}
	@RequestMapping(value= "items_delete")
	public String items_delte(String ibnum) {
		boardrdao.items_delete(ibnum);
		return "redirect:/admin_board";
	}
	
	
	
	
	
	


	
}