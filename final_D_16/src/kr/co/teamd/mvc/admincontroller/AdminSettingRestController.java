package kr.co.teamd.mvc.admincontroller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kr.co.teamd.mvc.dao.Admininterdao;
import kr.co.teamd.mvc.dto.AdminDTO;

@RestController
public class AdminSettingRestController {
	
	@Autowired
	private Admininterdao Admindao;
	
	@RequestMapping("admininject")
	public AdminDTO admininsert(String aid) {
		ModelAndView mav = new ModelAndView();
		AdminDTO insertdata = Admindao.admininject(aid);
		return insertdata;
	}
	
}
