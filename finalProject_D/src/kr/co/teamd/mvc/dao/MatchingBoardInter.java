package kr.co.teamd.mvc.dao;

import java.util.HashMap;
import java.util.List;

import kr.co.teamd.mvc.dto.MatchingboardDTO;

public interface MatchingBoardInter {
	public List<MatchingboardDTO> optionsearch(HashMap<String, Object> list);
	public List<MatchingboardDTO> matchpage(int mbnum);
	public List<MatchingboardDTO> countselect(int mbnum);
	public void statusadd(HashMap<String, Object> update);
	public int boardmatchcheck(HashMap<String, Object> resultcheck);
}
