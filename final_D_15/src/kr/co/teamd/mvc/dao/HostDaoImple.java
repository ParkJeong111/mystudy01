package kr.co.teamd.mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.teamd.mvc.dto.AdminlogDTO;
import kr.co.teamd.mvc.dto.BoardDTO;
import kr.co.teamd.mvc.dto.HostDTO;
import kr.co.teamd.mvc.dto.HostregDTO;

@Repository
public class HostDaoImple implements HostDaoInter{
	
	@Autowired
	private SqlSessionTemplate ss;

	@Override
	public List<HostregDTO> hostreglist() {
		
		return ss.selectList("admin.hostreglist");
	}

	@Override
	public void hostinsert(HostDTO hdto) {
		System.out.println("두번째로");
		System.out.println(hdto.getHname());
		System.out.println(hdto.getHceo());
		System.out.println(hdto.getHphone());
		System.out.println(hdto.getHaddr());
		System.out.println(hdto.getHimage());
		System.out.println(hdto.getHspecies());
		System.out.println(hdto.getHservice());
		System.out.println(hdto.getHguide());
		
		ss.insert("admin.hostinsert", hdto);
		
	}

	@Override
	public List<HostDTO> hostalllist() {
		return ss.selectList("admin.hostalllist");
	}

	@Override
	public HostDTO hostinfo(String hname) {
		return ss.selectOne("admin.hostinfo", hname);
	}

	@Override
	public void hostdelete(HostDTO hdto) { // 가맹점 삭제
		
		ss.delete("admin.hostdelete", hdto);
		
	}

	@Override
	public List<AdminlogDTO> adminloglist() {
		return ss.selectList("admin.adminloglist");
	}

	
	
	
	

}
