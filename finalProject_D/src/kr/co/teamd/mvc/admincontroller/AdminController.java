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
		service.addhostUpdatehrstatus(hdto);

		// hdao.hostinsert(hdto);

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

	@RequestMapping(value = "hostdelete") // 가맹점 삭제시 update(서비스종료안내)
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
		System.out.println("번호 : "+hdto.getHnum());

		/*
		 * System.out.println("---------가맹점 수정-------------");
		 * System.out.println(hdto.getHname()); System.out.println(hdto.getHceo());
		 * System.out.println(hdto.getHphone()); System.out.println(hdto.getHaddr());
		 * System.out.println(hdto.getHimage()); System.out.println(hdto.getHspecies());
		 * System.out.println("공지 : "+hdto.getHnotice());
		 * System.out.println("사장님한마디 : "+hdto.getHowner());
		 * System.out.println("편의시설 : "+hdto.getHservice());
		 * System.out.println("이용안내 : " + hdto.getHguide());
		 * System.out.println("---------------------------");
		 */
		hdao.hostupdate(hdto);
		System.out.println("들어오나요??");
		return "redirect:admin_host";

	}

	@RequestMapping(value = "admin_adminlogboard") // 관리자 작업 내역
	public ModelAndView adminAdminlogBoard() {
		ModelAndView mav = new ModelAndView("admin/a_adminlogboard");
		List<AdminlogDTO> list = hdao.adminloglist();
		mav.addObject("list", list);
		return mav;
	}

	// 김채은 영역 끝

	// 권세진 영역 시작

	// 권세진 영역 끝

	// 박정연 영역 시작

	// 박정연 영역 끝

	// 주성중 영역 시작

	// 주성중 영역 끝

}