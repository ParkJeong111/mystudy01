package kr.co.teamd.mvc.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kr.co.teamd.mvc.dao.AdminHostInter;
import kr.co.teamd.mvc.dao.AdminQnaDAO;
import kr.co.teamd.mvc.dao.BoardInter;
import kr.co.teamd.mvc.dao.HostInter;
import kr.co.teamd.mvc.dao.MainDAO;
import kr.co.teamd.mvc.dao.MatchingBoardInter;
import kr.co.teamd.mvc.dao.MemberInter;
import kr.co.teamd.mvc.dao.RandomMatchinginter;
import kr.co.teamd.mvc.dto.BoardListAjaxDTO;
import kr.co.teamd.mvc.dto.BoardcommentDTO;
import kr.co.teamd.mvc.dto.ChkBTypeDTO;
import kr.co.teamd.mvc.dto.HostDTO;
import kr.co.teamd.mvc.dto.HostSearchDTO;
import kr.co.teamd.mvc.dto.HostgoodsDTO;
import kr.co.teamd.mvc.dto.HostlistDTO;
import kr.co.teamd.mvc.dto.ItemsboardDTO;
import kr.co.teamd.mvc.dto.ItemscommentDTO;
import kr.co.teamd.mvc.dto.MatchingboardDTO;
import kr.co.teamd.mvc.dto.MemberDTO;
import kr.co.teamd.mvc.dto.PointlogDTO;
import kr.co.teamd.mvc.dto.QnaDTO;
import kr.co.teamd.mvc.dto.RandomMatchingDTO;
import kr.co.teamd.mvc.dto.RecentListDTO;
import kr.co.teamd.mvc.dto.ReservationDTO;

@RestController
public class JsonController {

	@Autowired
	private AdminHostInter hdao;

	@Autowired
	private BoardInter bdao;

	@Autowired
	private MatchingBoardInter mbi;

	@Autowired
	private AdminQnaDAO qdao;

	@Autowired
	private MemberInter mdao;

	@Autowired
	private HostInter hostdao;

	@Autowired
	private MainDAO autodao;

	@Autowired
	private RandomMatchinginter randommatching;

	@Autowired
	private MatchingBoardInter MatchingBoard;

	@RequestMapping("talkAjax") // 일반 게시판리스트
	public List<BoardListAjaxDTO> boardAjax(@RequestParam("check") int check) {
		List<BoardListAjaxDTO> bdto = bdao.boardAjax(check);
		return bdto;

	}

	@RequestMapping("itemsboardAjax") // 중고거래 게시판리스트
	public List<ItemsboardDTO> itemsboardAjax(@RequestParam("check") int check) {
		List<ItemsboardDTO> list = bdao.itemsboardAjax(check);
		return list;
	}

	@RequestMapping("hostinfo") // 관리자 가맹점페이지 Ajax처리로 상세정보
	public HostDTO hostinfo(@RequestParam("hnum") int hnum) {
		HostDTO hdto = hdao.hostinfo(hnum);
		return hdto;
	}

	@RequestMapping("boardCommentInsertList")
	public List<BoardcommentDTO> boardCommentInsertList(BoardcommentDTO bcdto) throws UnsupportedEncodingException {

		String mnickname = URLDecoder.decode(bcdto.getMnickname(), "UTF-8");
		String bccontent = URLDecoder.decode(bcdto.getBccontent(), "UTF-8");
		bcdto.setMnickname(mnickname);
		bcdto.setBccontent(bccontent);
		bdao.boardCommentInsert(bcdto);
		List<BoardcommentDTO> boardcommentlist = bdao.boardCommentList(bcdto);
		return boardcommentlist;
	}

	@RequestMapping("itemsCommentInsertList")
	public List<ItemscommentDTO> itemsCommentInsertList(ItemscommentDTO icdto) throws UnsupportedEncodingException {
		String mnickname = URLDecoder.decode(icdto.getMnickname(), "UTF-8");
		String iccontent = URLDecoder.decode(icdto.getIccontent(), "UTF-8");
		icdto.setMnickname(mnickname);
		icdto.setIccontent(iccontent);
		bdao.itemsCommentInsert(icdto);
		List<ItemscommentDTO> itemscommentlist = bdao.itemsCommentList(icdto);
		return itemscommentlist;
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

	@RequestMapping(value = "my_matchinglist") // 예약내역버튼 선택
	public List<RandomMatchingDTO> my_matchinglist(HttpSession session, HttpServletResponse resp) {
		ModelAndView mav = new ModelAndView();
		String mid = (String) session.getAttribute("mid");
		List<RandomMatchingDTO> ranlist = randommatching.randomlistinfo(mid);
		return ranlist;
	}

	@RequestMapping(value = "my_matchingresult") // 예약내역버튼 선택
	public List<RandomMatchingDTO> my_matchingresult(HttpSession session, HttpServletResponse resp) {
		ModelAndView mav = new ModelAndView();
		String mid = (String) session.getAttribute("mid");
		List<RandomMatchingDTO> ranresult = randommatching.randomlistresult(mid);
		for (RandomMatchingDTO e : ranresult) {
			System.out.println(e.getRmcount());
			System.out.println(e.getRmlocation());
		}
		return ranresult;
	}

	// 업체리스트 상세 검색
	// 송용화
	@RequestMapping(value = "searchlist")
	public List<HostlistDTO> searchList(HostSearchDTO hsdto) {
		// 평점 - 상관없음 일때
		if (hsdto.getStar().equals("undefined")) {
			hsdto.setStarnum(0);
		}
		// 평점 골랐을때
		else {
			hsdto.setStarnum(Integer.parseInt(hsdto.getStar()));
		}
		List<HostlistDTO> hostlist = hostdao.hostSearch(hsdto);
		return hostlist;
	}

	// 이용권 선택
	// 송용화
	@RequestMapping(value = "ticketSelect")
	public HostgoodsDTO ticketSelect(int hgnum) {
		HostgoodsDTO hgdto = hostdao.hostgoodsDetail(hgnum);
		return hgdto;
	}

	@RequestMapping("autosearchlist")
	public List<HostDTO> autosearchlist(@RequestParam("hname") String hname) {
		List<HostDTO> autosearchlist = autodao.autosearchlist(hname);
		return autosearchlist;
	}

	@RequestMapping("hnamechk")
	public int hnamechk(String hname) {
		return hdao.hnamechk(hname);
	}

	// 게시글 작성 type2 호스트 낚시터 이름
	@RequestMapping(value = "btype2select")
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

	// 안드로이드 로그인 처리
	@RequestMapping(value = "androidLogin", produces = "application/json;charset=utf-8")
	public MemberDTO androidLogin(MemberDTO mdto) {
		MemberDTO m = mdao.androidLogin(mdto);
		return m;
	}

	// 안드로이드 게시판 데이터 처리 (재민)
	/*
	 * @RequestMapping(value = "androidBoardData", produces =
	 * "application/json;charset=utf-8") public List<BoardDTO> androidBoard(BoardDTO
	 * bdto){ List<BoardDTO> b = bdao.androidBoardData(bdto); for(BoardDTO dto : b)
	 * { System.out.println("title : " + dto.getBtitle());
	 * System.out.println("hname : " + dto.getHname()); } return b; }
	 */

	// 안드로이드 함께자바 게시판 데이터 처리 (재민)
	@RequestMapping(value = "androidBData", produces = "application/json;charset=utf-8")
	public List<MatchingboardDTO> androidBData(MatchingboardDTO mbdto) {
		List<MatchingboardDTO> b = bdao.androidBData(mbdto);
		return b;
	}

	// 함께자바 상세보기 안드 (재민)
	@RequestMapping(value = "androidTogether", produces = "application/json;charset=utf-8")
	public String androidTogether(String mid, String mbnum) {
		HashMap<String, Object> valupdate = new HashMap<String, Object>();
		valupdate.put("mid", mid);
		valupdate.put("mbnum", mbnum);
		mbi.statusadd(valupdate);
		return "성공";
	}

	// 안드로이드 내정보 (재민)
	@RequestMapping(value = "androidMyinfo", produces = "application/json;charset=utf-8")
	public List<MemberDTO> androidMyinfo(MemberDTO mdto) {
		List<MemberDTO> fo = mdao.androidMyinfo(mdto);
		return fo;
	}

	// 함께자바 검색기능
	@RequestMapping(value = "matchingb")
	public List<MatchingboardDTO> matchingb(MatchingboardDTO dto, String count) {
		// System.out.println("몇명인가요" + count);
		// System.out.println(dto.getMbtag());
		List<String> service = new ArrayList<String>();
		String[] test = dto.getMbtag().split("/");
		for (int i = 0; i < test.length; i++) {
			service.add(test[i]);
		}
		/*
		 * for (String e : service) { System.out.println("e:" + e); }
		 */
		HashMap<String, Object> list = new HashMap<String, Object>();
		String md = "0";
		String[] modifysdate = dto.getStartdate().split("/");

		if (modifysdate[0].length() == 1) {
			modifysdate[0] = md.concat(modifysdate[0]);
		}
		if (modifysdate[1].length() == 1) {
			modifysdate[1] = md.concat(modifysdate[1]);
		}
		dto.setStartdate(modifysdate[2].substring(2, 4) + "/" + modifysdate[0] + "/" + modifysdate[1]);

		String[] modifyedate = dto.getEnddate().split("/");
		if (modifyedate[0].length() == 1) {
			modifyedate[0] = md.concat(modifyedate[0]);
		}
		if (modifyedate[1].length() == 1) {
			modifyedate[1] = md.concat(modifyedate[1]);
		}
		list.put("dto", dto);
		list.put("list", service);
		list.put("count", count);
		dto.setEnddate(modifyedate[2].substring(2, 4) + "/" + modifyedate[0] + "/" + modifyedate[1]);
		List<MatchingboardDTO> searchdto = MatchingBoard.optionsearch(list);
		/*
		 * for (MatchingboardDTO e : searchdto) { System.out.println(e.getMbtitle()); }
		 */

		return searchdto;
	}

	@RequestMapping(value = "my_point") // 나의 포인트
	public HashMap<Object, Object> coupon(HttpSession session) {
		HashMap<Object, Object> map = new HashMap<Object, Object>();
		String mid = (String) session.getAttribute("mid");
		List<PointlogDTO> plist = mdao.gamepointlogList(mid);
		MemberDTO mdto = mdao.myInfo(mid);
		int mpoint = mdto.getMpoint();
		map.put("plist", plist);
		map.put("mpoint", mpoint);
		return map;
	}

	@RequestMapping(value = "my_recent") // 최근본가맹점
	public List<RecentListDTO> recent(HttpSession session) {
		String mid = (String) session.getAttribute("mid");
		List<RecentListDTO> rlist = mdao.recentHostList(mid);
		return rlist;
	}

	@RequestMapping("pwfind") // 이메일로 비밀번호 찾기
	public HashMap<String, Object> pwfind(MemberDTO mdto) {
		String memail = mdto.getMemail();
		System.out.println("memail : " + memail);
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		MemberDTO myinfo = mdao.pwfind(memail);
		
		if (myinfo == null) {
			System.out.println("null");
			String msg = "이메일이 존재하지 않습니다."; 
			map.put("msg", msg);
			return map;
		} else {
			String msg = "success";
			map.put("myinfo", myinfo);
			map.put("msg", msg);
			return map;
		}
	}
		/*
		 * if (myinfo != null) { map.put("myinfo", myinfo); map.put("msg",
		 * "이메일이 존재합니다."); return map; } else { String msg = "이메일이 존재하지 않습니다."; return
		 * map; }
		 */
}
