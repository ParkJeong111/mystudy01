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

import kr.co.teamd.mvc.dao.MatchingBoardInter;
import kr.co.teamd.mvc.dao.MatchingInter;
import kr.co.teamd.mvc.dto.MatchingboardDTO;

@Controller
public class MatchingController {
	
	private int personcount;
	private int statuscount;
	
	@Autowired
	private MatchingInter matchingdao;
	
	@Autowired MatchingBoardInter matchingboarddao;

	// 현재 함께자바에 올라온 내용을 데이터베이스에서 확인하여 노출시켜주는 기능
	@RequestMapping(value= "matching")  //함께자바 
	public ModelAndView matching() {
		ModelAndView mav = new ModelAndView();
		List<MatchingboardDTO> dto =  matchingdao.matchinglist();
		mav.addObject("matchlist",dto);
		mav.setViewName("matching");
		return mav;
	}
	// 함께자바게시판 글 등록 기능
	@RequestMapping(value= "matchingcreate")  //함께자바 
	public ModelAndView matchingcreate(MatchingboardDTO dto, HttpSession session, HttpServletResponse response) throws IOException {
		// mybatis에서 insert를 할때 필요한 파라미터값을 보내기위한 hashmap
		HashMap<String, Object> mbinsert = new HashMap<String, Object>();
		// 상황에 맞는 alert 및 뷰이동을 위해 선언한 Printwriter
		PrintWriter out = response.getWriter();
		// mbtag를 "/" 형식에서 "#"형식으로 변경하기 위한 StringBuilder(ex : 바다/민물  -> #바다#민물)
		StringBuilder sb = new StringBuilder();
		String sign = "#";
		String md = "0";
		// javascript에서 날짜 형식 편집 기능이 작동하지 않아 자바에서 날짜 형식 변경을 위한 기능
		// 3/11/2020 의 형식을 20/03/11 식으로 형태를 변경해주는 기능
		// split을 통해 해당 값들을 잘라서 배열에 넣어준다.
		String[] modifysdate = dto.getMbstartdate().split("/");
		// 월과 일 형식에서 한자리일때 해당 부분을 두자리로 변경시켜주는 기능(3월 1일의 경우 3/1로 표현되지만 03/01 이런형식으로 변경시키기 위한 기능
		if (modifysdate[0].length() == 1) {
			modifysdate[0] = md.concat(modifysdate[0]);
		}
		if (modifysdate[1].length() == 1) {
			modifysdate[1] = md.concat(modifysdate[1]);
		}
		// 변경된 형식대로 dto에 set해준다.
		dto.setMbstartdate(modifysdate[2].substring(2, 4) + "/" + modifysdate[0] + "/" + modifysdate[1]);
		
		// 취미 형식을 "/"형식에서 "#"형식으로 변경 시키기 위한 기능(ex : 바다/민물 => #바다#민물)
		String[] hobby = dto.getMbtag().split("/");
		for(String e : hobby) {
			sb.append("#").append(e);
		}
		// 이미지 문자열에서  경로는 제거하기 위한 기능(ex : C:\myroot\바다.jpg => 바다.jpg)
		String[] image = dto.getMbimage().split("\\\\");
		String fileimage = "";
		for(String e : image) {
			fileimage = e;
		}
		// 이미지 이름으로 변경 후 dto에 set해주고 해당 dto를 hashmap에 put해준다.
		dto.setMbimage(fileimage);
		dto.setMbtag(sb.toString());
		mbinsert.put("dto", dto);
		// 현재 로그인 상태가 아니라면 alert 노출 후 로그인 페이지로 이동시켜준다.
		if(session.getAttribute("mid") == null) {
			out.println("<script>alert('로그인 후 이용해주세요.');</script>");
			out.flush();
		// 현재 로그인 상태라면 mid를 hashmap에 넣어준다.
		}else {
			mbinsert.put("mid", session.getAttribute("mid"));
		}
		// 입력된 hashmap을 토대로 matchingboard 테이블에 insert해준다.
		matchingboarddao.matchingboardinsert(mbinsert);
		ModelAndView mav = new ModelAndView();
		// 함께자바 페이지로 이동시켜줄 때 matchingboard에 있는 list를 뽑아준다.
		List<MatchingboardDTO> dto1 =  matchingdao.matchinglist();
		mav.addObject("matchlist",dto1);
		mav.setViewName("matching");
		return mav;
	}
	// 함께자바 상세페이지 노출
	@RequestMapping(value= "matchpage")  //함께자바 
	public ModelAndView matchpage(int mbnum) {
		ModelAndView mav = new ModelAndView();
		// jsp에서 선택한 mbnum을 기반으로 matchingboard상세 페이지 정보를 불러온다.
		List<MatchingboardDTO> dto = matchingboarddao.matchpage(mbnum);
		mav.addObject("matchpage",dto);
		mav.setViewName("matchingdetail");
		return mav;
	}
	
	@RequestMapping(value= "matchadd")  //함께자바 
	public ModelAndView matchadd(int mbnum,HttpServletResponse response,HttpSession session) throws IOException {
		ModelAndView mav = new ModelAndView();
		String mid  = "";
		HashMap<String, Object> valupdate = new HashMap<String, Object>();
		HashMap<String, Object> resultcheck = new HashMap<String, Object>();
		List<MatchingboardDTO> dto = matchingboarddao.countselect(mbnum);
		
		PrintWriter out = response.getWriter();
		if(session.getAttribute("mid") == null) {
			out.println("<script>alert('로그인이 필요한 기능입니다.');</script>");
			out.println("<script>location.href = 'login';</script>");
			out.flush();
		}else {
			mid = (String) session.getAttribute("mid");
		}
		for(MatchingboardDTO e : dto) {
			personcount = e.getMbperson();
			statuscount = Integer.parseInt(e.getMbstatus());
		}
		resultcheck.put("mbnum", mbnum);
		resultcheck.put("mid", mid);
		int check = matchingboarddao.boardmatchcheck(resultcheck);
		// System.out.println("카운트가 몇인가요" + check);
		
		if(personcount == statuscount) {
			out.println("<script>alert('출조인원이 초과하였습니다.');</script>");
			out.println("<script>location.href = 'index';</script>");
			out.flush();
		}else if(check == 1) {
			out.println("<script>alert('해당글에 이미 신청하였습니다.');</script>");
			out.println("<script>location.href = 'index';</script>");
			out.flush();
		}
		else {
			valupdate.put("mid", mid);
			valupdate.put("mbnum", mbnum);
			matchingboarddao.statusadd(valupdate);
			out.println("<script>alert('신청이 완료되었습니다.');</script>");
			out.println("<script>location.href = 'index';</script>");
			out.flush();
		}
		mav.setViewName("index");
		return mav;
	}
	
	
	
	
	
	
	
	

	
}
