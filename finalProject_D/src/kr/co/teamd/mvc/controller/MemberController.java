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
import org.springframework.web.servlet.ModelAndView;
import kr.co.teamd.mvc.dao.MemberInter;
import kr.co.teamd.mvc.dto.MemberDTO;
import kr.co.teamd.mvc.dto.RecentListDTO;
import kr.co.teamd.mvc.dto.ReservationDTO;

@Controller
public class MemberController {

	@Autowired
	private MemberInter mdao;

	@RequestMapping(value = "login") // 로그인
	public String login() {
		return "member/login";
	}

	@RequestMapping(value = "passwordfind") // 비밀번호 찾기
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
	@RequestMapping(value = "addmember") // 회원가입 폼
	public String addmember() {
		return "member/addmember";
	}

	@RequestMapping(value = "insertmember") // 회원가입 (멤버 추가)
	public String insertmember(MemberDTO mdto) {
		mdao.addMember(mdto);
		return "redirect:login"; // go to login page
	}

	@RequestMapping(value = "my_board") // 내글쓰기
	public ModelAndView board(HttpSession session) { // apply session here
		ModelAndView mav = new ModelAndView();
		String mid = (String) session.getAttribute("mid"); // check mid in session
		if (mid == null) { // if mid = null
			mav.setViewName("member/login"); // go to login page
			session.setAttribute("vn", "redirect:my_board"); // when user login redirect page to my_board
		} else { // if mid is logged in and in session
			mav.setViewName("member/my_board"); // then it goes straight to my_board page
		}
		return mav; // return model and view
	}

//  ------------------------------재민 영역 끝---------------------------------------

	// 박정연 영역 시작
	@RequestMapping(value = "my_reservation") // 예약내역
	public ModelAndView reservation(HttpSession session, HttpServletResponse resp) {
		ModelAndView mav = new ModelAndView();
		String mid = (String) session.getAttribute("mid");
		if (mid == null) {
			mav.setViewName("member/login");
			session.setAttribute("vn", "redirect:my_reservation");
		} else {
			HashMap<Object, Object> map = new HashMap<Object, Object>();
			map.put("mid", mid);
			map.put("type", 0);
			List<ReservationDTO> reservationlist = mdao.myReservation(map);
			mav.addObject("rlist", reservationlist);
			mav.setViewName("member/my_reservation");
		}
		return mav;
	}

	@RequestMapping(value = "my_myinfo") // 나의정보
	public ModelAndView myInfo(HttpSession session, HttpServletResponse resp) {
		ModelAndView mav = new ModelAndView();
		String mid = (String) session.getAttribute("mid");
		MemberDTO my = mdao.myInfo(mid);
		mav.addObject("my", my);
		mav.setViewName("member/my_myinfo");
		return mav;
	}

	@RequestMapping(value = "my_myupdate") // 나의정보 수정
	public String myUpdate(HttpSession session, HttpServletResponse resp, MemberDTO mdto, HttpServletRequest req) {
		String mid = (String) session.getAttribute("mid");
		mdto.setMid(mid);
		mdao.myUpdate(mdto);
		return "member/my_mypage";
	}

	@RequestMapping(value = "my_mypage") // 마이페이지 이동
	public ModelAndView my(HttpSession session) {
		String mid = (String) session.getAttribute("mid");
		ModelAndView mav = new ModelAndView();
		if (mid == null) {
			session.setAttribute("vn", "redirect:my_mypage");
			mav.setViewName("member/login");
			return mav;
		} else {
			List<RecentListDTO> rlist = mdao.recentHostList(mid);
			mav.addObject("rlist", rlist);
			mav.setViewName("member/my_mypage");
			return mav;
		}
	}

	@RequestMapping(value = "my_passwordcheck") // 나의 정보 확인전 비밀번호 체크페이지로 이동
	public String myPasswordCheck(HttpSession session) {
		String mid = (String) session.getAttribute("mid");
		if (mid == null) {
			session.setAttribute("vn", "redirect:my_myinfo");
			return "member/login";
		} else {
			return "member/my_passwordcheck";
		}
	}

	@RequestMapping("pwdchk") // 비밀번호 체크
	public ModelAndView pwdchangechk(MemberDTO mdto, HttpServletResponse resp, HttpSession session) {
		String mid = (String) session.getAttribute("mid");
		mdto.setMid(mid);
		ModelAndView mav = new ModelAndView();
		int cnt = mdao.pwdCheck(mdto);
		if (cnt > 0) {
			session.setAttribute("mid", mdto.getMid());
			mav.setViewName("redirect:my_myinfo");
			mav.addObject("mdto", mdto);
			return mav;
		} else {
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

	@RequestMapping("logincheck") // 로그인체크
	public ModelAndView loginfprocess(HttpSession session, HttpServletRequest reqeust, HttpServletResponse resp,
			@RequestHeader("User-Agent") String uagent, MemberDTO mdto) {
		ModelAndView mav = new ModelAndView();
		MemberDTO m = mdao.idCheck(mdto);
		if (m != null) {
			session.setAttribute("mid", m.getMid());
			session.setAttribute("nickname", m.getMnickname());
			// 회원정보 세션에 등록
			MemberDTO myinfo = mdao.myInfo(m.getMid());
			session.setAttribute("m", myinfo);
			session.setAttribute("mpoint", myinfo.getMpoint());
			String mid = (String) session.getAttribute("mid");
			if (session.getAttribute("vn") == null) {
				mav.setViewName("redirect:index");
			} else {
				mav.setViewName((String) session.getAttribute("vn"));
				session.setAttribute("vn", null);
			}
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

	@RequestMapping("logout") // 로그아웃
	public ModelAndView loginfoutprocess(HttpSession session, HttpServletRequest request) {
		session.removeAttribute("nickname");
		session.removeAttribute("mid");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:index");
		return mav;
	}

}
