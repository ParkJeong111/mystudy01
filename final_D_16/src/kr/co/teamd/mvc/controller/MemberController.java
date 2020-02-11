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
	
	@RequestMapping(value= "login") //로그인
	public String login() {
		return "member/login";
	}
	@RequestMapping(value= "passwordfind") //비밀번호 찾기
	public String passwordfind() {
		return "member/passwordfind";
	}

	@RequestMapping(value= "addmember")  //회원가입
	public String addmember() {
		return "member/addmember";
	}
	
	
	
	
	
	@RequestMapping(value= "my_coupon") //나의 쿠폰
	public String coupon() {
		return "member/my_coupon";
	}
	
	@RequestMapping(value= "my_board") //내글쓰기
	public String board() {
		return "member/my_board";
	}
	
	
	
	
	
	
	
	//김채은 영역 시작
	
	
	
		//김채은 영역 끝
		

		//권세진 영역 시작
		
		
		
		//권세진 영역 끝

		//박정연 영역 시작
	@RequestMapping(value= "my_reservation")  //예약내역
	public ModelAndView reservation(HttpSession session, HttpServletResponse resp) {
		ModelAndView mav = new ModelAndView();
		//String mid = (String) session.getAttribute("mid");
		String mid = "juju";
		List<ReservationDTO> reservationlist = mdao.myReservation(mid);
		mav.addObject("rlist", reservationlist);
		mav.setViewName("member/my_reservation");
		return mav;
	}
		
	@RequestMapping(value= "my_myinfo")  //나의정보
	public ModelAndView myInfo(HttpSession session, HttpServletResponse resp) {
		ModelAndView mav = new ModelAndView();
		String mid = (String) session.getAttribute("mid");
		//String mid = "juju";
		MemberDTO my = mdao.myInfo(mid);
		mav.addObject("my",my);
		mav.setViewName("member/my_myinfo");
		return mav;
	}
	
	@RequestMapping(value= "my_myupdate")  //나의정보
	public String myUpdate(HttpSession session, HttpServletResponse resp, MemberDTO mdto, HttpServletRequest req) {
		
		mdto.setMid("juju");
		mdao.myUpdate(mdto);
		return "redirect:my_myinfo";
	}

	@RequestMapping(value= "my_passwordcheck") //비밀번호 체크
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
				out.println("<script>alert('비밀번호가 일치하지 않습니다.');</script>");
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
				out.println("<script>alert('아이디와 비밀번호를 다시 확인해주세요');</script>");
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
		System.out.println("로그아웃");
		session.removeAttribute("uname");
		session.removeAttribute("mid");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:index");
		return mav;
	}
	
		//박정연 영역 끝

		//주성중 영역 시작
		
		
		
		//주성중 영역 끝
}
