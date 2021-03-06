package kr.co.teamd.mvc.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.teamd.mvc.dao.HostInter;
import kr.co.teamd.mvc.dao.MainDAO;
import kr.co.teamd.mvc.dto.HostDTO;
import kr.co.teamd.mvc.dto.HostgoodsDTO;
import kr.co.teamd.mvc.dto.HostlistDTO;

@Controller
public class itemslistController {

	@Autowired
	private HostInter hostdao;
	
	@Autowired
	private MainDAO mainsearch;
	
	// 업체 리스트
	// 송용화, 주성중
	@RequestMapping(value= "itemslist")
	public ModelAndView hostlist(int type) {
		ModelAndView mav = new ModelAndView();
		List<HostlistDTO> dto =  hostdao.hostlist(type);
		mav.addObject("hostlist",dto);
		mav.addObject("type", type);
		mav.setViewName("itemslist");
		return mav;
	}
	
	// 업체 상세페이지
	// 송용화
	@GetMapping(value = "itemdetail")
	public ModelAndView hostDetail(int hnum, String hname, HttpSession session) {
		ModelAndView mav = new ModelAndView("itemdetail");
		HostDTO hdto = hostdao.hostDetail(hnum);
		List<HostgoodsDTO> hgdtoList = hdto.getHgdto();
		// DB에 있던 정보를 , 기준으로 나눠서 배열로 저장
		String[] hspeciesList = hdto.getHspecies().trim().split(",");
		String[] hserviceList = hdto.getHservice().trim().split(",");
		mav.addObject("host", hdto); // 업체 정보
		mav.addObject("hglist", hgdtoList); // 이용권 정보
		mav.addObject("hspeciesList", hspeciesList); // 어종 정보
		mav.addObject("hserviceList", hserviceList); // 서비스 정보
		return mav;
	}
	
	//검색 후 업체 리스트
	//권세진
	@GetMapping(value = "mainsearchlist")
	public ModelAndView mainsearchlist(String hname) {
		ModelAndView mav = new ModelAndView();
		mainsearch.searchlogInsert(hname);
		List<HostlistDTO> mainsearchlist = mainsearch.mainsearchlist(hname);
		mav.addObject("mainsearchlist", mainsearchlist);
		mav.setViewName("mainsearchlist");
		return mav;
	}
}