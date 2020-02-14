package kr.co.teamd.mvc.controller;

import java.io.File;
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
	
	@RequestMapping(value= "itemsboard")  //�߰�ŷ�
	public String itemsboard() {
		return "talk/itemsboard";
	}
	
	//---------------------------------��� ���� ����-------------------------------------------
	//--------------------------- ��� ���۾��� �Խñ� �ۼ�--------------------------------------
	@RequestMapping(value = "my_board", method = RequestMethod.POST) // ���۾��� �Խñ� �ۼ�
	public ModelAndView insertmyboard(@ModelAttribute("bdto") BoardDTO bdto, HttpSession session, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		// �Է� �� ��µǴ��� �׽�Ʈ
		System.out.println(bdto.getBtype1());
		System.out.println(bdto.getBtype2());
		System.out.println(bdto.getHname());
		System.out.println(bdto.getBtitle());
		// �Խñ��ۼ� type1, type2 �÷��� ����
		if (bdto.getBtype1().equals("0")) {
			bdto.setBtype1("���������");
			if(bdto.getBtype2().equals("0")) {
				bdto.setBtype2("�ٴ������");
			} else if(bdto.getBtype2().equals("1")) {
				bdto.setBtype2("�ι������");
			}
		} else if(bdto.getBtype1().equals("1")) {
			bdto.setBtype1("����������");
			bdto.setBtype2("����������");
		} else if(bdto.getBtype1().equals("2")) {
			bdto.setBtype1("����������");
			bdto.setBtype2("����������");
		} else if(bdto.getBtype1().equals("3")) {
			bdto.setBtype1("�����Խ���");
			bdto.setBtype2("�����Խ���");
		} else {
			
		}
		
		// �̹��� ���ε�
		String path = session.getServletContext().getRealPath("/resources/image/");
		StringBuffer paths1 = new StringBuffer();
		paths1.append(path);
		paths1.append(bdto.getBimage());     //.getOriginalFilename()
		File bimage = new File(paths1.toString());
		/*
		 * if() {
		 * 
		 * }
		 */
		
			bdao.myboardAdd(bdto);
			
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
