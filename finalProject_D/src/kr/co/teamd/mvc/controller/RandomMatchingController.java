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
	private String check = "0";
	// mybatis에 인자값을 2개이상 보내기위해 선언
	HashMap<String, Object> maplist = new HashMap<String, Object>();
	// 해당 유저가 현재 매칭중인지를 확인하기위한 값 선언
	private int matchingcheck = 0;
	// 랜덤 매칭 기능
	@RequestMapping(value= "randommatching") 
	public ModelAndView randommatching(RandomMatchingDTO dto,HttpSession session,HttpServletResponse response) throws IOException {
		ModelAndView mav = new ModelAndView();
		// 유저들이 선택한 관심사들을 append로 묶어서 고유의 문자열을 만들기 위한 StringBuilder 선언
		StringBuilder submit = new StringBuilder();
		// 특정 상황 시 alert과 뷰이동을 하기 위한 PrintWriter 선언
		PrintWriter out = response.getWriter();
		// 관심사들을  append해서 고유의 문자열을 만들기 위한 작업
		submit.append(dto.getRmcount()).append(dto.getRmlocation()).append(dto.getRmtype())
		.append(dto.getRmage()).append(dto.getRmtime()).append(dto.getRmsex());
		// DB에 있는 값중에 submit과 일치하는것이 있는지 체크해주기위한 StringBuilder선언
		StringBuilder dbval = new StringBuilder();
		
		// 로그인 아닐시에는 로그인창으로 이동시켜주는 기능
		if(session.getAttribute("mid") == null) {
			mav.setViewName("member/login");
			out.println("<script>alert('로그인 후 이용해주세요.'); location.href = 'login';</script>");
			out.flush();
		// 현재 RandomMatching 테이블에서 해당 유저의 매칭 대기 상태의 매칭정보가 있는지 체크해주는 기능(rmstatus = 0)
		}else {
			matchingcheck = randommatching.matchingidcheck(session.getAttribute("mid").toString());
		}
		
		// 로그인 아닐시에는 로그인창으로 이동시켜주는 기능
		if(session.getAttribute("mid") == null) {
			mav.setViewName("member/login");
			out.println("<script>alert('로그인 후 이용해주세요.'); location.href = 'login';</script>");
			out.flush();
		// 위에서 넣어준 matchingcheck 값이 1이상이라면 현재 매칭 대기 상태의 매칭정보가 있는것이기때문에 매칭을 진행 할 수 없도록 해주는 기능
		}else if(matchingcheck != 0){
			mav.setViewName("member/my_matching");
			out.println("<script>alert('매칭 진행중인 상태입니다.'); location.href='my_matching';</script>");
			out.flush();
		// 매칭을 할 수있는 모든 조건을 충족하였을 때 매칭을 시켜주고 데이터베이스에 값을 저장해주는 기능
		}else {
			// jsp에서 가져온 dto값을 hashmap을 통해 활용하기 위해 저장
			maplist.put("dto", dto);
			dto.setRmid(session.getAttribute("mid").toString());
			// 해당 정보들을 활용하여 insert해주는 기능
			randommatching.randommatchinginsert(dto);
			
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
						// 현재 관심사, 인원수 및 유저가 선택한 정보와 일치하는 정보가 있는지 확인해주는 기능
						List<String> idlist = randommatching.idlist(dto);
						StringBuilder matchlist = new StringBuilder();
						// 유저아이디를 반복적으로 호출해서 StringBuilder값에 저장시켜주고 매칭이 완료된 매칭들의 db status값을 완료 상태로 변경해주는 기능
						for(String w : idlist) {
							maplist.put("mid",w);
							// 생성한 고유 문자열이 인원수에 맞게 세팅이 되면 해당 랜덤매칭을 매칭완료 상태로 변경해주는 기능(mbstatus = 1)
							randommatching.updatestatus(maplist);
							// 해당 매칭에 신청한 아이디들을 append를 통해 하나의 문자열로 만들어준다.(ex : juju/chen/tony/)
							matchlist.append(w).append("/");
							System.out.println("매칭성공아이디"+w);
							maplist.remove("mid");
						}
						// 매칭이 완료되면 matchingresult 테이블에 완료된 매칭값을 insert한다.
						dto.setMrresult(matchlist.toString());
						randommatching.randomresultinsert(dto);
						check = "1";
						System.out.println("check값은 몇이냐"+check);
						System.out.println("이건아니잖아=======================================================");
						out.println("<script>alert('매칭 신청이 완료되었습니다.'); location.href='my_matching';</script>");
						out.flush();
					}
					else {
						System.out.println("이건아니잖아=======================================================");
						out.println("<script>alert('매칭 신청이 완료되었습니다.'); location.href='my_matching';</script>");
						out.flush();
					}
						
					
					// StringBuilder의 값이 기준이상 넘어가지 않도록 리셋해주는 기능
					dbval.setLength(0);
				}
				// 모든 매칭이 완료되었을때 인원수를 체크하는 count값을 초기화 해준다.
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
				// 인원수 2명 부분과 동일합니다
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
		// 로그인 하지 않은 상태라면  로그인페이지로 이동 시켜준다.
		if (mid == null) {
			mav.setViewName("member/login");
			out.println("<script>alert('로그인 후 이용해주세요.');</script>");
			out.flush();
			return mav;
			
		}else {
			// 내가 현재 매칭한 내역을 노출시켜주는 기능
			List<RandomMatchingDTO> ranlist = randommatching.randomlistinfo(mid);
			HashMap<String, Object> list = new HashMap<String, Object>();
			list.put("req", ranlist);
			list.put("check", check);
			mav.addObject("list",list);
			mav.setViewName("member/my_matching");
			System.out.println("check마지막값"+check);
			check = "0";
			return mav;
		}	
		
	}
	
	@RequestMapping(value= "test")
	public String test() {
			return "test";
		}	
	
	
}
