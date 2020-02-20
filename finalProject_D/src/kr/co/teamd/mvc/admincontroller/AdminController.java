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

	@RequestMapping(value = "admin_dashboard") // �̿���� ��Ȳ
	public String adminDashboard() {
		return "admin/a_dashboard";
	}

	@RequestMapping(value = "admin_scheduler") // ������ �����췯
	public String adminScheduler() {
		return "admin/a_scheduler";
	}

	@RequestMapping(value = "admin_reservation") // �������
	public String adminReservation() {
		return "admin/a_reservation";
	}

	@RequestMapping(value = "admin_sales") // ������� ��Ȳ
	public String adminSales() {
		return "admin/a_sales";
	}

	// ��ä�� ���� ����

	@RequestMapping(value = "admin_hostapply") // ������ ��û ����
	public ModelAndView adminHostApply(HostregDTO hrdto) {
		ModelAndView mav = new ModelAndView("admin/a_hostapply");
		List<HostregDTO> list = hdao.hostreglist();
		mav.addObject("list", list);
		return mav;
	}

	@RequestMapping("hostinsert") // ������ ���

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
		System.out.println("ù��° �湮");
		service.addhostUpdatehrstatus(hdto);

		// hdao.hostinsert(hdto);

		return "redirect:admin_hostapply";
	}

	@RequestMapping(value = "admin_host") // ������ ����
	public ModelAndView adminHost(HostDTO hdto) {
		ModelAndView mav = new ModelAndView("admin/a_host");
		List<HostDTO> list = hdao.hostalllist();
		mav.addObject("list", list);

		return mav;
	}

	@RequestMapping(value = "hostlist") // ������ ����
	public ModelAndView hostlist(HostDTO hdto) {
		ModelAndView mav = new ModelAndView("redirect:admin/a_host");
		List<HostDTO> list = hdao.hostalllist();
		mav.addObject("list", list);

		return mav;
	}

	@RequestMapping(value = "hostdelete") // ������ ������ update(��������ȳ�)
	public String hostdelete(@RequestParam(value="hname") String hname ) throws Exception {
		System.out.println("�������̸� ����" +hname);
		service.hostdeleteAll(hname);
		return "redirect:admin_host";

	}

	@RequestMapping(value = "hostupdate") // ������ ����
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
		System.out.println("��ȣ : "+hdto.getHnum());

		/*
		 * System.out.println("---------������ ����-------------");
		 * System.out.println(hdto.getHname()); System.out.println(hdto.getHceo());
		 * System.out.println(hdto.getHphone()); System.out.println(hdto.getHaddr());
		 * System.out.println(hdto.getHimage()); System.out.println(hdto.getHspecies());
		 * System.out.println("���� : "+hdto.getHnotice());
		 * System.out.println("������Ѹ��� : "+hdto.getHowner());
		 * System.out.println("���ǽü� : "+hdto.getHservice());
		 * System.out.println("�̿�ȳ� : " + hdto.getHguide());
		 * System.out.println("---------------------------");
		 */
		hdao.hostupdate(hdto);
		System.out.println("��������??");
		return "redirect:admin_host";

	}

	@RequestMapping(value = "admin_adminlogboard") // ������ �۾� ����
	public ModelAndView adminAdminlogBoard() {
		ModelAndView mav = new ModelAndView("admin/a_adminlogboard");
		List<AdminlogDTO> list = hdao.adminloglist();
		mav.addObject("list", list);
		return mav;
	}

	// ��ä�� ���� ��

	// �Ǽ��� ���� ����

	// �Ǽ��� ���� ��

	// ������ ���� ����

	// ������ ���� ��

	// �ּ��� ���� ����

	// �ּ��� ���� ��

}