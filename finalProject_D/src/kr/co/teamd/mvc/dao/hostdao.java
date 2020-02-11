package kr.co.teamd.mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.teamd.mvc.dto.HostDTO;
import kr.co.teamd.mvc.dto.HostlistDTO;

@Repository
public class hostdao implements hostinterdao {
	
	@Autowired
	private SqlSessionTemplate ss;

	@Override
	public List<HostlistDTO> hostlist(int type) {
		return ss.selectList("morepage.hostlist",type);
	}

	@Override
	public HostDTO hostDetail(int hnum) {
		return ss.selectOne("morepage.hostdetail", hnum);
	}

}
