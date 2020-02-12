package kr.co.teamd.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IdcheckController {

	@RequestMapping(value ="/idcheck" )
	public String idchk(String id) {
		System.out.println("Id :" + id);
		return "idcheck";
	}
}
