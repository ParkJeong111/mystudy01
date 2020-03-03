package kr.co.teamd.mvc.advice;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

import javax.servlet.http.HttpSession;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;

import kr.co.teamd.mvc.dao.MemberInter;
import kr.co.teamd.mvc.dto.RecenthostDTO;
//김채은 Advice

@Component
@Aspect
public class recentHostAdvice {
	@Autowired
	private MemberInter mdao;

	@Before("execution(* kr.co.teamd.mvc.controller.itemslistController.hostDetail(..))")
	public ModelAndView myrecenthostLog(JoinPoint jp) {
		Object[] fd = jp.getArgs();
		HttpSession session = (HttpSession) fd[2];
		String mid = (String) session.getAttribute("mid");
		// System.out.println("Before에서 hname 받아왔나 : " + (String) fd[1]);
		ModelAndView mav = null;
		// 회원일 때는 if문 로직 실행
		if (mid != null) {
			RecenthostDTO rhdto = new RecenthostDTO();
			String hname = null;
			try {
				hname = URLDecoder.decode((String) fd[1], "UTF-8"); // 가맹점이름 받기위해
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
			// HttpSession session = (HttpSession) fd[3]; // 아이디 받기위해

			// System.out.println("Before에서 hname 받아왔나 : " + (String) fd[1]);
			// System.out.println("Before에서 mid 받아왔나 : " + ((HttpSession) fd[2]).getAttribute("mid"));
			// String mid = (String) session.getAttribute("mid");
			rhdto.setMid(mid);
			rhdto.setHname(hname);
			mdao.recentHostInsert(rhdto);
		}
		// 비회원일 때는 로그남기지 않기 위해 바로 리턴
		return mav;
	}

}
