package kr.co.teamd.mvc.controller;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.teamd.mvc.dao.HostInter;
import kr.co.teamd.mvc.dao.ReservationInter;
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

	@Autowired
	private ReservationInter usingpointdto;

	// 결제페이지 이동
	// 송용화
	@RequestMapping(value = "reserve")
	public ModelAndView reserveView(int hnum, int hgnum) {
		ModelAndView mav = new ModelAndView("reserve");
		HostDTO hdto = hostdao.hostDetail(hnum);
		HostgoodsDTO hgdto = hostdao.hostgoodsDetail(hgnum);
		mav.addObject("host", hdto); // 업체 정보
		mav.addObject("hostgoods", hgdto); // 이용권 정보
		return mav;
	}

	// 결제 진행
	// 송용화
	@RequestMapping(value = "resInsert")
	public ModelAndView reserveInsert(HttpServletRequest request, int hnum, String mid, ReservationDTO rdto) {
		usingpointdto.usingpoingInsert(rdto);
		ModelAndView mav = new ModelAndView("redirect:my_reservation"); // 결제 후 예약 내역으로 이동
		BufferedReader br = null;

		// 결제 내역 저장
		try {
			service.reserveInsertmpointUpdate(request, rdto);
		} catch (Exception e) {
			e.printStackTrace();
		}

		// FCM 알림 요청
		try {
			String urlstr = "";
			URL url = new URL(urlstr);
			HttpURLConnection urlconnection = (HttpURLConnection) url.openConnection();
			urlconnection.setRequestMethod("GET");
			br = new BufferedReader(new InputStreamReader(urlconnection.getInputStream(), "UTF-8"));
			String line = br.readLine();
			System.out.println(line);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return mav;
	}
}
