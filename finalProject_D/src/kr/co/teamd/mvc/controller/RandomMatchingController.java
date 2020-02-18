package kr.co.teamd.mvc.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.teamd.mvc.dao.RandomMatchinginter;
import kr.co.teamd.mvc.dto.RandomMatchingDTO;

@Controller
public class RandomMatchingController {
	
	@Autowired
	private RandomMatchinginter randommatching;
	
	// 상황에 따른 배열 생성을 위한 작업
	private ArrayList<String> twomatching;
	private ArrayList<String> fourmatching;
	private ArrayList<String> sixmatching;
	StringBuilder rmid2;
	StringBuilder rmid4;
	StringBuilder rmid6;
	
	@RequestMapping(value= "randommatching")  //함께자바 
	public ModelAndView randommatching(RandomMatchingDTO dto,HttpSession session) {
		// 배열 크기 지정 및 배열에 넣을mid값을 넣기위한 작업
		int count = dto.getCount();
		String mid = session.getAttribute("mid").toString();
		// 해당 인원수의 배열이 생성되지 않았을 때 생성해주는 부분
		if(twomatching == null && dto.getCount() == 2) {
			twomatching = new ArrayList<String>(count);
			rmid2 = new StringBuilder();
			System.out.println(dto.getCount()+"인 배열이 생성됐나유");
		}else if(fourmatching == null && dto.getCount() == 4){
			fourmatching = new ArrayList<String>(count);
			rmid4 = new StringBuilder();
			System.out.println(dto.getCount()+"인 배열이 생성됐나유");
		}else if(sixmatching == null && dto.getCount() == 6) {
			sixmatching = new ArrayList<String>(count);
			rmid6 = new StringBuilder();
			System.out.println(dto.getCount()+"인 배열이 생성됐나유");
		}else {
			System.out.println(dto.getCount()+"인 배열이 이미 존재하나유");
		}
		
		// 배열이 생성된 후 인원수에 맞는곳에 mid값을 넣어주는 작업
		if(twomatching != null) {
			if(twomatching.size() < 1) {
				rmid2.append(mid).append("/");
				twomatching.add(mid);
			}else {
				rmid2.append(mid).append("/");
				twomatching.add(mid);
				dto.setSumtype(dto.getCount()+"/"+dto.getLocation()+"/"
						+dto.getType()+"/"+dto.getAge()+"/"+dto.getTime()+"/"
						+dto.getSex());
				dto.setRmid(rmid2.toString());
				randommatching.randommatchinginsert(dto);
				twomatching.removeAll(twomatching);
			}
		}else if(fourmatching != null) {
			if(fourmatching.size() < 3) {
				rmid4.append(mid).append("/");
				fourmatching.add(mid);
			}else {
				rmid4.append(mid).append("/");
				fourmatching.add(mid);
				dto.setSumtype(dto.getCount()+"/"+dto.getLocation()+"/"
						+dto.getType()+"/"+dto.getAge()+"/"+dto.getTime()+"/"
						+dto.getSex());
				dto.setRmid(rmid4.toString());
				randommatching.randommatchinginsert(dto);
				fourmatching.removeAll(fourmatching);
			}
		}else if(sixmatching != null) {
			if(sixmatching.size() < 5) {
				rmid6.append(mid).append("/");
				sixmatching.add(mid);
			}else {
				rmid6.append(mid).append("/");
				sixmatching.add(mid);
				dto.setSumtype(dto.getCount()+"/"+dto.getLocation()+"/"
						+dto.getType()+"/"+dto.getAge()+"/"+dto.getTime()+"/"
						+dto.getSex());
				dto.setRmid(rmid6.toString());
				randommatching.randommatchinginsert(dto);
				sixmatching.removeAll(sixmatching);
			}
		}else {
			System.out.println("아직없어용");
		}
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("index");
		return mav;
	}
	

	
}
