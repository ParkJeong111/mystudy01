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

	// ��ä�� ���� ����

	// ��ä�� ���� ��

	// �Ǽ��� ���� ����
	
	//Admin_1:1���� �Խñ� ����Ʈ
	@RequestMapping("admin_mtmqna")
	public ModelAndView a_mtmqna() {

		ModelAndView mav = new ModelAndView();
		mav.setViewName("admin/a_mtmqna");
		List<QnaDTO> qlist = aqdao.qnalist();
		mav.addObject("qlist", qlist);
		return mav;
	}

	//Admin_1:1���� �Խñۿ� �亯 �ۼ� Update
	@RequestMapping("qnaanswer")
	public String qnaanswer(QnaDTO qdto) {
		aqdao.qnaanswer(qdto);
		return "redirect:admin_mtmqna";
	}
	
	

	// �Ǽ��� ���� ��

	// ������ ���� ����

	// ������ ���� ��

	// �ּ��� ���� ����

	// �ּ��� ���� ��
}
