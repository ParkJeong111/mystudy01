package kr.co.teamd.mvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.teamd.mvc.dao.MatchingBoardInter;
import kr.co.teamd.mvc.dao.MatchingInter;
import kr.co.teamd.mvc.dto.MatchingboardDTO;

@Controller
public class MatchingController {
	
	
	@Autowired
	private MatchingInter matchingdao;
	
	@Autowired MatchingBoardInter matchingboarddao;

	@RequestMapping(value= "matching")  //함께자바 
	public ModelAndView matching() {
		ModelAndView mav = new ModelAndView();
		List<MatchingboardDTO> dto =  matchingdao.matchinglist();
		mav.addObject("matchlist",dto);
		for(MatchingboardDTO e : dto) {
			System.out.println("함께자바 리스트 띄울때 나온다"+e.getMbnum());
		}
		mav.setViewName("matching");
		return mav;
	}
	@RequestMapping(value= "matchpage")  //함께자바 
	public ModelAndView matchpage(int mbnum) {
		System.out.println("보드넘버 나와라"+mbnum);
		ModelAndView mav = new ModelAndView();
		List<MatchingboardDTO> dto = matchingboarddao.matchpage(mbnum);
		mav.addObject("matchpage",dto);
		mav.setViewName("matchingdetail");
		return mav;
	}
	
	@RequestMapping(value= "matchadd")  //함께자바 
	public ModelAndView matchadd(int mbnum) {
		ModelAndView mav = new ModelAndView();
		List<MatchingboardDTO> dto = matchingboarddao.countselect(mbnum);
		return mav;
	}
	
	
	
	
	
	
	
	

	
}
