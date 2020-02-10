package kr.co.teamd.mvc.admincontroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {

	
	
	@RequestMapping(value= "admin") //admin Home
	public String adminMethod() {
		return "admin/a_home";
	}
	
	@RequestMapping(value= "admin_dashboard") //�̿���� ��Ȳ
	public String adminDashboard() {
		return "admin/a_dashboard";
	}
	
	@RequestMapping(value= "admin_member") //ȸ�� ����
	public String adminMembser() {
		return "admin/a_member";
	}
	
	
	@RequestMapping(value= "admin_scheduler") //������ �����췯
	public String adminScheduler() {
		return "admin/a_scheduler";
	}
	
	
	@RequestMapping(value= "admin_host") //������ ����
	public String adminHost() {
		return "admin/a_host";
	}
	
	@RequestMapping(value= "admin_reservation") //�������
	public String adminReservation() {
		return "admin/a_reservation";
	}
	
	@RequestMapping(value= "admin_sales") //������� ��Ȳ
	public String adminSales() {
		return "admin/a_sales";
	}
	
	@RequestMapping(value= "admin_settings") //������ ����
	public String adminSettings() {
		return "admin/a_settings";
	}
	@RequestMapping(value= "admin_board") //�Խ��� ����
	public String adminBoard() {
		return "admin/a_board";
	}
	@RequestMapping(value= "admin_adminlogboard") //������ �۾� ����
	public String adminAdminlogBoard() {
		return "admin/a_adminlogboard";
	}
	@RequestMapping(value= "admin_hostapply") //������  ��û ����
	public String adminHostApply() {
		return "admin/a_hostapply";
	}
	
	@RequestMapping(value= "admin_mtmqna") //1:1���� ����
	public String adminMtmQna() {
		return "admin/a_mtmqna";
	}
	
	@RequestMapping(value="admin_matching") //��Ī�ý��� ����
	public String adminMatching() {
		return "admin/a_matching";
	}
	
	//��ä�� ���� ����
	
	
	
	//��ä�� ���� ��
	

	//�Ǽ��� ���� ����
	
	
	
	//�Ǽ��� ���� ��

	//������ ���� ����
	
	
	
	//������ ���� ��

	//�ּ��� ���� ����
	
	
	
	//�ּ��� ���� ��

	
}