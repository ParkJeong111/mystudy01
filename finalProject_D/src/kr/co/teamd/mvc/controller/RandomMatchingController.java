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
	
	@RequestMapping(value= "randommatching")  //�Բ��ڹ� 
	public ModelAndView randommatching(RandomMatchingDTO dto,HttpSession session) {
		// �迭 ũ�� ���� �� �迭�� ����mid���� �ֱ����� �۾�
		int count = dto.getCount();
		String mid = session.getAttribute("mid").toString();
		
		// �ش� �ο����� �迭�� �������� �ʾ��� �� �������ִ� �κ�
		if(twomatching == null && dto.getCount() == 2) {
			twomatching = new ArrayList<String>(count);
			System.out.println(dto.getCount()+"�� �迭�� �����Ƴ���");
		}else if(fourmatching == null && dto.getCount() == 4){
			fourmatching = new ArrayList<String>(count);
			System.out.println(dto.getCount()+"�� �迭�� �����Ƴ���");
		}else if(sixmatching == null && dto.getCount() == 6) {
			sixmatching = new ArrayList<String>(count);
			System.out.println(dto.getCount()+"�� �迭�� �����Ƴ���");
		}else {
			System.out.println(dto.getCount()+"�� �迭�� �̹� �����ϳ���");
		}
		
		
		// �迭�� ������ �� �ο����� �´°��� mid���� �־��ִ� �۾�
		
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
				System.out.println("�迭�� ũ�Ⱑ 2�� �Ѿ��⿡ �����մϴ�");
				twomatching.removeAll(twomatching);
			}
		}else if(fourmatching != null) {
			if(fourmatching.size() < 4) {
				fourmatching.add(mid);
				System.out.println(fourmatching.size());
			}else {
				System.out.println("�迭�� ũ�Ⱑ 4�� �Ѿ��⿡ �����մϴ�");
				fourmatching.removeAll(fourmatching);
			}
		}else if(sixmatching != null) {
			if(sixmatching.size() < 6) {
				sixmatching.add(mid);
				System.out.println(sixmatching.size());
			}else {
				System.out.println("�迭�� ũ�Ⱑ 6�� �Ѿ��⿡ �����մϴ�");
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
