package kr.co.teamd.mvc.admincontroller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.teamd.mvc.dao.AdminMemberDAO;
import kr.co.teamd.mvc.dto.MemberDTO;

@Controller
public class AdminMemberListController {
	
	@Autowired
	private AdminMemberDAO amdao;

	//��ä�� ���� ����
	
	
	
	//��ä�� ���� ��
	

	//�Ǽ��� ���� ����
	
	//Admin_ȸ������ List ���
	@RequestMapping("admin_member")
	public ModelAndView a_member() {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("admin/a_member");
		List<MemberDTO> mlist = amdao.memberlist();
		mav.addObject("mlist",mlist);
		return mav;
	}
	
	//Admin_ȸ�� Ż�� �� Update
	@RequestMapping("memberupdate")
	public String memberUpdate(int mnum) {
		amdao.memberUpdate(mnum);
		return "redirect:admin_member";
	}
	
	
	//�Ǽ��� ���� ��

	//������ ���� ����
	
	
	
	//������ ���� ��

	//�ּ��� ���� ����
	
	
	
	//�ּ��� ���� ��

	
}