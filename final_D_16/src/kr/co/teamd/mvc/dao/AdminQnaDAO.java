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
	
	//Admin_1:1 문의 게시글 리스트
	@Override
	public List<QnaDTO> qnalist() {
		return ss.selectList("admin.qnalist");
	}

	//Admin_1:1문의 게시글 상세보기
	@Override
	public QnaDTO qnainfo(int qnum) {
		return ss.selectOne("admin.qnainfo",qnum);
	}
	
	//Admin_1:1 문의 게시글 답변작성 
	@Override
	public void qnaanswer(QnaDTO qdto) {
		ss.update("admin.qnaanswer",qdto);
	}
	
}
