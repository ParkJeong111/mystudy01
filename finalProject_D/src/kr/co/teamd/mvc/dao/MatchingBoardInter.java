package kr.co.teamd.mvc.dao;

import java.util.HashMap;
import java.util.List;

import kr.co.teamd.mvc.dto.MatchingboardDTO;

public interface MatchingBoardInter {
	public List<MatchingboardDTO> optionsearch(HashMap<String, Object> list);
}
