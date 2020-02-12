package kr.co.teamd.mvc.service;

import kr.co.teamd.mvc.dto.HostDTO;
import kr.co.teamd.mvc.dto.HostregDTO;

public interface ServiceInter {
	// 트렌잭션 처리하기 위한 인터페이스 (가맹점등록과 업체요청수정)
	public void addhostUpdatehrstatus(HostDTO hdto) throws Exception;

}
