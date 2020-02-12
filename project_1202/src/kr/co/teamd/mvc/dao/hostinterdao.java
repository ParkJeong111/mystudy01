package kr.co.teamd.mvc.dao;

import java.util.List;

import kr.co.teamd.mvc.dto.HostlistDTO;

public interface hostinterdao {
	public List<HostlistDTO> hostlist(int type);

}
