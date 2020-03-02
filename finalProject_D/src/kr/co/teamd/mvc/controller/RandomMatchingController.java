package kr.co.teamd.mvc.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
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
	
	// �ο��� ������ ���� �� ���� 
	private int count2 = 0;
	private int count4 = 0;
	private int count6 = 0;
	// mybatis�� ���ڰ��� 2���̻� ���������� ����
	HashMap<String, Object> maplist = new HashMap<String, Object>();
	// �ش� ������ ���� ��Ī�������� Ȯ���ϱ����� �� ����
	private int matchingcheck = 0;
	
	@RequestMapping(value= "randommatching")  //�Բ��ڹ� 
	public ModelAndView randommatching(RandomMatchingDTO dto,HttpSession session,HttpServletResponse response) throws IOException {
		ModelAndView mav = new ModelAndView();
		StringBuilder submit = new StringBuilder();
		PrintWriter out = response.getWriter();
		// ��Ī�� ���� ���ڿ��� ������ �����ִ� ���
		submit.append(dto.getRmcount()).append(dto.getRmlocation()).append(dto.getRmtype())
		.append(dto.getRmage()).append(dto.getRmtime()).append(dto.getRmsex());
		StringBuilder dbval = new StringBuilder();
		
		// �α��� �ƴҽÿ��� �α���â���� �̵������ִ� ���
		if(session.getAttribute("mid") == null) {
			mav.setViewName("member/login");
			out.println("<script>alert('�α��� �� �̿����ּ���.');</script>");
			out.flush();
			return mav;
		// �ش� ������ ���� ��Ī���� ���¸� �˱����� ������
		}else {
			matchingcheck = randommatching.matchingidcheck(session.getAttribute("mid").toString());
		}
		
		// �α��� �ƴҽÿ��� �α���â���� �̵������ִ� ���
		if(session.getAttribute("mid") == null) {
			mav.setViewName("member/login");
			out.println("<script>alert('�α��� �� �̿����ּ���.');</script>");
			out.flush();
			return mav;
		// �ش� ������ �˻������� ���� ������ ��Ī���������� �Ǵ��ϰ� ������������ �̵� �����ִ� ���
		}else if(matchingcheck != 0){
			mav.setViewName("member/my_matching");
			out.println("<script>alert('��Ī �������� �����Դϴ�.'); location.href='my_matching';</script>");
			out.flush();
		// ��Ī�� �� ���ִ� ��� ������ �����Ͽ��� �� ��Ī�� �����ְ� �����ͺ��̽��� ���� �������ִ� ���
		}else {
			maplist.put("dto", dto);
			dto.setRmid(session.getAttribute("mid").toString());
			randommatching.randommatchinginsert(dto);
			out.println("<script>alert('��Ī ��û�� �Ϸ�Ǿ����ϴ�.'); location.href='my_matching';</script>");
			out.flush();
			System.out.println("�� ����ϰ� �̵�����");
			// ���� ��Ī �������� �÷����� �������ֱ����� ���� ����
			List<RandomMatchingDTO> randto =  randommatching.randomatchinglist();
			// �ο��� 2���� ��Ī�� �������ִ� ���
			if(dto.getRmcount() == 2) {
				// ���� �Էµ� ���� ��� ��Ī �������� ������ ���ϱ����� for�� ����
				for(RandomMatchingDTO e : randto) {
					dbval.append(e.getRmcount()).append(e.getRmlocation()).append(e.getRmtype())
					.append(e.getRmage()).append(e.getRmtime()).append(e.getRmsex());
					// ���� ��ġ�ϴ� �κ��� �ִٸ� count�� ���������־� �ο����� �����ϱ� ���� �κ�
					if(submit.toString().equals(dbval.toString())) {
						count2++;
						System.out.println("ī��Ʈ�� ����"+count2);
					// ���� �ٸ��ٸ� count�� ������Ű���ʴ´�.
					}else {
						System.out.println("�ٸ���");
					}
					// count�� ���� ���� ��Ī ��û�� ���� count�ο����� ��ġ�ϴٸ� �ش� �������� id���� �޾ƿͼ� �����ִ� ���
					if(count2 == dto.getRmcount()) {
						List<String> idlist = randommatching.idlist(dto);
						StringBuilder matchlist = new StringBuilder();
						// �������̵� �ݺ������� ȣ���ؼ� StringBuilder���� ��������ְ� ��Ī�� �Ϸ�� ��Ī���� db status���� �Ϸ� ���·� �������ִ� ���
						for(String w : idlist) {
							maplist.put("mid",w);
							randommatching.updatestatus(maplist);
							matchlist.append(w).append("/");
							System.out.println("��Ī�������̵�"+w);
							maplist.remove("mid");
						}
						// ��Ī�� �Ϸ�Ǹ� ���̺� insert ���ش�.
						dto.setMrresult(matchlist.toString());
						randommatching.randomresultinsert(dto);
						
						
					}
					// StringBuilder�� ���� �����̻� �Ѿ�� �ʵ��� �������ִ� ���
					dbval.setLength(0);
				}
				count2 = 0;
			}
			
			// �ο��� 2�� �κа� �����մϴ�.
			else if(dto.getRmcount() == 4) {
				for(RandomMatchingDTO e : randto) {
					dbval.append(e.getRmcount()).append(e.getRmlocation()).append(e.getRmtype())
					.append(e.getRmage()).append(e.getRmtime()).append(e.getRmsex());
					System.out.println(submit.toString().equals(dbval.toString()));
					System.out.println("==============================");
					if(submit.toString().equals(dbval.toString())) {
						count4++;
						System.out.println("ī��Ʈ�� ����"+count4);
					}else {
						System.out.println("�ٸ���");
					}
					if(count4 == dto.getRmcount()) {
						List<String> idlist = randommatching.idlist(dto);
						StringBuilder matchlist = new StringBuilder();
						for(String w : idlist) {
							maplist.put("mid",w);
							randommatching.updatestatus(maplist);
							matchlist.append(w).append("/");
							System.out.println("��Ī�������̵�"+w);
						}
						dto.setMrresult(matchlist.toString());
						randommatching.randomresultinsert(dto);
						
					}
					dbval.setLength(0);
				}
				count4 = 0;
				
			}else {
				for(RandomMatchingDTO e : randto) {
					dbval.append(e.getRmcount()).append(e.getRmlocation()).append(e.getRmtype())
					.append(e.getRmage()).append(e.getRmtime()).append(e.getRmsex());
					
					System.out.println(submit.toString().equals(dbval.toString()));
					System.out.println("==============================");
					if(submit.toString().equals(dbval.toString())) {
						count6++;
						System.out.println("ī��Ʈ�� ����"+count6);
					}else {
						System.out.println("�ٸ���");
					}
					if(count6 == dto.getRmcount()) {
						List<String> idlist = randommatching.idlist(dto);
						StringBuilder matchlist = new StringBuilder();
						for(String w : idlist) {
							maplist.put("mid",w);
							randommatching.updatestatus(maplist);
							matchlist.append(w).append("/");
							System.out.println("��Ī�������̵�"+w);
						}
						dto.setMrresult(matchlist.toString());
						randommatching.randomresultinsert(dto);
						
					}
					dbval.setLength(0);
				}
				count6 = 0;
			}
			
		}
		mav.setViewName("member/my_matching");
		return mav;
	}
	// ��Ī������ ��������ִ� ���
	@RequestMapping(value= "my_matching")
	public ModelAndView mymatching(HttpSession session, HttpServletResponse resp) throws IOException {
		ModelAndView mav = new ModelAndView();
		PrintWriter out = resp.getWriter();
		String mid = (String) session.getAttribute("mid");
		if (mid == null) {
			mav.setViewName("member/login");
			out.println("<script>alert('�α��� �� �̿����ּ���.');</script>");
			out.flush();
			return mav;
		}else {
			List<RandomMatchingDTO> ranlist = randommatching.randomlistinfo(mid);
			
			HashMap<String, Object> list = new HashMap<String, Object>();
			list.put("req", ranlist);
			mav.addObject("list",list);
			mav.setViewName("member/my_matching");
			return mav;
		}	
		
	}
	
	@RequestMapping(value= "test")
	public String test() {
			return "test";
		}	
	
	
}
