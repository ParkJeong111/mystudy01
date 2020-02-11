package kr.co.teamd.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {
	
	@RequestMapping(value= "my_coupon")
	public String coupon() {
		return "my/my_coupon";
	}
	@RequestMapping(value= "my_board")
	public String board() {
		return "my/my_board";
	}
	@RequestMapping(value= "my_reservation")
	public String reservation() {
		return "my/my_reservation";
	}
	@RequestMapping(value= "my_myinfo")
	public String myInfo() {
		return "my/my_myinfo";
	}
	@RequestMapping(value= "cs_customerreg")
	public String customerreg() {
		return "cs_customerreg";
	}
	@RequestMapping(value= "cs_faq")
	public String faq() {
		return "cs_faq";
	}
	@RequestMapping(value= "cs_mtmqna")
	public String qna() {
		return "cs_mtmqna";
	}
	@RequestMapping(value= "login")
	public String login() {
		return "login";
	}
	@RequestMapping(value= "passwordfind")
	public String passwordfind() {
		return "passwordfind";
	}
	@RequestMapping(value= "addmember")
	public String addmember() {
		return "addmember";
	}
	@RequestMapping(value= "event")
	public String event() {
		return "event";
	}
	@RequestMapping(value= "itemslist")
	public String itemslist() {
		return "itemslist";
	}
	@RequestMapping(value= "notice")
	public String notice() {
		return "notice";
	}
	@RequestMapping(value= "uselow")
	public String uselow() {
		return "law/uselow1";
	}
	@RequestMapping(value= "uselow_detail")
	public String uselow_detail(String num) {
		if(num.equals("1")) {
			return "law/uselow_detail1";
		}else if(num.equals("2")) {
			return "law/uselow_detail2";
		}else if(num.equals("3")) {
			return "law/uselow_detail3";
		}else if(num.equals("4")) {
			return "law/uselow_detail4";
		}else if(num.equals("5")) {
			return "law/uselow_detail5";
		}else if(num.equals("6")) {
			return "law/uselow_detail6";
		}else if(num.equals("7")) {
			return "law/uselow_detail7";
		}
		return "index";
		
		
	}
	
	@RequestMapping(value= "reserveSelect")
	public String reserveSelect() {
		return "talk/reserveSelect";
	}
	
	@RequestMapping(value= "talk_detail")
	public String talk_detail() {
		return "talk/talk_detail";
	}
	
	@RequestMapping(value= "talklist")
	public String boardtalk() {
		return "talk/talklist";
	}
	
	@RequestMapping(value= "matching")
	public String matching() {
		return "matching";
	}
	
	
	@RequestMapping(value= "game")
	public String game() {
		return "game";
	}
	@RequestMapping(value= "itemsboard")
	public String itemsboard() {
		return "itemsboard";
	}
	
}
