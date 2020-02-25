package kr.co.teamd.mvc.admincontroller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.teamd.mvc.dao.AdminHostInter;
import kr.co.teamd.mvc.dto.AdminlogDTO;
import kr.co.teamd.mvc.dto.HostDTO;
import kr.co.teamd.mvc.dto.HostregDTO;
import kr.co.teamd.mvc.service.ServiceInter;

@Controller
public class AdminController {

	@Autowired
	private ServiceInter service;

	@Autowired
	private AdminHostInter hdao;

	@RequestMapping(value = "admin") // admin Home
	public String adminMethod() {
		return "admin/a_home";
	}

	@RequestMapping(value = "admin_dashboard") // 이용통계 현황
	public String adminDashboard() {
		return "admin/a_dashboard";
	}

	@RequestMapping(value = "admin_scheduler") // 관리자 스케쥴러
	public String adminScheduler() {
		return "admin/a_scheduler";
	}

	@RequestMapping(value = "admin_reservation") // 예약관리
	public String adminReservation() {
		return "admin/a_reservation";
	}

	@RequestMapping(value = "admin_sales") // 매출통계 현황
	public String adminSales() {
		return "admin/a_sales";
	}

	// 김채은 영역 시작

	@RequestMapping(value = "admin_hostapply") // 가맹점 요청 관리
	public ModelAndView adminHostApply(HostregDTO hrdto) {
		ModelAndView mav = new ModelAndView("admin/a_hostapply");
		List<HostregDTO> list = hdao.hostreglist();
		mav.addObject("list", list);
		return mav;
	}

	@RequestMapping("hostinsert") // 가맹점 등록

	public String hostinsert(HostregDTO hrdto, HostDTO hdto, HttpServletRequest request) throws Exception {
		String img_path = "resources/admin/images/hostimages/";
		String r_path = request.getRealPath("/");

		String oriFnhimage = hdto.getHfile().getOriginalFilename();
		StringBuffer pathhimage = new StringBuffer();

		pathhimage.append(r_path).append(img_path).append("\\");
		pathhimage.append(oriFnhimage);

		File fimage = new File(pathhimage.toString());
		System.out.println(pathhimage.toString());
		try {
			hdto.getHfile().transferTo(fimage);

		} catch (IllegalStateException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		hdto.setHimage(hdto.getHfile().getOriginalFilename());
		System.out.println("첫번째 방문");
		//
		service.addhostUpdatehrstatus(hdto);


		return "redirect:admin_hostapply";
	}

	@RequestMapping(value = "admin_host") // 가맹점 관리
	public ModelAndView adminHost(HostDTO hdto) {
		ModelAndView mav = new ModelAndView("admin/a_host");
		List<HostDTO> list = hdao.hostalllist();
		mav.addObject("list", list);

		return mav;
	}

	@RequestMapping(value = "hostlist") // 가맹점 관리
	public ModelAndView hostlist(HostDTO hdto) {
		ModelAndView mav = new ModelAndView("redirect:admin/a_host");
		List<HostDTO> list = hdao.hostalllist();
		mav.addObject("list", list);

		return mav;
	}

	@RequestMapping(value = "hostdelete") //
	public String hostdelete(@RequestParam(value="hname") String hname ) throws Exception {
		System.out.println("가맹점이름 삭제" +hname);
		service.hostdeleteAll(hname);
		return "redirect:admin_host";

	}

	@RequestMapping(value = "hostupdate") // 가맹점 수정
	public String hostupdate(HostDTO hdto, HttpServletRequest request) {
		String img_path = "resources/admin/images/hostimages/";
		String r_path = request.getRealPath("/");

		String oriFnhimage = hdto.getHfile().getOriginalFilename();
		StringBuffer pathhimage = new StringBuffer();

		pathhimage.append(r_path).append(img_path).append("\\");
		pathhimage.append(oriFnhimage);

		File fimage = new File(pathhimage.toString());
		System.out.println("fimage : " + fimage.toString());
		try {
			hdto.getHfile().transferTo(fimage);
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		System.out.println("hdto.getHfile() : " + hdto.getHfile().getOriginalFilename());
		hdto.setHimage(hdto.getHfile().getOriginalFilename());
		System.out.println("hdto.sethimage : " + hdto.getHimage());
		if (hdto.getHimage() == null) {
			System.out.println("null");
		} else if (hdto.getHimage().equals("")) {
			System.out.println("equals");
		}

		hdao.hostupdate(hdto);
		return "redirect:admin_host";

	}

	@RequestMapping(value = "admin_adminlogboard") // 관리자 작업 내역
	public ModelAndView adminAdminlogBoard() {
		ModelAndView mav = new ModelAndView("admin/a_adminlogboard");
		List<AdminlogDTO> list = hdao.adminloglist();
		mav.addObject("list", list);
		return mav;
	}


}