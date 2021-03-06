package kr.co.teamd.mvc.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.co.teamd.mvc.dao.BoardDAO;
import kr.co.teamd.mvc.dao.BoardInter;
import kr.co.teamd.mvc.dto.BoardDTO;
import kr.co.teamd.mvc.dto.BoardListAjaxDTO;
import kr.co.teamd.mvc.dto.BoardcommentDTO;
import kr.co.teamd.mvc.dto.ItemsboardDTO;
import kr.co.teamd.mvc.dto.ItemscommentDTO;
import kr.co.teamd.mvc.dto.ReservationDTO;

@Controller
public class TalkController {

	@Autowired
	private BoardInter bdao;
	@Autowired
	private BoardDAO rdao;

	// 김채은, 권세진
	@RequestMapping(value = "talklist") // 게시판리스트, 추천업체리스트
	public ModelAndView boardtalk(int check) {
		ModelAndView mav = new ModelAndView("talk/talklist");
		HashMap<String, Object> test = new HashMap<String, Object>();

		List<BoardListAjaxDTO> list = bdao.boardAjax(check);
		List<ReservationDTO> recommendlist = rdao.recommendlist();

		test.put("list", list);
		test.put("recommendlist", recommendlist);
		mav.addObject("test", test);

		return mav;
	}

	// 주성중
	@RequestMapping(value = "matchboardview")
	public String matchboardview() {
		return "member/my_matchboard";
	}

	// 김채은
	@RequestMapping(value = "talk_detail") // 글 상세보기
	public ModelAndView talkDetail(int bnum, BoardcommentDTO bcdto) {

		ModelAndView mav = new ModelAndView("talk/talk_detail");
		BoardListAjaxDTO dto = bdao.boardInfo(bnum);
		List<BoardcommentDTO> comment = bdao.boardCommentList(bcdto);
		mav.addObject("dto", dto);
		mav.addObject("comment", comment);
		return mav;
	}

	// 김채은
	@RequestMapping(value = "itemstalk_detail") // 글 상세보기
	public ModelAndView talkDetail2(int ibnum, ItemscommentDTO icdto) {
		ModelAndView mav = new ModelAndView("talk/itemstalk_detail");

		ItemsboardDTO dto = bdao.itemsboardinfo(ibnum);
		List<ItemscommentDTO> comment = bdao.itemsCommentList(icdto);
		mav.addObject("dto", dto);
		mav.addObject("comment", comment);
		return mav;
	}

	// 김채은
	@RequestMapping(value = "itemsboard") // 중고거래
	public String itemsboard() {
		return "member/itemsboard";
	}

	// 김채은
	@RequestMapping(value = "reportInsert") // 일반 게시글 신고하기
	public ModelAndView reportInsert(int bnum, HttpSession session, HttpServletResponse response) throws IOException {
		ModelAndView mav = new ModelAndView();
		PrintWriter out = response.getWriter();
		// 로그인 아닐시에는 로그인창으로 이동시켜주는 기능
		if (session.getAttribute("mid") == null) {
			mav.setViewName("member/login");
			out.println("<script>alert('로그인 후 이용해주세요.');</script>");
			out.flush();
			return mav;
			// 해당 유저가 현재 매칭중인 상태를 알기위한 값 추출
		} else {
			bdao.reportInsert(bnum);
		}
		BoardListAjaxDTO dto = bdao.boardInfo(bnum);
		mav.addObject("dto", dto);
		mav.setViewName("talk/talk_detail");
		out.println("<script>alert('신고가 접수되었습니다.');</script>");
		out.flush();
		return mav;
	}

	// 김채은
	@RequestMapping(value = "itemsReportInsert") // 중고 게시글 신고하기
	public ModelAndView itemsReportInsert(int ibnum, HttpSession session, HttpServletResponse response)
			throws IOException {
		ModelAndView mav = new ModelAndView();
		PrintWriter out = response.getWriter();
		// 로그인 아닐시에는 로그인창으로 이동시켜주는 기능
		if (session.getAttribute("mid") == null) {
			mav.setViewName("member/login");
			out.println("<script>alert('로그인 후 이용해주세요.');</script>");
			out.flush();
			return mav;
		} else {
			bdao.itemsReportInsert(ibnum);
		}
		ItemsboardDTO dto = bdao.itemsboardinfo(ibnum);
		mav.addObject("dto", dto);
		mav.setViewName("talk/itemstalk_detail");
		out.println("<script>alert('신고가 접수되었습니다.');</script>");
		out.flush();
		return mav;
	}

	// ---------------------------------재민 영역
	// 시작-------------------------------------------
	// --------------------------- 멤버 내글쓰기 게시글
	// 작성--------------------------------------
	@RequestMapping(value = "my_board", method = RequestMethod.POST) // 내글쓰기 게시글 작성
	public ModelAndView insertmyboard(@ModelAttribute("bdto") BoardDTO bdto, HttpSession session,
			HttpServletRequest request) {

		if (bdto.getBtype1().equals("0")) {
			bdto.setBtype1("유저조행기");
			if (bdto.getBtype2().equals("1")) {
				bdto.setBtype2("바다조행기");
			} else if (bdto.getBtype2().equals("2")) {
				bdto.setBtype2("민물조행기");
			}
		} else if (bdto.getBtype1().equals("1")) {
			bdto.setBtype1("유용한정보");
			bdto.setBtype2("유용한정보");
			bdto.setHname("");
		} else if (bdto.getBtype1().equals("2")) {
			bdto.setBtype1("낚시지식인");
			bdto.setBtype2("낚시지식인");
			bdto.setHname("");
		} else if (bdto.getBtype1().equals("3")) {
			bdto.setBtype1("자유게시판");
			bdto.setBtype2("자유게시판");
			bdto.setHname("");
		}

		// 유저조행기 별점 평점
		bdto.setBstar(bdto.getBstar());

		// 이미지 업로드
		String path = session.getServletContext().getRealPath("/resources/images/"); // session.getServletContext().getRealPath("/resources/images/")

		StringBuffer upload = new StringBuffer();
		upload.append(path);
		upload.append(bdto.getBfile().getOriginalFilename());
		File img = new File(upload.toString());
		try {
			bdto.getBfile().transferTo(img);
		} catch (IllegalStateException | IOException e) {
			// e.printStackTrace();
		}
		// DB로 들어갈 파일명으로 변경
		bdto.setBimage(bdto.getBfile().getOriginalFilename());

		bdao.myboardAdd(bdto);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:talklist?check=1");
		return mav;
	}

	/*---------------------------중고 게시글-----------------------------------*/
	@RequestMapping(value = "itemsboardadd", method = RequestMethod.POST) // 내글쓰기 게시글 작성
	public ModelAndView insertitboard(@ModelAttribute("itbdto") ItemsboardDTO itbdto, HttpSession session,
			HttpServletRequest request) {
		// 이미지 업로드
		String path = session.getServletContext().getRealPath("/resources/images/"); // session.getServletContext().getRealPath("/resources/images/")
		StringBuffer upload = new StringBuffer();
		upload.append(path);
		upload.append(itbdto.getIbfile().getOriginalFilename());
		File img2 = new File(upload.toString());
		try {
			itbdto.getIbfile().transferTo(img2);
		} catch (IllegalStateException | IOException e) {
			// e.printStackTrace();
		}
		// DB로 들어갈 파일명으로 변경
		itbdto.setIbimage(itbdto.getIbfile().getOriginalFilename());
		bdao.itemboardAdd(itbdto);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:talklist?check=2");
		return mav;
	}

}

// -----------------------------------재민 영역
// 끝-------------------------------------------
