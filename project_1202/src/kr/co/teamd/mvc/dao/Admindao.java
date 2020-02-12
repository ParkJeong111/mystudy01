package kr.co.teamd.mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.teamd.mvc.dto.AdminDTO;

@Repository
public class Admindao implements Admininterdao {
	
	@Autowired
	private SqlSessionTemplate ss;

	@Override
	public List<AdminDTO> Adminlist() {
		return ss.selectList("admin.adminlist");
	}

	@Override
	public void Admin_delete(String aid) {
		ss.delete("admin.admindelete",aid);
	}

	@Override
	public AdminDTO admininject(String aid) {
		return ss.selectOne("admin.admininfo",aid);
	}

	@Override
	public void admininsert(AdminDTO dto) {
		ss.insert("admin.admininsert",dto);
		
	}


	


}
