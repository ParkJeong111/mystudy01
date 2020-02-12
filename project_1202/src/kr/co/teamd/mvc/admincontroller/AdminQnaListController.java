package kr.co.teamd.mvc.admincontroller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.teamd.mvc.dao.AdminQnaDAO;
import kr.co.teamd.mvc.dto.QnaDTO;

@Controller
public class AdminQnaListController {

	@Autowired
	private AdminQnaDAO aqdao;

	// 김채은 영역 시작

	// 김채은 영역 끝

	// 권세진 영역 시작
	
	//Admin_1:1문의 게시글 리스트
	@RequestMapping("admin_mtmqna")
	public ModelAndView a_mtmqna() {

		ModelAndView mav = new ModelAndView();
		mav.setViewName("admin/a_mtmqna");
		List<QnaDTO> qlist = aqdao.qnalist();
		mav.addObject("qlist", qlist);
		return mav;
	}

	//Admin_1:1문의 게시글에 답변 작성 Update
	@RequestMapping("qnaanswer")
	public String qnaanswer(QnaDTO qdto) {
		aqdao.qnaanswer(qdto);
		return "redirect:admin_mtmqna";
	}
	
	

	// 권세진 영역 끝

	// 박정연 영역 시작

	// 박정연 영역 끝

	// 주성중 영역 시작

	// 주성중 영역 끝
}
