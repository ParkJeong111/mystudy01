package kr.co.teamd.mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.teamd.mvc.dto.HostDTO;
import kr.co.teamd.mvc.dto.HostSearchDTO;
import kr.co.teamd.mvc.dto.HostgoodsDTO;
import kr.co.teamd.mvc.dto.HostlistDTO;

@Repository
public class hostDAO implements hostinterdao {
	
	@Autowired
	private SqlSessionTemplate ss;

	// 업체 리스트
	@Override
	public List<HostlistDTO> hostlist(int type) {
		return ss.selectList("morepage.hostlist",type);
	}

	// 업체 상세정보
	@Override
	public HostDTO hostDetail(int hnum) {
		return ss.selectOne("morepage.hostdetail", hnum);
	}

	// 업체 이용권 상세정보
	@Override
	public HostgoodsDTO hostgoodsDetail(int hgnum) {
		return ss.selectOne("morepage.hostgoodsdetail", hgnum);
	}

	// 업체 리스트 검색
	@Override
	public List<HostlistDTO> hostSearch(HostSearchDTO hsdto) {
		return ss.selectList("morepage.searchlist", hsdto);
	}
}
