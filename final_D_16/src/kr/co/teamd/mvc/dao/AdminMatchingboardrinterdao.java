package kr.co.teamd.mvc.dao;

import java.util.List;

import kr.co.teamd.mvc.dto.MatchingboardDTO;
import kr.co.teamd.mvc.dto.MatchinglogDTO;

public interface AdminMatchingboardrinterdao {
	public List<MatchingboardDTO> matchingboard();
	public List<MatchinglogDTO> matchinglog();
	public void matching_delete(String mbnum);
	public void matchlog_delete(String mbnum);
}
