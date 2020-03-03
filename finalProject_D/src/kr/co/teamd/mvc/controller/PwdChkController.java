package kr.co.teamd.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PwdChkController {
	@RequestMapping(value = "/pwdcheck")
	public String pwdchk(String pwd) {
		return "pwdcheck";
	}
	
}
