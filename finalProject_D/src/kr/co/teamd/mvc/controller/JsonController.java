package kr.co.teamd.mvc.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import kr.co.teamd.mvc.dao.AdminQnaDAO;
import kr.co.teamd.mvc.dao.BoardInter;
import kr.co.teamd.mvc.dao.MainImple;
import kr.co.teamd.mvc.dao.MemberInter;
import kr.co.teamd.mvc.dao.HostInter;
import kr.co.teamd.mvc.dao.AdminHostInter;

import kr.co.teamd.mvc.dto.BoardListAjaxDTO;
import kr.co.teamd.mvc.dto.HostDTO;
import kr.co.teamd.mvc.dto.HostSearchDTO;
import kr.co.teamd.mvc.dto.HostlistDTO;
import kr.co.teamd.mvc.dto.ItemsboardDTO;
import kr.co.teamd.mvc.dto.QnaDTO;
import kr.co.teamd.mvc.dto.ReservationDTO;

@RestController
public class JsonController {

	@Autowired
	private AdminHostInter hdao;

	@Autowired
	private BoardInter bdao;

	@Autowired
	private AdminQnaDAO qdao;

	@Autowired
	private MemberInter mdao;

	@Autowired
	private HostInter hostdao;
	
	@Autowired
	private MainImple autodao;

	@RequestMapping("talkAjax")
	public List<BoardListAjaxDTO> boardAjax(@RequestParam("check") int check) {
		List<BoardListAjaxDTO> bdto = bdao.boardAjax(check);
		return bdto;

	}

	@RequestMapping("itemsboardAjax") // 중고거래 게시판리스트
	public List<ItemsboardDTO> itemsboardAjax(@RequestParam("check") int check) {
		List<ItemsboardDTO> list = bdao.itemsboardAjax(check);
		return list;
	}

	@RequestMapping("hostinfo")
	public HostDTO hostinfo(@RequestParam("hname") String hname) {
		HostDTO hdto = hdao.hostinfo(hname);
		return hdto;
	}

	@RequestMapping("qnainfo")
	public QnaDTO qnainfo(@RequestParam("qnum") int qnum) {
		QnaDTO qdto = qdao.qnainfo(qnum);
		return qdto;
	}

	@RequestMapping(value = "my_reservationtype") // 예약내역버튼 선택
	public List<ReservationDTO> reservationtype(@RequestParam("type") int type, HttpSession session,
			HttpServletResponse resp) {
		String mid = (String) session.getAttribute("mid");
		HashMap<Object, Object> map = new HashMap<Object, Object>();
		map.put("mid", mid);
		map.put("type", type);
		List<ReservationDTO> rlist = mdao.myReservation(map);
		return rlist;
	}

	@RequestMapping(value = "searchlist")
	public List<HostlistDTO> searchList(HostSearchDTO hsdto) {
		if (hsdto.getStar().equals("undefined")) {
			hsdto.setStarnum(0);
		} else {
			hsdto.setStarnum(Integer.parseInt(hsdto.getStar()));
		}
		List<HostlistDTO> hostlist = hostdao.hostSearch(hsdto);
		return hostlist;
	}

	
	@RequestMapping("autosearchlist")
	public List<HostDTO> autosearchlist(@RequestParam("hname") String hname) {
		List<HostDTO> autosearchlist = autodao.autosearchlist(hname);
		System.out.println("여기 잘 나오니?");
		return autosearchlist;
	}


	@RequestMapping("hnamechk")
	public int hnamechk(String hname) {
		return hdao.hnamechk(hname);
	}
}
