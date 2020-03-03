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

	//������
	@RequestMapping(value = { "/", "index" })
	public ModelAndView defaultMethod() { // ����ȭ�� ���
		ModelAndView mav = new ModelAndView();
		List<BoardDTO> sealist = maindao.reviewsList("�ٴ�"); // �ٴ��̿��ı�
		mav.addObject("sealist", sealist);
		List<BoardDTO> freshlist = maindao.reviewsList("�ι�"); // �ι��̿��ı�
		mav.addObject("freshlist", freshlist);
		Map<Object, Object> res = maindao.mainRes(); // �ϴܿ� ��� ���� ��
		mav.addObject("res", res.get(null));
		Map<Object, Object> res1 = (Map<Object, Object>) res.get(null);
		mav.addObject("member", res1.get("MEMBER")); // ȸ�� ��
		mav.addObject("host", res1.get("HOST")); // ������ ��
		mav.addObject("reservation", res1.get("RESERVATION"));// ����� ��
		mav.addObject("board", res1.get("BOARD")); // �̿��ı�Խñ� ��
		mav.setViewName("index");
		List<HostDTO> hdto = maindao.mainRec(); // ��õ ������(����� ���� ������ ��õ����)
		mav.addObject("hdto", hdto);
		return mav;
	}

}
