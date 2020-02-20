package kr.co.teamd.mvc.controller;

import java.util.HashMap;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import kr.co.teamd.mvc.dao.AdminHostInter;
import kr.co.teamd.mvc.dao.AdminQnaDAO;
import kr.co.teamd.mvc.dao.BoardInter;
import kr.co.teamd.mvc.dao.HostInter;
import kr.co.teamd.mvc.dao.MainDAO;
import kr.co.teamd.mvc.dao.MemberInter;
import kr.co.teamd.mvc.dto.BoardListAjaxDTO;
import kr.co.teamd.mvc.dto.ChkBTypeDTO;
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
	private MainDAO autodao;

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

	// 업체리스트 검색
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
	
	@RequestMapping(value = "btype2select")    // 게시글 작성 type2 호스트 낚시터 이름 
	public List<String> btype2select(HttpServletRequest request, int btypeValue) {
		HttpSession session = request.getSession();
		String mid = (String) session.getAttribute("mid");
		 ChkBTypeDTO chkbdto = new ChkBTypeDTO();
		 
		if (btypeValue == 1) {
			chkbdto.setHtype("바다");
		} else if (btypeValue == 2) {
			chkbdto.setHtype("민물");
		}
		chkbdto.setMid(mid);
		List<String> hnamelist = bdao.btype2select(chkbdto);
		
		return hnamelist;
	}
}
