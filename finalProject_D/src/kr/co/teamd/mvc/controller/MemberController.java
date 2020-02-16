package kr.co.teamd.mvc.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


import kr.co.teamd.mvc.dao.MemberInter;
import kr.co.teamd.mvc.dto.BoardDTO;
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
	
	@RequestMapping("kakao")
	public ModelAndView kakao(String mid, HttpSession session, HttpServletRequest reqeust) {
	
		ModelAndView mav = new ModelAndView();
		session.setAttribute("mid", mid);
		mav.setViewName("redirect:index");
		return mav;
	}

//  ------------------------------��� ���� ����---------------------------------------
	@RequestMapping(value= "addmember")  //ȸ������ ��      
	public String addmember() {    
		return "member/addmember"; 
	}
	
	@RequestMapping(value= "insertmember")  //ȸ������ (��� �߰�)      
	public String insertmember(MemberDTO mdto) {  
		mdao.addMember(mdto);   
		System.out.println(mdto.getMname());
		System.out.println(mdto.getMaddr1());
		return "redirect:login"; 
	}
	
//	@RequestMapping(value = "my_board", method = RequestMethod.POST) // ���۾��� �Խñ� �ۼ�
//	public String insertmyboard(BoardDTO bdto) {
//		return "member/my_board";
//	}

	@RequestMapping(value= "my_board") //���۾���
	public String board() {
		return "member/my_board";
	}
	
//  ------------------------------��� ���� ��---------------------------------------
	
	
	
	
	
	@RequestMapping(value= "my_point") //���� ����
	public String coupon() {
		return "member/my_point";
	}
	

		
	//��ä�� ���� ����
	
	
	//��ä�� ���� ��
		

		//�Ǽ��� ���� ����
		
		
		
		//�Ǽ��� ���� ��

		//������ ���� ����
	@RequestMapping(value= "my_reservation")  //���೻��
	public ModelAndView reservation(HttpSession session, HttpServletResponse resp) {
		ModelAndView mav = new ModelAndView();
		String mid = (String) session.getAttribute("mid");
		if (mid ==null) {
			mav.setViewName("member/login");
		}else {
			HashMap<Object, Object> map = new HashMap<Object, Object>();
			map.put("mid", mid);
			map.put("type", 0);
			List<ReservationDTO> reservationlist = mdao.myReservation(map);
			mav.addObject("rlist", reservationlist);
			mav.setViewName("member/my_reservation");	
		}
		return mav;
	}
		
	@RequestMapping(value= "my_myinfo")  //��������
	public ModelAndView myInfo(HttpSession session, HttpServletResponse resp) {
		ModelAndView mav = new ModelAndView();
		String mid = (String) session.getAttribute("mid");
		MemberDTO my = mdao.myInfo(mid);
		mav.addObject("my",my);
		mav.setViewName("member/my_myinfo");		
		return mav;
	}
	
	@RequestMapping(value= "my_myupdate")  //�������� ����
	public String myUpdate(HttpSession session, HttpServletResponse resp, MemberDTO mdto, HttpServletRequest req) {
		String mid = (String) session.getAttribute("mid");
		mdto.setMid(mid);
		mdao.myUpdate(mdto);
		return "redirect:my_myinfo";
	}

	@RequestMapping(value= "my_passwordcheck") //��й�ȣ üũ�������� �̵�
	public String myPasswordCheck(HttpSession session) {
		String mid = (String) session.getAttribute("mid");
		if (mid ==null) {
			return "member/login";
		}else {
		return "member/my_passwordcheck";
		}
	}
	
	@RequestMapping("pwdchk") //��й�ȣ üũ
	public ModelAndView pwdchangechk(MemberDTO mdto, HttpServletResponse resp, HttpSession session) {
		String mid = (String) session.getAttribute("mid");
		mdto.setMid(mid);
		ModelAndView mav = new ModelAndView();
		int cnt = mdao.pwdCheck(mdto);
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
		}
		
	}
	
	
	@RequestMapping("logincheck")  //�α���üũ
	public ModelAndView loginfprocess(HttpSession session, HttpServletRequest reqeust, HttpServletResponse resp,
			@RequestHeader("User-Agent") String uagent, MemberDTO mdto) {
		ModelAndView mav = new ModelAndView();
		MemberDTO m = mdao.idCheck(mdto);
		if (m != null) {
			session.setAttribute("mid", m.getMid());
			session.setAttribute("nickname", m.getMnickname());
			session.setAttribute("m", m);
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

	@RequestMapping("logout")  //�α׾ƿ�
	public ModelAndView loginfoutprocess(HttpSession session, HttpServletRequest request) {
		session.removeAttribute("uname");
		session.removeAttribute("mid");
		ModelAndView mav = new ModelAndView();
		System.out.println("�α׾ƿ�");
		mav.setViewName("redirect:index");
		return mav;
	}

	
		//������ ���� ��

		//�ּ��� ���� ����
		
		
		
		//�ּ��� ���� ��
}
