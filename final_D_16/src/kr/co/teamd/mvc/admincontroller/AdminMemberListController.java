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

	//김채은 영역 시작
	
	
	
	//김채은 영역 끝
	

	//권세진 영역 시작
	
	//Admin_회원관리 List 출력
	@RequestMapping("admin_member")
	public ModelAndView a_member() {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("admin/a_member");
		List<MemberDTO> mlist = amdao.memberlist();
		mav.addObject("mlist",mlist);
		return mav;
	}
	
	//Admin_회원 탈퇴 시 Update
	@RequestMapping("memberupdate")
	public String memberUpdate(int mnum) {
		amdao.memberUpdate(mnum);
		return "redirect:admin_member";
	}
	
	
	//권세진 영역 끝

	//박정연 영역 시작
	
	
	
	//박정연 영역 끝

	//주성중 영역 시작
	
	
	
	//주성중 영역 끝

	
}