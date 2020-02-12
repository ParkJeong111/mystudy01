package kr.co.teamd.mvc.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import kr.co.teamd.mvc.dao.AdminQnaDAO;
import kr.co.teamd.mvc.dao.BoardDaoInter;
import kr.co.teamd.mvc.dao.HostDaoInter;
import kr.co.teamd.mvc.dto.BoardListAjaxDTO;
import kr.co.teamd.mvc.dto.HostDTO;
import kr.co.teamd.mvc.dto.ItemsboardDTO;
import kr.co.teamd.mvc.dto.QnaDTO;


@RestController
public class JsonController {

	@Autowired
	private HostDaoInter hdao;
	@Autowired
	private BoardDaoInter bdao; 
	
	@Autowired
	private AdminQnaDAO qdao;
	
	
	
	
	@RequestMapping("talkAjax")
	public List<BoardListAjaxDTO> boardAjax(@RequestParam("check") int check){
		 List<BoardListAjaxDTO> bdto = bdao.boardAjax(check);
		 return bdto;
		 
	}
	
	@RequestMapping("itemsboardAjax")  //중고거래 게시판리스트
	public List<ItemsboardDTO> itemsboardAjax(@RequestParam("check") int check) {
		List<ItemsboardDTO> list = bdao.itemsboardAjax(check);
		return list;
	}
	
	@RequestMapping("hostinfo")
	public HostDTO hostinfo (@RequestParam("hname") String hname){
		HostDTO hdto  = hdao.hostinfo(hname);
		return hdto;
	}
	@RequestMapping("qnainfo")
	public QnaDTO qnainfo(@RequestParam("qnum") int qnum) {
		QnaDTO qdto = qdao.qnainfo(qnum);
		return qdto;
	}
	
	
}
