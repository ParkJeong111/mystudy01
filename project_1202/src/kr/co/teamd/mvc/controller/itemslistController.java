package kr.co.teamd.mvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.teamd.mvc.dao.hostinterdao;
import kr.co.teamd.mvc.dto.HostlistDTO;

@Controller
public class itemslistController {

	@Autowired
	private hostinterdao hostdao;
	
	@RequestMapping(value= "itemslist")
	public ModelAndView hostlist(int type) {
		ModelAndView mav = new ModelAndView();
		List<HostlistDTO> dto =  hostdao.hostlist(type);
		mav.addObject("hostlist",dto);
		for(HostlistDTO e : dto) {
			System.out.println(e.getHimage());
			System.out.println(e.getHname());
		}
		mav.setViewName("itemslist");
		return mav;
	}
	
	
	
	
	
	
	


	
}