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
	
	@RequestMapping(value= "talklist")  //�Խ��Ǹ���Ʈ
	public ModelAndView boardtalk(int check) {
		ModelAndView mav = new ModelAndView("talk/talklist");
		
		List<BoardListAjaxDTO> list = bdao.boardAjax(check);
		mav.addObject("list", list);
		return mav;
	}
	
	@RequestMapping(value= "talk_detail")  //�� �󼼺���
	public ModelAndView talkDetail(int bnum) {
		ModelAndView mav = new ModelAndView("talk/talk_detail");
		BoardListAjaxDTO dto = bdao.boardInfo(bnum);
		mav.addObject("dto", dto);
		return mav;
	}
	
	@RequestMapping(value= "talk_detail2")  //�� �󼼺���
	public ModelAndView talkDetail2(int ibnum) {
		ModelAndView mav = new ModelAndView("talk/talk_detail2");
		ItemsboardDTO dto = bdao.itemsboardinfo(ibnum);
		mav.addObject("dto", dto);
		return mav;
	}
	
	@RequestMapping(value= "itemsboard")  //�߰�ŷ�
	public String itemsboard() {
		return "talk/itemsboard";
	}
	
	//---------------------------------��� ���� ����-------------------------------------------
	//--------------------------- ��� ���۾��� �Խñ� �ۼ�--------------------------------------
	@RequestMapping(value = "my_board", method = RequestMethod.POST) // ���۾��� �Խñ� �ۼ�
	public ModelAndView insertmyboard(@ModelAttribute("bdto") BoardDTO bdto, HttpSession session, 
			HttpServletRequest request) {
			bdao.myboardAdd(bdto);
			ModelAndView mav = new ModelAndView();
			mav.setViewName("member/my_board");
		return mav;
	}
	
	
	
	
	//-----------------------------------��� ���� ��-------------------------------------------
	
	//��ä�� ���� ����
	
	
	
		//��ä�� ���� ��
		

		//�Ǽ��� ���� ����
		
		
		
		//�Ǽ��� ���� ��

		//������ ���� ����
		
		
		
		//������ ���� ��

		//�ּ��� ���� ����
		
		
		
		//�ּ��� ���� ��
	
}
