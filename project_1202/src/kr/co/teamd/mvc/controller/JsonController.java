package kr.co.teamd.mvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kr.co.teamd.mvc.dao.BoardDaoInter;
import kr.co.teamd.mvc.dao.HostDaoInter;
import kr.co.teamd.mvc.dto.BoardDTO;
import kr.co.teamd.mvc.dto.BoardListAjaxDTO;
import kr.co.teamd.mvc.dto.HostDTO;
import kr.co.teamd.mvc.dto.ItemsboardDTO;


@RestController
public class JsonController {

	@Autowired
	private HostDaoInter hdao;
	@Autowired
	private BoardDaoInter bdao; 
	
	
	
	
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

}
