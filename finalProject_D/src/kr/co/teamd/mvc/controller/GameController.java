package kr.co.teamd.mvc.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.teamd.mvc.dao.MemberInter;
import kr.co.teamd.mvc.dto.MemberDTO;

//주성중

@Controller
public class GameController {

	@Autowired
	private MemberInter memberdao;

	@RequestMapping(value = "game") // 게임
	public String game(HttpSession session, HttpServletResponse resp) throws IOException {
		int check = 0;
		PrintWriter out = resp.getWriter();
		if(session.getAttribute("mid") == null) 
		{
			out.println("<script>alert('로그인한 사용자만 이용 할 수 있습니다.');</script>");
			out.println("<script>window.close();</script>");
			out.flush();
			return "member/login";
		}
		else {
			check = memberdao.gamecheck(session.getAttribute("mid").toString());
		}
		
		if (session.getAttribute("mid") == null) {
			out.println("<script>alert('로그인 후 이용해주세요.');</script>");
			out.flush();
			return "member/login";
		} else if(check != 0) {
			out.println("<script>alert('게임 기능은 1일 1회만 가능합니다.');</script>");
			out.println("<script>window.close()</script>");
			out.flush();
			return null;
		}
		else {
			return "game";
		}

	}

	@RequestMapping(value = "gameresult")
	public ModelAndView mymatching(HttpSession session, HttpServletResponse resp, MemberDTO dto, int res) throws IOException {
		// System.out.println(res);
		ModelAndView mav = new ModelAndView();
		String mid = (String) session.getAttribute("mid");
		dto.setMid(mid);
		dto.setMpoint(res);
		memberdao.gamepointUpdate(dto);
		dto = memberdao.myInfo(mid);
		session.setAttribute("mpoint", dto.getMpoint());
		mav.setViewName("index");
		return mav;

	}

}
