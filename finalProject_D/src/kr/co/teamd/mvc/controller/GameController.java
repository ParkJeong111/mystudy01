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

//�ּ���

@Controller
public class GameController {

	@Autowired
	private MemberInter memberdao;

	@RequestMapping(value = "game") // ����
	public String game(HttpSession session, HttpServletResponse resp) throws IOException {
		int check = 0;
		PrintWriter out = resp.getWriter();
		if(session.getAttribute("mid") == null) 
		{
			out.println("<script>alert('�α����� ����ڸ� �̿� �� �� �ֽ��ϴ�.');</script>");
			out.println("<script>window.close();</script>");
			out.flush();
			return "member/login";
		}
		else {
			check = memberdao.gamecheck(session.getAttribute("mid").toString());
		}
		
		if (session.getAttribute("mid") == null) {
			out.println("<script>alert('�α��� �� �̿����ּ���.');</script>");
			out.flush();
			return "member/login";
		} else if(check != 0) {
			out.println("<script>alert('���� ����� 1�� 1ȸ�� �����մϴ�.');</script>");
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
