package kr.co.teamd.mvc.advice;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;

import kr.co.teamd.mvc.dao.MemberInter;
import kr.co.teamd.mvc.dto.LoginlogDTO;
import kr.co.teamd.mvc.dto.MemberDTO;

@Component
@Aspect
public class LogAdvice {
	@Autowired
	private MemberInter mdao;
	
	@Around("execution(* kr.co.teamd.mvc.controller.MemberController.loginf*(..))")
	public ModelAndView memberLoginLog(ProceedingJoinPoint jp) {
		Object[] fd =jp.getArgs();
		ModelAndView rpath =null;
		String methodName=jp.getSignature().getName();
		LoginlogDTO logdto = new LoginlogDTO();
		if(methodName.equals("loginfprocess")) {
			try {
				rpath = (ModelAndView) jp.proceed();
				
				if(fd[0] instanceof HttpSession && fd[1] instanceof HttpServletRequest) {
					HttpSession session = (HttpSession) fd[0];
					HttpServletRequest request = (HttpServletRequest) fd[1];
					String mid = (String) session.getAttribute("mid");
					if(mid==null) {
						System.out.println("�α��� log���� ���� mid ���� null");
					}else {
						System.out.println("�α��� log���� ���� mid ���� "+mid);
						logdto.setMid(mid);
						logdto.setLip(request.getRemoteAddr());
						logdto.setLagent("PC");
						logdto.setLstatus("�α���");
						mdao.loginLogInsert(logdto);
						//////////////////////////////////////////////�α� insert�� �ʿ�
					}
				}
			} catch (Throwable e) {
				e.printStackTrace();
			}
		} else if(methodName.equals("loginfoutprocess")) {
			try {
			if(fd[0] instanceof HttpSession && fd[1] instanceof HttpServletRequest) {
				HttpSession session = (HttpSession) fd[0];
				HttpServletRequest request = (HttpServletRequest) fd[1];
				String mid = (String) session.getAttribute("mid");
			
				if (mid == null) {
				} else {
					logdto.setMid(mid);
					logdto.setLip(request.getRemoteAddr());
					logdto.setLagent("PC");
					logdto.setLstatus("�α׾ƿ�");
					mdao.loginLogInsert(logdto);
				}
			}
				rpath = (ModelAndView) jp.proceed();
			} catch (Throwable e) {
				e.printStackTrace();
			}
		}
		return rpath;
	}

}
