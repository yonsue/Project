package com.gt.s.kos.contract.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gt.s.kos.contract.dao.GtContractDAO;
import com.gt.s.kos.contract.vo.GtContractVO;

@Service
@Transactional
public class GtContractServiceImpl implements GtContractService {
	
	@Autowired(required = false)
	private GtContractDAO gtContractDAO;
	
	@Override
	public int gtContractInsert(GtContractVO cvo) {
		// Insert
		return gtContractDAO.gtContractInsert(cvo);
	}

	@Override
	public int gtContractInsertFile(GtContractVO cvo) {
		// InsertFile
		return gtContractDAO.gtContractInsertFile(cvo);
	}
}
