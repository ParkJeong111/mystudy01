package kr.co.teamd.mvc.exception;

import java.sql.SQLException;

import org.aspectj.lang.annotation.AfterThrowing;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

// 모든 요청에 대한 빈들에서 예외가 발생 했을 때 사용자 정의
// 예외를 하나로 적용하는 방법 after-throwing
@ControllerAdvice
public class MyExceptionHandler {
	//@AfterThrowing 도 가능함
	@ExceptionHandler(Exception.class)
	public String myHandlerException(Model m, Exception e){
		System.out.println(e);
		System.out.println("--------------------");
		String returnval = "exception";
		if(e instanceof ArrayIndexOutOfBoundsException) {
			returnval = "arrayException";
		}else if(e instanceof DuplicateKeyException){
			m.addAttribute("errmsg", "트랜잭션관련 예외입니다.");
			returnval = "exception";
			System.out.println("예외가 발생하셨습니다.222");
		}else if(e instanceof DataIntegrityViolationException) {
			m.addAttribute("errmsg", "다시다시다시 (트랜잭션 예외)");
			returnval = "ex";
			System.out.println("무슨 예외야?");
		}
		System.out.println("예외가 발생하셨습니다.333");
		e.printStackTrace();
		return returnval;
	}
	

}
