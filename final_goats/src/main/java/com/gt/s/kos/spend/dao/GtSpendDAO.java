package com.gt.s.kos.spend.dao;

import com.gt.s.kos.spend.vo.GtSpendVO;

public interface GtSpendDAO {
	public int gtSpendInsert(GtSpendVO svo);
	public int gtSpendInsertFile(GtSpendVO svo);
}
