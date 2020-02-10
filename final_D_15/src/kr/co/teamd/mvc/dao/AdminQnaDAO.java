package kr.co.teamd.mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.teamd.mvc.dto.QnaDTO;

@Repository
public class AdminQnaDAO implements AdminQnaInter{

	@Autowired
	private SqlSessionTemplate ss;
	
	//Admin_1:1 ���� �Խñ� ����Ʈ
	@Override
	public List<QnaDTO> qnalist() {
		return ss.selectList("admin.qnalist");
	}

	//Admin_1:1���� �Խñ� �󼼺���
	@Override
	public QnaDTO qnainfo(int qnum) {
		return ss.selectOne("admin.qnainfo",qnum);
	}
	
	//Admin_1:1 ���� �Խñ� �亯�ۼ� 
	@Override
	public void qnaanswer(QnaDTO qdto) {
		ss.update("admin.qnaanswer",qdto);
	}
	
}
