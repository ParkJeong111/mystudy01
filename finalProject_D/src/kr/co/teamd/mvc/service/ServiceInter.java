package kr.co.teamd.mvc.service;


import javax.servlet.http.HttpServletRequest;

import kr.co.teamd.mvc.dto.HostDTO;
import kr.co.teamd.mvc.dto.ReservationDTO;

public interface ServiceInter {
	// Ʈ����� ó���ϱ� ���� �������̽� (��������ϰ� ��ü��û����)
	public void addhostUpdatehrstatus(HostDTO hdto) throws Exception;
	
	// ���� �� �������� �߰��� ȸ�� ����Ʈ ����
<<<<<<< HEAD
=======

>>>>>>> branch 'master' of https://github.com/ParkJeong111/mystudy01
	public void reserveInsertmpointUpdate(HttpServletRequest request, ReservationDTO rdto) throws Exception;
<<<<<<< HEAD
=======

	public void reserveInsertmpointUpdate(ReservationDTO rdto) throws Exception;
>>>>>>> branch 'master' of https://github.com/ParkJeong111/mystudy01
	
	// ������ ������ ForeignŰ ���̺� ����(����, ��������ǰ, �Խ���, �ֱٺ�����)
	public void hostdeleteAll(String hname) throws Exception;
<<<<<<< HEAD
=======

>>>>>>> branch 'master' of https://github.com/ParkJeong111/mystudy01
}
