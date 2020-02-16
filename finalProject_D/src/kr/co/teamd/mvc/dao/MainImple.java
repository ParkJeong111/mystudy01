package kr.co.teamd.mvc.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.teamd.mvc.dto.BoardDTO;
import kr.co.teamd.mvc.dto.HostDTO;
import kr.co.teamd.mvc.dto.HostlistDTO;
import kr.co.teamd.mvc.dto.HostregDTO;
import kr.co.teamd.mvc.dto.QnaDTO;
@Repository
public class MainImple implements MainInter {

	@Autowired
	private SqlSessionTemplate ss;
	
	@Override
	public List<BoardDTO> reviewsList(String viewtype) { //���ο��� �ֱ� �̿� �ı� Ȯ��
		return ss.selectList("main.revieswList",viewtype);
	}

	@Override
	public Map<Object,Object> mainRes() { //���ο��� �ϴܿ� ��� ������ ���
		String res= "res";
		return ss.selectMap("main.mainres", res );
	}

	@Override
	public List<HostDTO> mainRec() { //���� ��õ������
		return ss.selectList("main.mainrec");
	}

	@Override
	public void hostReg(HostregDTO hrdto) {
		ss.insert("morepage.hostreg",hrdto);
		
	}

	@Override
	public void qnaInsert(QnaDTO qdto) {
		ss.insert("morepage.qnainsert", qdto);
		
	}

	@Override
	public List<HostlistDTO> mainsearchlist(String hname) {
		return ss.selectList("main.mainsearchlist", hname);
	}

	@Override
	public List<HostDTO> autosearchlist(String hname) {
		return ss.selectList("main.autosearchlist",hname);
	}

	

}
