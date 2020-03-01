package kr.co.teamd.mvc.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.teamd.mvc.dao.MatchingBoardInter;
import kr.co.teamd.mvc.dao.MatchingInter;
import kr.co.teamd.mvc.dto.MatchingboardDTO;

@Controller
public class MatchingController {
	
	private int personcount;
	private int statuscount;
	
	@Autowired
	private MatchingInter matchingdao;
	
	@Autowired MatchingBoardInter matchingboarddao;

	
	@RequestMapping(value= "matching")  //�Բ��ڹ� 
	public ModelAndView matching() {
		ModelAndView mav = new ModelAndView();
		List<MatchingboardDTO> dto =  matchingdao.matchinglist();
		mav.addObject("matchlist",dto);
		for(MatchingboardDTO e : dto) {
			System.out.println("�Բ��ڹ� ����Ʈ ��ﶧ ���´�"+e.getMbnum());
		}
		mav.setViewName("matching");
		return mav;
	}
	@RequestMapping(value= "matchpage")  //�Բ��ڹ� 
	public ModelAndView matchpage(int mbnum) {
		System.out.println("����ѹ� ���Ͷ�"+mbnum);
		ModelAndView mav = new ModelAndView();
		List<MatchingboardDTO> dto = matchingboarddao.matchpage(mbnum);
		mav.addObject("matchpage",dto);
		mav.setViewName("matchingdetail");
		return mav;
	}
	
	@RequestMapping(value= "matchadd")  //�Բ��ڹ� 
	public ModelAndView matchadd(int mbnum,HttpServletResponse response,HttpSession session) throws IOException {
		ModelAndView mav = new ModelAndView();
		String mid  = "";
		HashMap<String, Object> valupdate = new HashMap<String, Object>();
		HashMap<String, Object> resultcheck = new HashMap<String, Object>();
		List<MatchingboardDTO> dto = matchingboarddao.countselect(mbnum);
		
		PrintWriter out = response.getWriter();
		if(session.getAttribute("mid") == null) {
			out.println("<script>alert('�α����� �ʿ��� ����Դϴ�.');</script>");
			out.println("<script>location.href = 'login';</script>");
			out.flush();
		}else {
			mid = (String) session.getAttribute("mid");
		}
		for(MatchingboardDTO e : dto) {
			personcount = e.getMbperson();
			statuscount = Integer.parseInt(e.getMbstatus());
		}
		resultcheck.put("mbnum", mbnum);
		resultcheck.put("mid", mid);
		int check = matchingboarddao.boardmatchcheck(resultcheck);
		System.out.println("ī��Ʈ�� ���ΰ���" + check);
		
		if(personcount == statuscount) {
			out.println("<script>alert('�����ο��� �ʰ��Ͽ����ϴ�.');</script>");
			out.println("<script>location.href = 'index';</script>");
			out.flush();
		}else if(check == 1) {
			out.println("<script>alert('�ش�ۿ� �̹� ��û�Ͽ����ϴ�.');</script>");
			out.println("<script>location.href = 'index';</script>");
			out.flush();
		}
		else {
			valupdate.put("mid", mid);
			valupdate.put("mbnum", mbnum);
			matchingboarddao.statusadd(valupdate);
			out.println("<script>alert('��û�� �Ϸ�Ǿ����ϴ�.');</script>");
			out.println("<script>location.href = 'index';</script>");
			out.flush();
		}
		mav.setViewName("index");
		return mav;
	}
	
	
	
	
	
	
	
	

	
}
