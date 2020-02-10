package kr.co.teamd.mvc.admincontroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {

	
	
	@RequestMapping(value= "admin") //admin Home
	public String adminMethod() {
		return "admin/a_home";
	}
	
	@RequestMapping(value= "admin_dashboard") //이용통계 현황
	public String adminDashboard() {
		return "admin/a_dashboard";
	}
	
	@RequestMapping(value= "admin_member") //회원 관리
	public String adminMembser() {
		return "admin/a_member";
	}
	
	
	@RequestMapping(value= "admin_scheduler") //관리자 스케쥴러
	public String adminScheduler() {
		return "admin/a_scheduler";
	}
	
	
	@RequestMapping(value= "admin_host") //가맹점 관리
	public String adminHost() {
		return "admin/a_host";
	}
	
	@RequestMapping(value= "admin_reservation") //예약관리
	public String adminReservation() {
		return "admin/a_reservation";
	}
	
	@RequestMapping(value= "admin_sales") //매출통계 현황
	public String adminSales() {
		return "admin/a_sales";
	}
	
	@RequestMapping(value= "admin_settings") //관리자 설정
	public String adminSettings() {
		return "admin/a_settings";
	}
	@RequestMapping(value= "admin_board") //게시판 관리
	public String adminBoard() {
		return "admin/a_board";
	}
	@RequestMapping(value= "admin_adminlogboard") //관리자 작업 내역
	public String adminAdminlogBoard() {
		return "admin/a_adminlogboard";
	}
	@RequestMapping(value= "admin_hostapply") //가맹점  요청 관리
	public String adminHostApply() {
		return "admin/a_hostapply";
	}
	
	@RequestMapping(value= "admin_mtmqna") //1:1문의 관리
	public String adminMtmQna() {
		return "admin/a_mtmqna";
	}
	
	@RequestMapping(value="admin_matching") //매칭시스템 관리
	public String adminMatching() {
		return "admin/a_matching";
	}
	
	//김채은 영역 시작
	
	
	
	//김채은 영역 끝
	

	//권세진 영역 시작
	
	
	
	//권세진 영역 끝

	//박정연 영역 시작
	
	
	
	//박정연 영역 끝

	//주성중 영역 시작
	
	
	
	//주성중 영역 끝

	
}