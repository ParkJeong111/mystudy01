package kr.co.teamd.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainPageController {

	@RequestMapping(value = "randommatching") // ������Ī
	public String randomMatching() {
		return "randommatching";
	}

	@RequestMapping(value = "game") // ����
	public String game() {
		return "game";
	}

	// ��ä�� ���� ����

	// ��ä�� ���� ��

	// �Ǽ��� ���� ����

	// �Ǽ��� ���� ��

	// ������ ���� ����

	// ������ ���� ��

	// �ּ��� ���� ����

	// �ּ��� ���� ��

}
