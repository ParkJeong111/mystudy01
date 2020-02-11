package kr.co.teamd.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class MorePageController {

	
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
	
	
	@RequestMapping(value= "cs_customerreg")  //고객등록 요청
	public String customerreg() {
		return "morepage/cs_customerreg";
	}
	@RequestMapping(value= "cs_faq") //고객센터
	public String faq() {
		return "morepage/cs_faq";
	}
	@RequestMapping(value= "cs_mtmqna")  //1:1문의
	public String qna() {
		return "morepage/cs_mtmqna";
	}
	
	//김채은 영역 시작
	
	
	
		//김채은 영역 끝
		

		//권세진 영역 시작
		
		
		
		//권세진 영역 끝

		//박정연 영역 시작
		
		
		
		//박정연 영역 끝

		//주성중 영역 시작
		
		
		
		//주성중 영역 끝
}
