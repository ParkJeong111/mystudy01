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
	
	// ��Ȳ�� ���� �迭 ������ ���� �۾�
	private ArrayList<String> twomatching;
	private ArrayList<String> fourmatching;
	private ArrayList<String> sixmatching;
	StringBuilder rmid2;
	StringBuilder rmid4;
	StringBuilder rmid6;
	
	@RequestMapping(value= "randommatching")  //�Բ��ڹ� 
	public ModelAndView randommatching(RandomMatchingDTO dto,HttpSession session) {
		// �迭 ũ�� ���� �� �迭�� ����mid���� �ֱ����� �۾�
		int count = dto.getCount();
		String mid = session.getAttribute("mid").toString();
		// �ش� �ο����� �迭�� �������� �ʾ��� �� �������ִ� �κ�
		if(twomatching == null && dto.getCount() == 2) {
			twomatching = new ArrayList<String>(count);
			rmid2 = new StringBuilder();
			System.out.println(dto.getCount()+"�� �迭�� �����Ƴ���");
		}else if(fourmatching == null && dto.getCount() == 4){
			fourmatching = new ArrayList<String>(count);
			rmid4 = new StringBuilder();
			System.out.println(dto.getCount()+"�� �迭�� �����Ƴ���");
		}else if(sixmatching == null && dto.getCount() == 6) {
			sixmatching = new ArrayList<String>(count);
			rmid6 = new StringBuilder();
			System.out.println(dto.getCount()+"�� �迭�� �����Ƴ���");
		}else {
			System.out.println(dto.getCount()+"�� �迭�� �̹� �����ϳ���");
		}
		
		// �迭�� ������ �� �ο����� �´°��� mid���� �־��ִ� �۾�
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
			System.out.println("���������");
		}
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("index");
		return mav;
	}
	

	
}
