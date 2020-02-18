package kr.co.teamd.mvc.dao;

import java.util.List;

import kr.co.teamd.mvc.dto.HostDTO;
import kr.co.teamd.mvc.dto.HostSearchDTO;
import kr.co.teamd.mvc.dto.HostgoodsDTO;
import kr.co.teamd.mvc.dto.HostlistDTO;

public interface HostInter {
	public List<HostlistDTO> hostlist(int type);
	public HostDTO hostDetail(int hnum);
	public HostgoodsDTO hostgoodsDetail(int hgnum);
	public List<HostlistDTO> hostSearch(HostSearchDTO hsdto);
}
