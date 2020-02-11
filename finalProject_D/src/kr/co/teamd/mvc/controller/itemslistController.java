package kr.co.teamd.mvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.teamd.mvc.dao.hostinterdao;
import kr.co.teamd.mvc.dto.HostDTO;
import kr.co.teamd.mvc.dto.HostgoodsDTO;
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
		mav.setViewName("itemslist");
		return mav;
	}
	
	@GetMapping(value = "itemdetail")
	public ModelAndView hostDetail(int hnum) {
		ModelAndView mav = new ModelAndView("itemdetail");
		HostDTO hdto = hostdao.hostDetail(hnum);
		List<HostgoodsDTO> hgdtoList = hdto.getHgdto();
		String[] hspeciesList = hdto.getHspecies().trim().split(",");
		String[] hserviceList = hdto.getHservice().trim().split(",");
		mav.addObject("host", hdto);
		mav.addObject("hglist", hgdtoList);
		mav.addObject("hspeciesList", hspeciesList);
		mav.addObject("hserviceList", hserviceList);
		System.out.println("test");
		return mav;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
		
}