package kr.co.teamd.mvc.dao;

import java.util.List;

import kr.co.teamd.mvc.dto.QnaDTO;

public interface AdminQnaInter {
	public List<QnaDTO> qnalist();
	public QnaDTO qnainfo(int qnum);
	public void qnaanswer(QnaDTO qdto);
}
