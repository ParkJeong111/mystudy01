package kr.co.teamd.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TalkController {

	@RequestMapping(value= "talklist")  //게시판리스트
	public String boardtalk() {
		return "talk/talklist";
	}
	
	@RequestMapping(value= "talk_detail")  //글 상세보기
	public String talkDetail() {
		return "talk/talk_detail";
	}
	
	@RequestMapping(value= "itemsboard")  //중고거래 게시판리스트
	public String itemsboard() {
		return "talk/itemsboard";
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
