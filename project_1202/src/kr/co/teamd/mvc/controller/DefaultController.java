package kr.co.teamd.mvc.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.teamd.mvc.dao.MainInter;
import kr.co.teamd.mvc.dto.BoardDTO;
import kr.co.teamd.mvc.dto.HostDTO;


@Controller
public class DefaultController {

	@Autowired
	private MainInter maindao;
	
	
	@RequestMapping(value= {"/","index"})
	public ModelAndView defaultMethod() {
		System.out.println("YONG TEST");
		ModelAndView mav = new ModelAndView();
		List<BoardDTO> sealist = maindao.reviewsList("¹Ù´Ù");
		mav.addObject("sealist", sealist);
		List<BoardDTO> freshlist = maindao.reviewsList("¹Î¹°");
		mav.addObject("freshlist", freshlist);
		Map<Object, Object> res = maindao.mainRes();		
		mav.addObject("res",res.get(null));
		Map<Object, Object> res1 = (Map<Object, Object>) res.get(null);		
		mav.addObject("member",res1.get("MEMBER"));
		mav.addObject("host",res1.get("HOST"));
		mav.addObject("reservation",res1.get("RESERVATION"));
		mav.addObject("board",res1.get("BOARD"));
		mav.setViewName("index");
		List<HostDTO> hdto = maindao.mainRec();
		mav.addObject("hdto",hdto);
		
		return mav;
	}
	
	
	
	
	}
	
	
	
	
	
	
