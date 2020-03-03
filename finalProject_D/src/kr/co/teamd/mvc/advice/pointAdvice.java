package kr.co.teamd.mvc.advice;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;

import kr.co.teamd.mvc.dao.MemberInter;
import kr.co.teamd.mvc.dto.PointlogDTO;

//주성중 Advice

@Component
@Aspect
public class pointAdvice {
	
	@Autowired
	private MemberInter mdao;
	
	@Around("execution(* kr.co.teamd.mvc.controller.GameController.mymatch*(..))")
	public ModelAndView pointLoginLog(ProceedingJoinPoint jp) {
		// System.out.println("pointlog 생성 지점");
		Object[] fd =jp.getArgs();
		ModelAndView rpath =null;
		String methodName=jp.getSignature().getName();
		PointlogDTO pointdto = new PointlogDTO();
		if(methodName.equals("mymatching")) {
			try {
				rpath = (ModelAndView) jp.proceed();
				
				if(fd[0] instanceof HttpSession && fd[1] instanceof HttpServletResponse) {
					HttpSession session = (HttpSession) fd[0];
					HttpServletResponse request =  (HttpServletResponse) fd[1];
					String mid = (String) session.getAttribute("mid");
					if(mid==null) {
						// System.out.println("로그인 log에서 보는 mid 값이 null");
					}else {
						// System.out.println("로그인 log에서 보는 mid 값이 "+mid);
						pointdto.setMid(mid);
						pointdto.setPlpoint((int) fd[3]);
						mdao.gamepointlogInsert(pointdto);
					}
				}
			} catch (Throwable e) {
				e.printStackTrace();
			}
		} 
		return rpath;
	}

}
