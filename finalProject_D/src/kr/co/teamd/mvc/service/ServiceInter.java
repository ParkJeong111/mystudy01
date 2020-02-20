package kr.co.teamd.mvc.service;


import javax.servlet.http.HttpServletRequest;

import kr.co.teamd.mvc.dto.HostDTO;
import kr.co.teamd.mvc.dto.ReservationDTO;

public interface ServiceInter {
	// 트렌잭션 처리하기 위한 인터페이스 (가맹점등록과 업체요청수정)
	public void addhostUpdatehrstatus(HostDTO hdto) throws Exception;
	
	// 결제 시 결제내역 추가와 회원 포인트 수정
	public void reserveInsertmpointUpdate(HttpServletRequest request, ReservationDTO rdto) throws Exception;
}
