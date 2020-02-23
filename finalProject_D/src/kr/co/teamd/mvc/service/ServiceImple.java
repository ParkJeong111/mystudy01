package kr.co.teamd.mvc.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import kr.co.teamd.mvc.dao.AdminHostInter;
import kr.co.teamd.mvc.dao.ReservationDAO;
import kr.co.teamd.mvc.dto.HostDTO;
import kr.co.teamd.mvc.dto.ReservationDTO;

@Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class, readOnly = true)
@Service
public class ServiceImple implements ServiceInter {

	@Autowired
	private AdminHostInter hdao;

	@Autowired
	private ReservationDAO reservationdao;

	@Override
	public void addhostUpdatehrstatus(HostDTO hdto) throws Exception {
		hdao.hostinsert(hdto);
		hdao.updatehrstatus(hdto);

	}

	// 결제 시 결제내역 추가와 회원 포인트 수정
	@Override
	public void reserveInsertmpointUpdate(HttpServletRequest request, ReservationDTO rdto) throws Exception {
		reservationdao.reservationInsert(rdto);
		reservationdao.memberPointUpdate(rdto);
		HttpSession session = request.getSession();
		int beforempoint = (int) session.getAttribute("mpoint");
		int aftermpoint = beforempoint - rdto.getMpoint();
		session.setAttribute("mpoint", aftermpoint);
	}
	
	@Override
	public void hostdeleteAll(String hname) throws Exception {
		hdao.reservationDelete(hname);
		hdao.hostgoodsDelete(hname);
		hdao.boardDelete(hname);
		hdao.recenthostDelete(hname);
		hdao.hostdelete(hname);
	}
}
