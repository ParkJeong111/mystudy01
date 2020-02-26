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
	
	@RequestMapping(value= "notice")  //�������� 
	public String notice() {
		return "morepage/notice";
	}
	@RequestMapping(value= "uselow")  //�̿���
	public String uselow() {
		return "morepage/uselow1";
	}
	@RequestMapping(value= "uselow_detail")  //�̿��� ������
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
	
	@RequestMapping(value= "event")  //�̺�Ʈ
	public String event() {
		return "morepage/event";
	}
	
	
	@RequestMapping(value= "cs_customerreg")  //������ ��� ��û
	public String customerreg() {
		return "morepage/cs_customerreg";
	}
	@RequestMapping(value= "cs_faq") //������
	public String faq() {
		return "morepage/cs_faq";
	}
	//��ä�� ���� ����
	
	
	
		//��ä�� ���� ��
		

		//�Ǽ��� ���� ����
		
		
		
		//�Ǽ��� ���� ��

		//������ ���� ����
		@RequestMapping("hostreg")  //������ ��� ��û
		public String hostReginsert(HostregDTO hrdto, HttpServletResponse resp) {
			mdao.hostReg(hrdto);
			
			PrintWriter out;
			try {
				out = resp.getWriter();
				out.println("<script>alert('��Ͽ�û�� �Ϸ�Ǿ����ϴ�.');</script>");
				out.flush(); 
			} catch (IOException e) {
				e.printStackTrace();
			}
			return "morepage/cs_customerreg";
		}
	
		
		@RequestMapping("qnainsert")  //QnA ���
		public ModelAndView qnaInsert(QnaDTO qdto, HttpServletResponse resp,HttpSession session) {
			ModelAndView mav = new ModelAndView();
			String mid = (String) session.getAttribute("mid");
			qdto.setMid(mid);
			mdao.qnaInsert(qdto);
			PrintWriter out;
			try {
				out = resp.getWriter();
				out.println("<script>alert('���ǰ� ���������� ��ϵǾ����ϴ�.');</script>");
				out.flush(); 
			} catch (IOException e) {
				e.printStackTrace();
			}
			mav.setViewName("morepage/cs_mtmqna");
			return mav;
		}
		
		
		@RequestMapping(value= "cs_mtmqna")  //1:1����
		public ModelAndView qna(HttpSession session) {
			System.out.println("1:1���� ���� Ȯ�ο� �α�");
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
		
		
		
		
		//������ ���� ��

		//�ּ��� ���� ����
		
		
		
		//�ּ��� ���� ��
}
