package kr.co.teamd.mvc.admincontroller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.teamd.mvc.dao.Admininterdao;
import kr.co.teamd.mvc.dto.AdminDTO;

@Controller
public class AdminSettingController {
	
	@Autowired
	private Admininterdao Admindao;
	
	@RequestMapping(value= "admin_settings")
	public ModelAndView adminlist() {
		ModelAndView mav = new ModelAndView();
		List<AdminDTO> dto =  Admindao.Adminlist();
		mav.addObject("adminlist",dto);
		mav.setViewName("admin/a_settings");
		return mav;
	}
	
	@RequestMapping(value = "admin_delete")
	public String adminDelete(String aid) {
		ModelAndView mav = new ModelAndView();
		Admindao.Admin_delete(aid);
		return "redirect:/admin_settings";
	}
	
	@RequestMapping(value = "admin_insert")
	public String admininsert(AdminDTO dto) {
		System.out.println(dto.getAname());
		Admindao.admininsert(dto);
		return "redirect:/admin_settings";
	}
	
	
	
	

}
