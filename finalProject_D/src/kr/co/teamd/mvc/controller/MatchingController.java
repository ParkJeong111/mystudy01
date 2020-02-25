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

	@RequestMapping(value= "matching")  //�Բ��ڹ� 
	public ModelAndView matching() {
		ModelAndView mav = new ModelAndView();
		List<MatchingboardDTO> dto =  matchingdao.matchinglist();
		mav.addObject("matchlist",dto);
		for(MatchingboardDTO e : dto) {
			System.out.println("�Բ��ڹ� ����Ʈ ��ﶧ ���´�"+e.getMbnum());
		}
		mav.setViewName("matching");
		return mav;
	}
	@RequestMapping(value= "matchpage")  //�Բ��ڹ� 
	public ModelAndView matchpage(int mbnum) {
		System.out.println("����ѹ� ���Ͷ�"+mbnum);
		ModelAndView mav = new ModelAndView();
		List<MatchingboardDTO> dto = matchingboarddao.matchpage(mbnum);
		mav.addObject("matchpage",dto);
		mav.setViewName("matchingdetail");
		return mav;
	}
	
	@RequestMapping(value= "matchadd")  //�Բ��ڹ� 
	public ModelAndView matchadd(int mbnum) {
		ModelAndView mav = new ModelAndView();
		List<MatchingboardDTO> dto = matchingboarddao.countselect(mbnum);
		return mav;
	}
	
	
	
	
	
	
	
	

	
}
