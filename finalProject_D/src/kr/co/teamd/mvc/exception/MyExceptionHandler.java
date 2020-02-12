package kr.co.teamd.mvc.exception;

import java.sql.SQLException;

import org.aspectj.lang.annotation.AfterThrowing;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

// ��� ��û�� ���� ��鿡�� ���ܰ� �߻� ���� �� ����� ����
// ���ܸ� �ϳ��� �����ϴ� ��� after-throwing
@ControllerAdvice
public class MyExceptionHandler {
	//@AfterThrowing �� ������
	@ExceptionHandler(Exception.class)
	public String myHandlerException(Model m, Exception e){
		System.out.println(e);
		System.out.println("--------------------");
		String returnval = "exception";
		if(e instanceof ArrayIndexOutOfBoundsException) {
			returnval = "arrayException";
		}else if(e instanceof DuplicateKeyException){
			m.addAttribute("errmsg", "Ʈ����ǰ��� �����Դϴ�.");
			returnval = "exception";
			System.out.println("���ܰ� �߻��ϼ̽��ϴ�.222");
		}else if(e instanceof DataIntegrityViolationException) {
			m.addAttribute("errmsg", "�ٽôٽôٽ� (Ʈ����� ����)");
			returnval = "ex";
			System.out.println("���� ���ܾ�?");
		}
		System.out.println("���ܰ� �߻��ϼ̽��ϴ�.333");
		e.printStackTrace();
		return returnval;
	}
	

}
