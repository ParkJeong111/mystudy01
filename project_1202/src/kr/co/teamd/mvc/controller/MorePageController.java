package kr.co.teamd.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class MorePageController {

	
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
	
	
	@RequestMapping(value= "cs_customerreg")  //����� ��û
	public String customerreg() {
		return "morepage/cs_customerreg";
	}
	@RequestMapping(value= "cs_faq") //������
	public String faq() {
		return "morepage/cs_faq";
	}
	@RequestMapping(value= "cs_mtmqna")  //1:1����
	public String qna() {
		return "morepage/cs_mtmqna";
	}
	
	//��ä�� ���� ����
	
	
	
		//��ä�� ���� ��
		

		//�Ǽ��� ���� ����
		
		
		
		//�Ǽ��� ���� ��

		//������ ���� ����
		
		
		
		//������ ���� ��

		//�ּ��� ���� ����
		
		
		
		//�ּ��� ���� ��
}
