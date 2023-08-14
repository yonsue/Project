package com.gt.s.kos.contract.service;

import com.gt.s.kos.contract.vo.GtContractVO;

public interface GtContractService {

	public int gtContractInsert(GtContractVO cvo);
	public int gtContractInsertFile(GtContractVO cvo);
}
