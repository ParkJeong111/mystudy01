package kr.co.teamd.mvc.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.teamd.mvc.dao.MainInter;
import kr.co.teamd.mvc.dto.BoardDTO;
import kr.co.teamd.mvc.dto.HostDTO;

@Controller
public class DefaultController {

	@Autowired
	private MainInter maindao;

	//박정연
	@RequestMapping(value = { "/", "index" })
	public ModelAndView defaultMethod() { // 메인화면 출력
		ModelAndView mav = new ModelAndView();
		List<BoardDTO> sealist = maindao.reviewsList("바다"); // 바다이용후기
		mav.addObject("sealist", sealist);
		List<BoardDTO> freshlist = maindao.reviewsList("민물"); // 민물이용후기
		mav.addObject("freshlist", freshlist);
		Map<Object, Object> res = maindao.mainRes(); // 하단에 기업 정보 값
		mav.addObject("res", res.get(null));
		Map<Object, Object> res1 = (Map<Object, Object>) res.get(null);
		mav.addObject("member", res1.get("MEMBER")); // 회원 수
		mav.addObject("host", res1.get("HOST")); // 가맹점 수
		mav.addObject("reservation", res1.get("RESERVATION"));// 예약건 수
		mav.addObject("board", res1.get("BOARD")); // 이용후기게시글 수
		mav.setViewName("index");
		List<HostDTO> hdto = maindao.mainRec(); // 추천 가맹점(예약건 많은 순으로 추천해줌)
		mav.addObject("hdto", hdto);
		return mav;
	}

}
