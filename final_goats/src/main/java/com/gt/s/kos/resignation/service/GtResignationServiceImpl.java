package com.gt.s.kos.resignation.service;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gt.s.kos.resignation.dao.GtResignationDAO;
import com.gt.s.kos.resignation.vo.GtResignationVO;

@Service
@Transactional
public class GtResignationServiceImpl implements GtResignationService {
	
	Logger logger = LogManager.getLogger(GtResignationServiceImpl.class);
	
	@Autowired(required=false)
	private GtResignationDAO gtResignationDAO;
	
	@Override
	public int gtResignationInsert(GtResignationVO rvo) {
	
		logger.info(">>> gtResignationInsert() In");
		
		return gtResignationDAO.gtResignationInsert(rvo);		
	}
	
	@Override
	public int gtResignationInsertFile(GtResignationVO rvo) {
		
		logger.info(">>> gtResignationInsertFile() In");
		
		return gtResignationDAO.gtResignationInsertFile(rvo);
	}

}
