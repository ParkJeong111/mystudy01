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
	
	private int count2 = 0;
	private int count4 = 0;
	private int count6 = 0;
	HashMap<String, Object> maplist = new HashMap<String, Object>();
	private int matchingcheck = 0;
	
	@RequestMapping(value= "randommatching")  //함께자바 
	public ModelAndView randommatching(RandomMatchingDTO dto,HttpSession session,HttpServletResponse response) throws IOException {
		ModelAndView mav = new ModelAndView();
		StringBuilder submit = new StringBuilder();
		PrintWriter out = response.getWriter();
		submit.append(dto.getRmcount()).append(dto.getRmlocation()).append(dto.getRmtype())
		.append(dto.getRmage()).append(dto.getRmtime()).append(dto.getRmsex());
		StringBuilder dbval = new StringBuilder();
		System.out.println(dto.getRmcount());
		if(session.getAttribute("mid") == null) {
			mav.setViewName("member/login");
			out.println("<script>alert('로그인 후 이용해주세요.');</script>");
			out.flush();
			return mav;
		}else {
			matchingcheck = randommatching.matchingidcheck(session.getAttribute("mid").toString());
		}
		
		if(session.getAttribute("mid") == null) {
			mav.setViewName("member/login");
			out.println("<script>alert('로그인 후 이용해주세요.');</script>");
			out.flush();
			return mav;
		}else if(matchingcheck != 0){
			mav.setViewName("index");
			out.println("<script>alert('매칭 진행중인 상태입니다.'); location.href='index';</script>");
			out.flush();
		}else {
			maplist.put("dto", dto);
			dto.setRmid(session.getAttribute("mid").toString());
			randommatching.randommatchinginsert(dto);
			out.println("<script>alert('매칭 신청이 완료되었습니다.'); location.href='index';</script>");
			out.flush();
			System.out.println("잘 등록하고 이동했쥬");
			List<RandomMatchingDTO> randto =  randommatching.randomatchinglist();
			
			if(dto.getRmcount() == 2) {
				for(RandomMatchingDTO e : randto) {
					dbval.append(e.getRmcount()).append(e.getRmlocation()).append(e.getRmtype())
					.append(e.getRmage()).append(e.getRmtime()).append(e.getRmsex());
					System.out.println(submit.toString().equals(dbval.toString()));
					System.out.println("==============================");
					if(submit.toString().equals(dbval.toString())) {
						count2++;
						System.out.println("카운트가 증가"+count2);
					}else {
						System.out.println("다르다");
					}
					if(count2 == dto.getRmcount()) {
						List<String> idlist = randommatching.idlist(dto);
						StringBuilder matchlist = new StringBuilder();
						for(String w : idlist) {
							maplist.put("mid",w);
							randommatching.updatestatus(maplist);
							matchlist.append(w).append("/");
							System.out.println("매칭성공아이디"+w);
							maplist.remove("mid");
						}
						dto.setMrresult(matchlist.toString());
						randommatching.randomresultinsert(dto);
						out.println("<script>alert('매칭 신청이 완료되었습니다.'); location.href='index';</script>");
						out.flush();
						
						
					}
					dbval.setLength(0);
				}
				count2 = 0;
			}
			
			else if(dto.getRmcount() == 4) {
				for(RandomMatchingDTO e : randto) {
					dbval.append(e.getRmcount()).append(e.getRmlocation()).append(e.getRmtype())
					.append(e.getRmage()).append(e.getRmtime()).append(e.getRmsex());
					System.out.println(submit.toString().equals(dbval.toString()));
					System.out.println("==============================");
					if(submit.toString().equals(dbval.toString())) {
						count4++;
						System.out.println("카운트가 증가"+count4);
					}else {
						System.out.println("다르다");
					}
					if(count4 == dto.getRmcount()) {
						List<String> idlist = randommatching.idlist(dto);
						StringBuilder matchlist = new StringBuilder();
						for(String w : idlist) {
							maplist.put("mid",w);
							randommatching.updatestatus(maplist);
							matchlist.append(w).append("/");
							System.out.println("매칭성공아이디"+w);
						}
						dto.setMrresult(matchlist.toString());
						randommatching.randomresultinsert(dto);
						out.println("<script>alert('매칭 신청이 완료되었습니다.'); location.href='index';</script>");
						out.flush();
						
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
						System.out.println("카운트가 증가"+count6);
					}else {
						System.out.println("다르다");
					}
					if(count6 == dto.getRmcount()) {
						List<String> idlist = randommatching.idlist(dto);
						StringBuilder matchlist = new StringBuilder();
						for(String w : idlist) {
							maplist.put("mid",w);
							randommatching.updatestatus(maplist);
							matchlist.append(w).append("/");
							System.out.println("매칭성공아이디"+w);
						}
						dto.setMrresult(matchlist.toString());
						randommatching.randomresultinsert(dto);
						out.println("<script>alert('매칭 신청이 완료되었습니다.'); location.href='index';</script>");
						out.flush();
						
					}
					dbval.setLength(0);
				}
				count6 = 0;
			}
			
		}
		mav.setViewName("index");
		return mav;
	}
	@RequestMapping(value= "my_matching")  //예약내역
	public ModelAndView mymatching(HttpSession session, HttpServletResponse resp) throws IOException {
		ModelAndView mav = new ModelAndView();
		PrintWriter out = resp.getWriter();
		String mid = (String) session.getAttribute("mid");
		if (mid == null) {
			mav.setViewName("member/login");
			out.println("<script>alert('로그인 후 이용해주세요.');</script>");
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
	
	

	
}
