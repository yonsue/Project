package com.gt.s.kos.resignation.dao;

import com.gt.s.kos.resignation.vo.GtResignationVO;

public interface GtResignationDAO {
	
	public int gtResignationInsert(GtResignationVO rvo);
	
	public int gtResignationInsertFile(GtResignationVO rvo);

}
