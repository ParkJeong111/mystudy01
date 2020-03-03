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
//��ä�� Advice

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
		// System.out.println("Before���� hname �޾ƿԳ� : " + (String) fd[1]);
		ModelAndView mav = null;
		// ȸ���� ���� if�� ���� ����
		if (mid != null) {
			RecenthostDTO rhdto = new RecenthostDTO();
			String hname = null;
			try {
				hname = URLDecoder.decode((String) fd[1], "UTF-8"); // �������̸� �ޱ�����
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
			// HttpSession session = (HttpSession) fd[3]; // ���̵� �ޱ�����

			// System.out.println("Before���� hname �޾ƿԳ� : " + (String) fd[1]);
			// System.out.println("Before���� mid �޾ƿԳ� : " + ((HttpSession) fd[2]).getAttribute("mid"));
			// String mid = (String) session.getAttribute("mid");
			rhdto.setMid(mid);
			rhdto.setHname(hname);
			mdao.recentHostInsert(rhdto);
		}
		// ��ȸ���� ���� �α׳����� �ʱ� ���� �ٷ� ����
		return mav;
	}

}
