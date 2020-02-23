package kr.co.teamd.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ServiceController {
	  // 서비스클릭 시 화면 띄워주기 위한 컨트롤러
	  @RequestMapping(value = "searvice") 
	  public String weather() {
	  return "weather";
	  }
}
