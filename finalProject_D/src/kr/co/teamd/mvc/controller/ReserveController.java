package kr.co.teamd.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.teamd.mvc.dao.HostInter;
import kr.co.teamd.mvc.dto.HostDTO;
import kr.co.teamd.mvc.dto.HostgoodsDTO;
import kr.co.teamd.mvc.dto.ReservationDTO;
import kr.co.teamd.mvc.service.ServiceInter;

@Controller
public class ReserveController {

	@Autowired
	private HostInter hostdao;
	
	@Autowired
	private ServiceInter service;

	// 결제페이지 이동
	@RequestMapping(value = "reserve")
	public ModelAndView reserveView(int hnum, int hgnum) {
		ModelAndView mav = new ModelAndView("reserve");
		HostDTO hdto = hostdao.hostDetail(hnum);
		HostgoodsDTO hgdto = hostdao.hostgoodsDetail(hgnum);
		mav.addObject("host", hdto);
		mav.addObject("hostgoods", hgdto);
		return mav;
	}

	// 결제 진행
	@RequestMapping(value = "resInsert")
	public ModelAndView reserveInsert(int hnum, ReservationDTO rdto) {
		ModelAndView mav = new ModelAndView("redirect:itemdetail?hnum=" + hnum);
		try {
			service.reserveInsertmpointUpdate(rdto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mav;
	}
}
