package com.gt.s.kos.project.service;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gt.s.kos.project.dao.GtProjectDAO;
import com.gt.s.kos.project.vo.GtProjectVO;


@Service
@Transactional
public class GtProjectServiceImpl implements GtProjectService {
	Logger log = LogManager.getLogger(this.getClass());
	
	
	@Autowired(required = false)
	private GtProjectDAO gtProjectDAO;
	
	@Override
	public int gtProjectInsert(GtProjectVO pvo) {
		// TODO Auto-generated method stub
		log.info("GtProjectServiceImpl.gtProjectInsert 함수진입");
		return gtProjectDAO.gtProjectInsert(pvo);
		
	} // end of gtProjectInsert

} //  end of class
