package com.gt.s.kos.contract.dao;

import com.gt.s.kos.contract.vo.GtContractVO;

public interface GtContractDAO {
	
	public int gtContractInsert(GtContractVO cvo);
	public int gtContractInsertFile(GtContractVO cvo);

}
