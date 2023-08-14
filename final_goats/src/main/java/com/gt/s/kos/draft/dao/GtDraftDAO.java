package com.gt.s.kos.draft.dao;

import java.util.List;

import com.gt.s.kos.draft.vo.GtDraftVO;

public interface GtDraftDAO {

	public int draftInsert(GtDraftVO gdvo);
	
	public int draftInsertFile(GtDraftVO gdvo);
	
	public List<GtDraftVO> draftSelect(GtDraftVO gdvo);
	
	public List<GtDraftVO> draftSelectAll(GtDraftVO gdvo);
	
	public int draftUpdate(GtDraftVO gdvo);
	
}
