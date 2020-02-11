package kr.co.teamd.mvc.admincontroller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.teamd.mvc.dao.AdminMatchingboardrinterdao;
import kr.co.teamd.mvc.dto.MatchingboardDTO;
import kr.co.teamd.mvc.dto.MatchinglogDTO;

@Controller
public class AdminMatchingController {

	@Autowired
	private AdminMatchingboardrinterdao matchingdao;
	
	@RequestMapping(value= "admin_matching")
	public ModelAndView adminMatching() {
		ModelAndView mav = new ModelAndView();
		List<MatchingboardDTO> dto =  matchingdao.matchingboard();
		List<MatchinglogDTO> logdto = matchingdao.matchinglog();
		mav.addObject("match", dto);
		mav.addObject("matchlog",logdto);
		mav.setViewName("admin/a_matching");
		return mav;
	}
	@RequestMapping(value= "match_delete")
	public String matching_delete(String mbnum) {
		matchingdao.matching_delete(mbnum);
		return "redirect:/admin_matching";
	}
	@RequestMapping(value= "matchlog_delete")
	public String matchlog_delete(String mbnum) {
		matchingdao.matchlog_delete(mbnum);
		return "redirect:/admin_matching";
	}

	
	
	
	


	
}