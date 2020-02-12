package kr.co.teamd.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.teamd.mvc.dao.hostinterdao;
import kr.co.teamd.mvc.dto.HostDTO;
import kr.co.teamd.mvc.dto.HostgoodsDTO;

@Controller
public class ReserveController {

	@Autowired
	private hostinterdao hostdao;
	
	@RequestMapping(value = "reserve")
	public ModelAndView reserveView(int hnum, int hgnum) {
		ModelAndView mav = new ModelAndView("reserve");
		HostDTO hdto = hostdao.hostDetail(hnum);
		HostgoodsDTO hgdto = hostdao.hostgoodsDetail(hgnum);
		mav.addObject("host", hdto);
		mav.addObject("hostgoods", hgdto);
		return mav;
	}
}
