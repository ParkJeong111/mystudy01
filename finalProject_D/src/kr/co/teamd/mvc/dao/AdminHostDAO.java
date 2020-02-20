package kr.co.teamd.mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.teamd.mvc.dto.AdminlogDTO;
import kr.co.teamd.mvc.dto.HostDTO;
import kr.co.teamd.mvc.dto.HostregDTO;

@Repository
public class AdminHostDAO implements AdminHostInter{
	
	@Autowired
	private SqlSessionTemplate ss;

	@Override
	public List<HostregDTO> hostreglist() {
		
		return ss.selectList("admin.hostreglist");
	}
	

	@Override
	public int hnamechk(String hname) {
		// TODO Auto-generated method stub
		return ss.selectOne("admin.hnamechk", hname);
	}

	
	@Override
	public void hostinsert(HostDTO hdto) { //가맹점 등록
		System.out.println(hdto.getHname());
		System.out.println(hdto.getHceo());
		System.out.println(hdto.getHphone());
		System.out.println(hdto.getHaddr());
		System.out.println(hdto.getHimage());
		System.out.println(hdto.getHspecies());
		System.out.println("공지 : "+hdto.getHnotice());
		System.out.println("사장님한마디 : "+hdto.getHowner());
		System.out.println("편의시설 : "+hdto.getHservice());
		System.out.println("이용안내 : " + hdto.getHguide());
		System.out.println("다섯번째 방문");
		
		ss.insert("admin.hostinsert", hdto);
		System.out.println("세번째 방문");
		
	}


	@Override
	public void updatehrstatus(HostDTO hdto) {
		ss.update("admin.updatehrstatus", hdto);
		System.out.println("네번째 방문");
	}

	
	
	
	@Override
	public List<HostDTO> hostalllist() { //가맹점 리스트
		return ss.selectList("admin.hostalllist");
	}

	@Override
	public HostDTO hostinfo(String hname) { //가맹점 상세정보
		return ss.selectOne("admin.hostinfo", hname);
	}

	@Override
	public void hostdelete(String hname) { // 가맹점 삭제
		ss.delete("admin.hostDelete", hname);
	}
	@Override
	public void reservationDelete(String hname) {
		ss.delete("admin.reservationDelete", hname);
	}
	@Override
	public void hostgoodsDelete(String hname) {
		ss.delete("admin.hostgoodsDelete", hname);
	}
	@Override
	public void boardDelete(String hname) {
		ss.delete("admin.boardDelete", hname);
	}
	@Override
	public void recenthostDelete(String hname) {
		ss.delete("admin.recenthostDelete", hname);
	}
	
	@Override
	public void hostupdate(HostDTO hdto) {  
		ss.update("admin.hostupdate", hdto);
	}


	@Override
	public List<AdminlogDTO> adminloglist() {
		return ss.selectList("admin.adminloglist");
	}





	
	
	
	

}
