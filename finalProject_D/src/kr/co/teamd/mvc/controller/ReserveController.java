package kr.co.teamd.mvc.controller;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

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

	// ���������� �̵�
	// �ۿ�ȭ
	@RequestMapping(value = "reserve")
	public ModelAndView reserveView(int hnum, int hgnum) {
		ModelAndView mav = new ModelAndView("reserve");
		HostDTO hdto = hostdao.hostDetail(hnum);
		HostgoodsDTO hgdto = hostdao.hostgoodsDetail(hgnum);
		mav.addObject("host", hdto); // ��ü ����
		mav.addObject("hostgoods", hgdto); // �̿�� ����
		return mav;
	}

	// ���� ����
	// �ۿ�ȭ
	@RequestMapping(value = "resInsert")
	public ModelAndView reserveInsert(HttpServletRequest request, int hnum, String mid, ReservationDTO rdto) {
		usingpointdto.usingpoingInsert(rdto);
		ModelAndView mav = new ModelAndView("redirect:my_reservation"); // ���� �� ���� �������� �̵�
		BufferedReader br = null;
		System.out.println("hname : " + rdto.getHname());
		// ���� ���� ����
		try {
			service.reserveInsertmpointUpdate(request, rdto);
		} catch (Exception e) {
			e.printStackTrace();
		}

		// FCM �˸� ��û
		try {
			String hname = URLEncoder.encode(rdto.getHname(), "UTF-8");
			String urlstr = "http://192.168.0.24:8055/mobile_Office/fcm/" + mid + "/" + hname;
			URL url = new URL(urlstr);
			HttpURLConnection urlconnection = (HttpURLConnection) url.openConnection();
			urlconnection.setRequestMethod("GET");
			br = new BufferedReader(new InputStreamReader(urlconnection.getInputStream(), "UTF-8"));
			String response = br.readLine();
			System.out.println("response : " + response);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return mav;
	}
}
