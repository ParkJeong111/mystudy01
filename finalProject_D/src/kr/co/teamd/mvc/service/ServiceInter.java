package kr.co.teamd.mvc.service;


import kr.co.teamd.mvc.dto.HostDTO;
import kr.co.teamd.mvc.dto.ReservationDTO;

public interface ServiceInter {
	// Ʈ����� ó���ϱ� ���� �������̽� (��������ϰ� ��ü��û����)
	public void addhostUpdatehrstatus(HostDTO hdto) throws Exception;
	
	// ���� �� �������� �߰��� ȸ�� ����Ʈ ����
	public void reserveInsertmpointUpdate(ReservationDTO rdto) throws Exception;
	
	// ������ ������ ForeignŰ ���̺� ����(����, ��������ǰ, �Խ���, �ֱٺ�����)
	public void hostdeleteAll(String hname) throws Exception;
}
