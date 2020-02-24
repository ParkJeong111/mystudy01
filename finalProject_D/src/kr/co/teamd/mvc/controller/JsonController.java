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
import org.springframework.web.servlet.ModelAndView;
import kr.co.teamd.mvc.dao.AdminHostInter;
import kr.co.teamd.mvc.dao.AdminQnaDAO;
import kr.co.teamd.mvc.dao.BoardInter;
import kr.co.teamd.mvc.dao.HostInter;
import kr.co.teamd.mvc.dao.MainDAO;
import kr.co.teamd.mvc.dao.MemberInter;
import kr.co.teamd.mvc.dao.RandomMatchinginter;
import kr.co.teamd.mvc.dto.BoardListAjaxDTO;
import kr.co.teamd.mvc.dto.ChkBTypeDTO;
import kr.co.teamd.mvc.dto.HostDTO;
import kr.co.teamd.mvc.dto.HostSearchDTO;
import kr.co.teamd.mvc.dto.HostgoodsDTO;
import kr.co.teamd.mvc.dto.HostlistDTO;
import kr.co.teamd.mvc.dto.ItemsboardDTO;
import kr.co.teamd.mvc.dto.MemberDTO;
import kr.co.teamd.mvc.dto.QnaDTO;
import kr.co.teamd.mvc.dto.RandomMatchingDTO;
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
	
	@Autowired
	private RandomMatchinginter randommatching;
	

	@RequestMapping("talkAjax")
	public List<BoardListAjaxDTO> boardAjax(@RequestParam("check") int check) {
		List<BoardListAjaxDTO> bdto = bdao.boardAjax(check);
		return bdto;

	}

	@RequestMapping("itemsboardAjax") // �߰�ŷ� �Խ��Ǹ���Ʈ
	public List<ItemsboardDTO> itemsboardAjax(@RequestParam("check") int check) {
		List<ItemsboardDTO> list = bdao.itemsboardAjax(check);
		return list;
	}

	@RequestMapping("hostinfo")
	public HostDTO hostinfo(@RequestParam("hnum") int hnum) {
		System.out.println("�̰���?"+hnum);
		HostDTO hdto = hdao.hostinfo(hnum);
		return hdto;
	}

	@RequestMapping("qnainfo")
	public QnaDTO qnainfo(@RequestParam("qnum") int qnum) {
		QnaDTO qdto = qdao.qnainfo(qnum);
		return qdto;
	}

	@RequestMapping(value = "my_reservationtype") // ���೻����ư ����
	public List<ReservationDTO> reservationtype(@RequestParam("type") int type, HttpSession session,
			HttpServletResponse resp) {
		String mid = (String) session.getAttribute("mid");
		HashMap<Object, Object> map = new HashMap<Object, Object>();
		map.put("mid", mid);
		map.put("type", type);
		List<ReservationDTO> rlist = mdao.myReservation(map);
		return rlist;
	}
	@RequestMapping(value = "my_matchinglist") // ���೻����ư ����
	public List<RandomMatchingDTO> my_matchinglist(HttpSession session,HttpServletResponse resp) {
		ModelAndView mav = new  ModelAndView();
		String mid = (String) session.getAttribute("mid");
		List<RandomMatchingDTO> ranlist = randommatching.randomlistinfo(mid);
		return ranlist;
	}
	@RequestMapping(value = "my_matchingresult") // ���೻����ư ����
	public List<RandomMatchingDTO> my_matchingresult(HttpSession session,HttpServletResponse resp) {
		ModelAndView mav = new  ModelAndView();
		String mid = (String) session.getAttribute("mid");
		List<RandomMatchingDTO> ranresult = randommatching.randomlistresult(mid);
		for(RandomMatchingDTO e : ranresult) {
			System.out.println(e.getRmcount());
			System.out.println(e.getRmlocation());
		}
		return ranresult;
	}

	// ��ü����Ʈ �� �˻�
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

	// �̿�� ����
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
	
	// �Խñ� �ۼ� type2 ȣ��Ʈ ������ �̸� 
	@RequestMapping(value = "btype2select")    
	public List<String> btype2select(HttpServletRequest request, int btypeValue) {
		HttpSession session = request.getSession();
		String mid = (String) session.getAttribute("mid");
		 ChkBTypeDTO chkbdto = new ChkBTypeDTO();
		 
		if (btypeValue == 1) {
			chkbdto.setHtype("�ٴ�");
		} else if (btypeValue == 2) {
			chkbdto.setHtype("�ι�");
		}
		chkbdto.setMid(mid);
		List<String> hnamelist = bdao.btype2select(chkbdto);
		
		return hnamelist;
	
	}
	
	// �ȵ���̵� �α��� ó��
	@RequestMapping(value = "androidLogin", produces = "application/json;charset=utf-8")
	public MemberDTO androidLogin(MemberDTO mdto){
		System.out.println("mid : " + mdto.getMid());
		System.out.println("mpwd : " + mdto.getMpwd());
		
//		String mid = (String) mdto.getMid();
//		String mpwd = (String) mdto.getMpwd();
		MemberDTO m = mdao.idCheck(mdto);
		if(m != null) {
			System.out.println("�α��� ����!");
//			System.out.println(mdto.getMid());
//			System.out.println(mdto.getMpwd());
		}  else {
			System.out.println("�α��� ����~~~~~!");
		}
		
		return mdto;
	}
	
	
}
