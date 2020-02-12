package kr.co.teamd.mvc.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.teamd.mvc.dto.BoardDTO;
import kr.co.teamd.mvc.dto.HostDTO;
@Repository
public class MainImple implements MainInter {

	@Autowired
	private SqlSessionTemplate ss;
	
	@Override
	public List<BoardDTO> reviewsList(String viewtype) {
		return ss.selectList("main.revieswList",viewtype);
	}

	@Override
	public Map<Object,Object> mainRes() {
		String res= "res";
		return ss.selectMap("main.mainres", res );
	}

	@Override
	public List<HostDTO> mainRec() {
		return ss.selectList("main.mainrec");
	}

	

}
