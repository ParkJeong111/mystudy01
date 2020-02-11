package kr.co.teamd.mvc.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.co.teamd.mvc.dto.BoardDTO;
import kr.co.teamd.mvc.dto.HostDTO;

public interface MainInter {

	
	public List<BoardDTO> reviewsList(String viewtype);//메인에서 최근 이용 후기 확인
	public Map<Object, Object> mainRes();//메인에서 하단에 기업 정보값 출력
	public List<HostDTO> mainRec();//메인 추천가맹점

}
