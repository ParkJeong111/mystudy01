package kr.co.teamd.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TalkController {

	@RequestMapping(value= "talklist")  //�Խ��Ǹ���Ʈ
	public String boardtalk() {
		return "talk/talklist";
	}
	
	@RequestMapping(value= "talk_detail")  //�� �󼼺���
	public String talkDetail() {
		return "talk/talk_detail";
	}
	
	@RequestMapping(value= "itemsboard")  //�߰�ŷ� �Խ��Ǹ���Ʈ
	public String itemsboard() {
		return "talk/itemsboard";
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
