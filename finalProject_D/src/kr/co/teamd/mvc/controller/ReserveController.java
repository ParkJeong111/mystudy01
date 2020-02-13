package kr.co.teamd.mvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.teamd.mvc.dao.ReservationDaoImple;
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
	
	@RequestMapping(value = "reserve")
	public ModelAndView reserveView(int hnum, int hgnum) {
		ModelAndView mav = new ModelAndView("reserve");
		HostDTO hdto = hostdao.hostDetail(hnum);
		HostgoodsDTO hgdto = hostdao.hostgoodsDetail(hgnum);
		mav.addObject("host", hdto);
		mav.addObject("hostgoods", hgdto);
		return mav;
	}
	
	@RequestMapping(value = "resInsert")
	public ModelAndView reserveInsert(HttpServletRequest request, int hnum, ReservationDTO rdto) {
		ModelAndView mav = new ModelAndView("redirect:itemdetail?hnum=" + hnum);
		HttpSession session = request.getSession();
		MemberDTO member = (MemberDTO) session.getAttribute("m");
		rdto.setMid(member.getMid());
		System.out.println("mid : " + rdto.getMid());
		System.out.println("hname : " + rdto.getHname());
		System.out.println("hgnum : " + rdto.getHgnum());
		System.out.println("rmoney : " + rdto.getRmoney());
		System.out.println("rstar : " + rdto.getRstar());
		System.out.println("userdate : " + rdto.getUsedate());
		System.out.println("rdate : " + rdto.getRdate());
		reservationdao.ReservationInsert(rdto);
		return mav;
	}
}
