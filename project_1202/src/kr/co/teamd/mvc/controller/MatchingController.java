package kr.co.teamd.mvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.teamd.mvc.dao.Matchinginterdao;
import kr.co.teamd.mvc.dto.MatchingboardDTO;

@Controller
public class MatchingController {
	
	@Autowired
	private Matchinginterdao matchingdao;

	@RequestMapping(value= "matching")  //함께자바 
	public ModelAndView matching() {
		ModelAndView mav = new ModelAndView();
		List<MatchingboardDTO> dto =  matchingdao.matchinglist();
		mav.addObject("matchlist",dto);
		for(MatchingboardDTO e : dto) {
			System.out.println(e.getMbimage());
			System.out.println(e.getMbnum());
		}
		mav.setViewName("matching");
		return mav;
	}
	

	
}
