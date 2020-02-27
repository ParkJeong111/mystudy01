package kr.co.teamd.mvc.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.teamd.mvc.dao.MainInter;
import kr.co.teamd.mvc.dto.HostregDTO;
import kr.co.teamd.mvc.dto.QnaDTO;
@Controller
public class MorePageController {

	@Autowired
	private MainInter mdao;
	
	@RequestMapping(value= "notice")  //공지사항 
	public String notice() {
		return "morepage/notice";
	}
	@RequestMapping(value= "uselow")  //이용약관
	public String uselow() {
		return "morepage/uselow1";
	}
	@RequestMapping(value= "uselow_detail")  //이용약관 디테일
	public String uselow_detail(String num) {
		if(num.equals("1")) {
			return "morepage/uselow_detail1";
		}else if(num.equals("2")) {
			return "morepage/uselow_detail2";
		}else if(num.equals("3")) {
			return "morepage/uselow_detail3";
		}else if(num.equals("4")) {
			return "morepage/uselow_detail4";
		}else if(num.equals("5")) {
			return "morepage/uselow_detail5";
		}else if(num.equals("6")) {
			return "morepage/uselow_detail6";
		}else if(num.equals("7")) {
			return "morepage/uselow_detail7";
		}
		return "index";
			
	}
	
	@RequestMapping(value= "event")  //이벤트
	public String event() {
		return "morepage/event";
	}
	
	
	@RequestMapping(value= "cs_customerreg")  //가맹점 등록 요청
	public String customerreg() {
		return "morepage/cs_customerreg";
	}
	@RequestMapping(value= "cs_faq") //고객센터
	public String faq() {
		return "morepage/cs_faq";
	}
	//김채은 영역 시작
	
	
	
		//김채은 영역 끝
		

		//권세진 영역 시작
		
		
		
		//권세진 영역 끝

		//박정연 영역 시작
		@RequestMapping("hostreg")  //가맹점 등록 요청
		public String hostReginsert(HostregDTO hrdto, HttpServletResponse resp) {
			mdao.hostReg(hrdto);
			
			PrintWriter out;
			try {
				out = resp.getWriter();
				out.println("<script>alert('등록요청이 완료되었습니다.');</script>");
				out.flush(); 
			} catch (IOException e) {
				e.printStackTrace();
			}
			return "morepage/cs_customerreg";
		}
	
		
		@RequestMapping("qnainsert")  //QnA 등록
		public ModelAndView qnaInsert(QnaDTO qdto, HttpServletResponse resp,HttpSession session) {
			ModelAndView mav = new ModelAndView();
			String mid = (String) session.getAttribute("mid");
			qdto.setMid(mid);
			mdao.qnaInsert(qdto);
			PrintWriter out;
			try {
				out = resp.getWriter();
				out.println("<script>alert('문의가 정상적으로 등록되었습니다.');</script>");
				out.flush(); 
			} catch (IOException e) {
				e.printStackTrace();
			}
			mav.setViewName("morepage/cs_mtmqna");
			return mav;
		}
		
		
		@RequestMapping(value= "cs_mtmqna")  //1:1문의
		public ModelAndView qna(HttpSession session) {
			System.out.println("1:1문의 진입 확인용 로그");
			ModelAndView mav = new ModelAndView();
			String mid = (String) session.getAttribute("mid");
			if (mid ==null) {
				mav.setViewName("member/login");
				session.setAttribute("vn", "redirect:cs_mtmqna");
			}else {
				mav.setViewName("morepage/cs_mtmqna");	
				List<QnaDTO> qlist = mdao.qnaList(mid);
				mav.addObject("qlist", qlist);
			}
			return mav;
		}
		
		
		
		
		//박정연 영역 끝

		//주성중 영역 시작
		
		
		
		//주성중 영역 끝
}
