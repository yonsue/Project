package com.gt.s.kos.resignation.service;

import com.gt.s.kos.resignation.vo.GtResignationVO;

public interface GtResignationService {
	
	public int gtResignationInsert(GtResignationVO rvo);
	
	public int gtResignationInsertFile(GtResignationVO rvo);

}
