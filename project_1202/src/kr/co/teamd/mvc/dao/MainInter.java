package kr.co.teamd.mvc.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.co.teamd.mvc.dto.BoardDTO;
import kr.co.teamd.mvc.dto.HostDTO;

public interface MainInter {

	
	public List<BoardDTO> reviewsList(String viewtype);
	public Map<Object, Object> mainRes();
	public List<HostDTO> mainRec();

}
