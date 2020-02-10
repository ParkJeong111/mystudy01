package kr.co.teamd.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainPageController {

	
	@RequestMapping(value= "itemslist")  //가맹점 리스트
	public String itemslist() {
		return "itemslist";
	}
	
	
	@RequestMapping(value= "randommatching")  //랜덤매칭
	public String randomMatching() {
		return "randommatching";
	}
		
	
	@RequestMapping(value= "matching")  //함께자바 
	public String matching() {
		return "matching";
	}
	
	
	@RequestMapping(value= "game")  //게임
	public String game() {
		return "game";
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
