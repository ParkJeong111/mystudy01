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
	
	
	
	@RequestMapping(value= "login") //로그인
	public String login() {
		return "member/login";
	}
	@RequestMapping(value= "passwordfind") //비밀번호 찾기
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

//  ------------------------------재민 영역 시작---------------------------------------
	@RequestMapping(value= "addmember")  //회원가입 폼      
	public String addmember() {    
		return "member/addmember"; 
	}
	
	@RequestMapping(value= "insertmember")  //회원가입 (멤버 추가)      
	public String insertmember(MemberDTO mdto) {  
		mdao.addMember(mdto);   
		System.out.println(mdto.getMname());
		System.out.println(mdto.getMaddr1());
		return "redirect:login"; 
	}
	
//	@RequestMapping(value = "my_board", method = RequestMethod.POST) // 내글쓰기 게시글 작성
//	public String insertmyboard(BoardDTO bdto) {
//		return "member/my_board";
//	}

	@RequestMapping(value= "my_board") //내글쓰기
	public String board() {
		return "member/my_board";
	}
	
//  ------------------------------재민 영역 끝---------------------------------------
	
	
	
	
	
	@RequestMapping(value= "my_point") //나의 쿠폰
	public String coupon() {
		return "member/my_point";
	}
	

		
	//김채은 영역 시작
	
	
	//김채은 영역 끝
		

		//권세진 영역 시작
		
		
		
		//권세진 영역 끝

		//박정연 영역 시작
	@RequestMapping(value= "my_reservation")  //예약내역
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
		
	@RequestMapping(value= "my_myinfo")  //나의정보
	public ModelAndView myInfo(HttpSession session, HttpServletResponse resp) {
		ModelAndView mav = new ModelAndView();
		String mid = (String) session.getAttribute("mid");
		MemberDTO my = mdao.myInfo(mid);
		mav.addObject("my",my);
		mav.setViewName("member/my_myinfo");		
		return mav;
	}
	
	@RequestMapping(value= "my_myupdate")  //나의정보 수정
	public String myUpdate(HttpSession session, HttpServletResponse resp, MemberDTO mdto, HttpServletRequest req) {
		String mid = (String) session.getAttribute("mid");
		mdto.setMid(mid);
		mdao.myUpdate(mdto);
		return "redirect:my_myinfo";
	}

	@RequestMapping(value= "my_passwordcheck") //비밀번호 체크페이지로 이동
	public String myPasswordCheck(HttpSession session) {
		String mid = (String) session.getAttribute("mid");
		if (mid ==null) {
			return "member/login";
		}else {
		return "member/my_passwordcheck";
		}
	}
	
	@RequestMapping("pwdchk") //비밀번호 체크
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
				out.println("<script>alert('비밀번호가 일치하지 않습니다.');</script>");
				out.flush(); 
				
			} catch (IOException e) {
				e.printStackTrace();
			}
			mav.setViewName("member/my_passwordcheck");
			return mav;
		}
		
	}
	
	
	@RequestMapping("logincheck")  //로그인체크
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
				out.println("<script>alert('아이디와 비밀번호를 다시 확인해주세요');</script>");
				out.flush(); 
			} catch (IOException e) {
				e.printStackTrace();
			}
			mav.setViewName("member/login");
			return mav;
		}
	}

	@RequestMapping("logout")  //로그아웃
	public ModelAndView loginfoutprocess(HttpSession session, HttpServletRequest request) {
		session.removeAttribute("uname");
		session.removeAttribute("mid");
		ModelAndView mav = new ModelAndView();
		System.out.println("로그아웃");
		mav.setViewName("redirect:index");
		return mav;
	}

	
		//박정연 영역 끝

		//주성중 영역 시작
		
		
		
		//주성중 영역 끝
}
