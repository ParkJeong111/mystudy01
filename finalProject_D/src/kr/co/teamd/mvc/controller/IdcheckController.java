package kr.co.teamd.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import kr.co.teamd.mvc.dao.MemberInter;

//ȸ������ ���̵� �ߺ�Ȯ�� ajax ���κ�
@RestController
public class IdcheckController {
	
	@Autowired
	private MemberInter memberinter;
	
	@RequestMapping(value ="/idcheck" )
	public int idchk(Model m, @RequestParam("id") String id) {
		System.out.println("Id :" + id);
		int mnum = memberinter.idChk(id);
		return mnum;  
	}
}
