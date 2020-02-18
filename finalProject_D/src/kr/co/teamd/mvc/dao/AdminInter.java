package kr.co.teamd.mvc.dao;

import java.util.List;

import kr.co.teamd.mvc.dto.AdminDTO;

public interface AdminInter {
	public List<AdminDTO> Adminlist();
	public void Admin_delete(String aid);
	public AdminDTO admininject(String aid); 
	public void admininsert(AdminDTO dto);
}
