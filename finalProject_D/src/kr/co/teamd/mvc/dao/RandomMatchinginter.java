package kr.co.teamd.mvc.dao;

import java.util.HashMap;
import java.util.List;

import kr.co.teamd.mvc.dto.RandomMatchingDTO;

public interface RandomMatchinginter {
	public void randommatchinginsert(RandomMatchingDTO dto);
	public List<RandomMatchingDTO> randomatchinglist();
	public List<String> idlist(RandomMatchingDTO dto);
	public void updatestatus(HashMap<String, Object> maplist);
	public void randomresultinsert(RandomMatchingDTO dto);
	public int matchingidcheck(String mid);
	public List<RandomMatchingDTO> randomlistinfo(String mid);
	public List<RandomMatchingDTO> randomlistresult(String mid);

}
