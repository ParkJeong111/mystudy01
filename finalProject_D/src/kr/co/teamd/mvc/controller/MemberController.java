package kr.co.teamd.mvc.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.teamd.mvc.dao.MemberInter;
import kr.co.teamd.mvc.dto.MemberDTO;
import kr.co.teamd.mvc.dto.ReservationDTO;

@Controller
public class MemberController {
	@Autowired
	private MemberInter mdao;
	
	@RequestMapping(value= "login") //�α���
	public String login() {
		return "member/login";
	}
	@RequestMapping(value= "passwordfind") //��й�ȣ ã��
	public String passwordfind() {
		return "member/passwordfind";
	}

	@RequestMapping(value= "addmember")  //ȸ������
	public String addmember() {
		return "member/addmember";
	}
	
	
	
	
	
	@RequestMapping(value= "my_coupon") //���� ����
	public String coupon() {
		return "member/my_coupon";
	}
	
	@RequestMapping(value= "my_board") //���۾���
	public String board() {
		return "member/my_board";
	}
	
	
	
	
	
	
	
	//��ä�� ���� ����
	
	
	
		//��ä�� ���� ��
		

		//�Ǽ��� ���� ����
		
		
		
		//�Ǽ��� ���� ��

		//������ ���� ����
	@RequestMapping(value= "my_reservation")  //���೻��
	public ModelAndView reservation(HttpSession session, HttpServletResponse resp) {
		ModelAndView mav = new ModelAndView();
		//String mid = (String) session.getAttribute("mid");
		String mid = "juju";
		List<ReservationDTO> reservationlist = mdao.myReservation(mid);
		mav.addObject("rlist", reservationlist);
		mav.setViewName("member/my_reservation");
		return mav;
	}
		
	@RequestMapping(value= "my_myinfo")  //��������
	public ModelAndView myInfo(HttpSession session, HttpServletResponse resp) {
		ModelAndView mav = new ModelAndView();
		String mid = (String) session.getAttribute("mid");
		//String mid = "juju";
		MemberDTO my = mdao.myInfo(mid);
		mav.addObject("my",my);
		mav.setViewName("member/my_myinfo");
		return mav;
	}
	
	@RequestMapping(value= "my_myupdate")  //��������
	public String myUpdate(HttpSession session, HttpServletResponse resp, MemberDTO mdto, HttpServletRequest req) {
		
		mdto.setMid("juju");
		mdao.myUpdate(mdto);
		return "redirect:my_myinfo";
	}

	@RequestMapping(value= "my_passwordcheck") //��й�ȣ üũ
	public String myPasswordCheck() {
		return "member/my_passwordcheck";
	}
	
	@RequestMapping("pwdchk")
	public ModelAndView pwdchangechk(MemberDTO mdto, HttpServletResponse resp, HttpSession session) {
		String mid = (String) session.getAttribute("mid");
		mdto.setMid(mid);
		System.out.println(mdto.getMid());
		ModelAndView mav = new ModelAndView();
		int cnt = mdao.pwdCheck(mdto);
		System.out.println(cnt);
		if(cnt > 0) {
			session.setAttribute("mid",mdto.getMid());
			mav.setViewName("redirect:my_myinfo");
			mav.addObject("mdto", mdto);
			return mav;
		}else {
			PrintWriter out;
			try {
				out = resp.getWriter();
				out.println("<script>alert('��й�ȣ�� ��ġ���� �ʽ��ϴ�.');</script>");
				out.flush(); 
				
			} catch (IOException e) {
				e.printStackTrace();
			}
			mav.setViewName("member/my_passwordcheck");
			return mav;
			//return "redirect:my_passwordcheck";
		}
		
	}
	
	
	
	
	@RequestMapping("logincheck")
	public ModelAndView loginfprocess(HttpSession session, HttpServletRequest reqeust, HttpServletResponse resp,
			@RequestHeader("User-Agent") String uagent, MemberDTO mdto) {
		ModelAndView mav = new ModelAndView();
		MemberDTO m = mdao.idCheck(mdto);
		if (m != null) {
			session.setAttribute("mid", m.getMid());
			session.setAttribute("nickname", m.getMnickname());
			String mid = (String) session.getAttribute("mid");
			mav.setViewName("redirect:index");
			
			return mav;
		
		} else {
			PrintWriter out;
			try {
				out = resp.getWriter();
				out.println("<script>alert('���̵�� ��й�ȣ�� �ٽ� Ȯ�����ּ���');</script>");
				out.flush(); 
				
			} catch (IOException e) {
				e.printStackTrace();
			}
			mav.setViewName("member/login");
			return mav;
		}
	}

	@RequestMapping("logout")
	public ModelAndView loginfoutprocess(HttpSession session, HttpServletRequest request) {
		System.out.println("�α׾ƿ�");
		session.removeAttribute("uname");
		session.removeAttribute("mid");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:index");
		return mav;
	}
	
		//������ ���� ��

		//�ּ��� ���� ����
		
		
		
		//�ּ��� ���� ��
}
