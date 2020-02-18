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
	
	@RequestMapping(value= "randommatching")  //함께자바 
	public ModelAndView randommatching(RandomMatchingDTO dto,HttpSession session) {
		// 배열 크기 지정 및 배열에 넣을mid값을 넣기위한 작업
		int count = dto.getCount();
		String mid = session.getAttribute("mid").toString();
		
		// 해당 인원수의 배열이 생성되지 않았을 때 생성해주는 부분
		if(twomatching == null && dto.getCount() == 2) {
			twomatching = new ArrayList<String>(count);
			System.out.println(dto.getCount()+"인 배열이 생성됐나유");
		}else if(fourmatching == null && dto.getCount() == 4){
			fourmatching = new ArrayList<String>(count);
			System.out.println(dto.getCount()+"인 배열이 생성됐나유");
		}else if(sixmatching == null && dto.getCount() == 6) {
			sixmatching = new ArrayList<String>(count);
			System.out.println(dto.getCount()+"인 배열이 생성됐나유");
		}else {
			System.out.println(dto.getCount()+"인 배열이 이미 존재하나유");
		}
		
		
		// 배열이 생성된 후 인원수에 맞는곳에 mid값을 넣어주는 작업
		
		if(twomatching != null) {
			if(twomatching.size() < 2) {
				twomatching.add(mid);
				System.out.println(twomatching.size());
				System.out.println(dto.getCount()+"/"+dto.getLocation()+"/"
						+dto.getType()+"/"+dto.getAge()+"/"+dto.getTime()+"/"
						+dto.getSex());
				for(String e : twomatching) {
					System.out.print(e+"/");
				}
			}else {
				dto.setSumtype(dto.getCount()+"/"+dto.getLocation()+"/"
						+dto.getType()+"/"+dto.getAge()+"/"+dto.getTime()+"/"
						+dto.getSex());
				dto.setRmid(twomatching);
				randommatching.randommatchinginsert(dto);
				System.out.println("배열의 크기가 2를 넘었기에 제거합니다");
				twomatching.removeAll(twomatching);
			}
		}else if(fourmatching != null) {
			if(fourmatching.size() < 4) {
				fourmatching.add(mid);
				System.out.println(fourmatching.size());
			}else {
				System.out.println("배열의 크기가 4를 넘었기에 제거합니다");
				fourmatching.removeAll(fourmatching);
			}
		}else if(sixmatching != null) {
			if(sixmatching.size() < 6) {
				sixmatching.add(mid);
				System.out.println(sixmatching.size());
			}else {
				System.out.println("배열의 크기가 6을 넘었기에 제거합니다");
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
