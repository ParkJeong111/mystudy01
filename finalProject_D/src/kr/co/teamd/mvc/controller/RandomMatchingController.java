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
	
	// 인원수 제한을 위한 값 선언 
	private int count2 = 0;
	private int count4 = 0;
	private int count6 = 0;
	// mybatis에 인자값을 2개이상 보내기위해 선언
	HashMap<String, Object> maplist = new HashMap<String, Object>();
	// 해당 유저가 현재 매칭중인지를 확인하기위한 값 선언
	private int matchingcheck = 0;
	
	@RequestMapping(value= "randommatching")  //함께자바 
	public ModelAndView randommatching(RandomMatchingDTO dto,HttpSession session,HttpServletResponse response) throws IOException {
		ModelAndView mav = new ModelAndView();
		StringBuilder submit = new StringBuilder();
		PrintWriter out = response.getWriter();
		// 매칭을 위해 문자열의 총합을 구해주는 기능
		submit.append(dto.getRmcount()).append(dto.getRmlocation()).append(dto.getRmtype())
		.append(dto.getRmage()).append(dto.getRmtime()).append(dto.getRmsex());
		StringBuilder dbval = new StringBuilder();
		
		// 로그인 아닐시에는 로그인창으로 이동시켜주는 기능
		if(session.getAttribute("mid") == null) {
			mav.setViewName("member/login");
			out.println("<script>alert('로그인 후 이용해주세요.');</script>");
			out.flush();
			return mav;
		// 해당 유저가 현재 매칭중인 상태를 알기위한 값추출
		}else {
			matchingcheck = randommatching.matchingidcheck(session.getAttribute("mid").toString());
		}
		
		// 로그인 아닐시에는 로그인창으로 이동시켜주는 기능
		if(session.getAttribute("mid") == null) {
			mav.setViewName("member/login");
			out.println("<script>alert('로그인 후 이용해주세요.');</script>");
			out.flush();
			return mav;
		// 해당 유저로 검색했을때 값이 있으면 매칭진행중으로 판단하고 메인페이지로 이동 시켜주는 기능
		}else if(matchingcheck != 0){
			mav.setViewName("member/my_matching");
			out.println("<script>alert('매칭 진행중인 상태입니다.'); location.href='my_matching';</script>");
			out.flush();
		// 매칭을 할 수있는 모든 조건을 충족하였을 때 매칭을 시켜주고 데이터베이스에 값을 저장해주는 기능
		}else {
			maplist.put("dto", dto);
			dto.setRmid(session.getAttribute("mid").toString());
			randommatching.randommatchinginsert(dto);
			out.println("<script>alert('매칭 신청이 완료되었습니다.'); location.href='my_matching';</script>");
			out.flush();
			System.out.println("잘 등록하고 이동했쥬");
			// 현재 매칭 진행중인 컬럼들을 추출해주기위한 변수 선언
			List<RandomMatchingDTO> randto =  randommatching.randomatchinglist();
			// 인원수 2명인 매칭을 진행해주는 기능
			if(dto.getRmcount() == 2) {
				// 현재 입력된 값과 디비에 매칭 진행중인 값들을 비교하기위한 for문 선언
				for(RandomMatchingDTO e : randto) {
					dbval.append(e.getRmcount()).append(e.getRmlocation()).append(e.getRmtype())
					.append(e.getRmage()).append(e.getRmtime()).append(e.getRmsex());
					// 값이 일치하는 부분이 있다면 count를 증가시켜주어 인원수를 제어하기 위한 부분
					if(submit.toString().equals(dbval.toString())) {
						count2++;
						System.out.println("카운트가 증가"+count2);
					// 값이 다르다면 count를 증가시키지않는다.
					}else {
						System.out.println("다르다");
					}
					// count의 값이 현재 매칭 신청한 값의 count인원수가 일치하다면 해당 유저들의 id값을 받아와서 합쳐주는 기능
					if(count2 == dto.getRmcount()) {
						List<String> idlist = randommatching.idlist(dto);
						StringBuilder matchlist = new StringBuilder();
						// 유저아이디를 반복적으로 호출해서 StringBuilder값에 저장시켜주고 매칭이 완료된 매칭들의 db status값을 완료 상태로 변경해주는 기능
						for(String w : idlist) {
							maplist.put("mid",w);
							randommatching.updatestatus(maplist);
							matchlist.append(w).append("/");
							System.out.println("매칭성공아이디"+w);
							maplist.remove("mid");
						}
						// 매칭이 완료되면 테이블에 insert 해준다.
						dto.setMrresult(matchlist.toString());
						randommatching.randomresultinsert(dto);
						
						
					}
					// StringBuilder의 값이 기준이상 넘어가지 않도록 리셋해주는 기능
					dbval.setLength(0);
				}
				count2 = 0;
			}
			
			// 인원수 2명 부분과 동일합니다.
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
						
					}
					dbval.setLength(0);
				}
				count6 = 0;
			}
			
		}
		mav.setViewName("member/my_matching");
		return mav;
	}
	// 매칭내역을 노출시켜주는 기능
	@RequestMapping(value= "my_matching")
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
	
	@RequestMapping(value= "test")
	public String test() {
			return "test";
		}	
	
	
}
