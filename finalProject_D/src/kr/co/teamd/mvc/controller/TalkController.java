package kr.co.teamd.mvc.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import kr.co.teamd.mvc.dao.BoardDaoInter;
import kr.co.teamd.mvc.dto.BoardDTO;
import kr.co.teamd.mvc.dto.BoardListAjaxDTO;
import kr.co.teamd.mvc.dto.ItemsboardDTO;

@Controller
public class TalkController {

	@Autowired
	private BoardDaoInter bdao;

	@RequestMapping(value = "talklist") // 게시판리스트
	public ModelAndView boardtalk(int check) {
		ModelAndView mav = new ModelAndView("talk/talklist");

		List<BoardListAjaxDTO> list = bdao.boardAjax(check);
		mav.addObject("list", list);
		return mav;
	}

	@RequestMapping(value = "talk_detail") // 글 상세보기
	public ModelAndView talkDetail(int bnum) {
		ModelAndView mav = new ModelAndView("talk/talk_detail");
		BoardListAjaxDTO dto = bdao.boardInfo(bnum);
		System.out.println("여기인가요?" + dto.getBtype2());
		mav.addObject("dto", dto);
		return mav;
	}

	@RequestMapping(value = "itemstalk_detail") // 글 상세보기
	public ModelAndView talkDetail2(int ibnum) {
		ModelAndView mav = new ModelAndView("talk/itemstalk_detail");
		ItemsboardDTO dto = bdao.itemsboardinfo(ibnum);
		mav.addObject("dto", dto);
		return mav;
	}

	
	  @RequestMapping(value = "itemsboard") // 중고거래
	  public String itemsboard() {
	  return "member/itemsboard"; 
	  }
	 
	// ---------------------------------재민 영역
	// 시작-------------------------------------------
	// --------------------------- 멤버 내글쓰기 게시글
	// 작성--------------------------------------
	@RequestMapping(value = "my_board", method = RequestMethod.POST) // 내글쓰기 게시글 작성
	public ModelAndView insertmyboard(@ModelAttribute("bdto") BoardDTO bdto, HttpSession session,
			HttpServletRequest request) {

		// 입력 값 출력되는지 테스트
//		System.out.println(bdto.getBtype1());
//		System.out.println(bdto.getBtype2());
//		System.out.println(bdto.getHname());
//		System.out.println(bdto.getBtitle());
//		System.out.println(bdto.getBimage());
//		System.out.println(bdto.getBfile());
//		System.out.println(bdto.getBcontent());
//		System.out.println(bdto.getBstar());
		// 게시글작성 type1, type2 컬럼값 지정
		if (bdto.getBtype1().equals("0")) {
			bdto.setBtype1("유저조행기");
			if (bdto.getBtype2().equals("0")) {
				bdto.setBtype2("바다조행기");
			} else if (bdto.getBtype2().equals("1")) {
				bdto.setBtype2("민물조행기");
			}
		} else if (bdto.getBtype1().equals("1")) {
			bdto.setBtype1("유용한정보");
			bdto.setBtype2("유용한정보");
		} else if (bdto.getBtype1().equals("2")) {
			bdto.setBtype1("낚시지식인");
			bdto.setBtype2("낚시지식인");
		} else if (bdto.getBtype1().equals("3")) {
			bdto.setBtype1("자유게시판");
			bdto.setBtype2("자유게시판");
		}

		// 게시글 작성 낚시터 상호명 지정
		if (bdto.getHname().equals("0")) {
			bdto.setHname("해적호");
		} else if (bdto.getHname().equals("1")) {
			bdto.setHname("해적왕실내낚시카페(광명점)");
		} else if (bdto.getHname().equals("2")) {
			bdto.setHname("광명호");
		} else if (bdto.getHname().equals("3")) {
			bdto.setHname("대한낚시터");
		} else if (bdto.getHname().equals("4")) {
			bdto.setHname("화이팅낚시카페");
		} else if (bdto.getHname().equals("5")) {
			bdto.setHname("하나낚시");
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
