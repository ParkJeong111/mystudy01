package kr.co.teamd.mvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import kr.co.teamd.mvc.dao.AdminHostInter;
import kr.co.teamd.mvc.dto.HostDTO;


@Transactional(propagation = Propagation.REQUIRED,rollbackFor = Exception.class,readOnly = true)
@Service
public class ServiceImple implements ServiceInter{
	
	@Autowired
	private AdminHostInter hdao;
	
	@Override
	public void addhostUpdatehrstatus(HostDTO hdto) throws Exception {
		System.out.println("두번째방문");
		hdao.hostinsert(hdto);
		hdao.updatehrstatus(hdto);
	
		
	}

}
