package kr.co.teamd.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ServiceController {
	  // ����Ŭ�� �� ȭ�� ����ֱ� ���� ��Ʈ�ѷ�
	  @RequestMapping(value = "searvice") 
	  public String weather() {
	  return "weather";
	  }
}
