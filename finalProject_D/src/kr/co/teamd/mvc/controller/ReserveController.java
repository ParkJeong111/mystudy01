package kr.co.teamd.mvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.teamd.mvc.dao.ReservationDaoInter;
import kr.co.teamd.mvc.dao.hostinterdao;
import kr.co.teamd.mvc.dto.HostDTO;
import kr.co.teamd.mvc.dto.HostgoodsDTO;
import kr.co.teamd.mvc.dto.MemberDTO;
import kr.co.teamd.mvc.dto.ReservationDTO;

@Controller
public class ReserveController {

	@Autowired
	private hostinterdao hostdao;
	@Autowired
	private ReservationDaoInter reservationdao;
	
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
	public ModelAndView reserveInsert(HttpServletRequest request, int hnum, ReservationDTO rdto) {
		ModelAndView mav = new ModelAndView("redirect:itemdetail?hnum=" + hnum);
		HttpSession session = request.getSession();
		MemberDTO member = (MemberDTO) session.getAttribute("m");
		rdto.setMid(member.getMid());
		reservationdao.ReservationInsert(rdto);
		return mav;
	}
}
