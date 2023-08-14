package com.gt.s.kos.draft.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gt.s.kos.draft.vo.GtDraftVO;

@Repository
public class GtDraftDAOImpl implements GtDraftDAO {

	@Autowired(required = false)
	private SqlSessionTemplate sqlSession;
	
	@Override
	public int draftInsert(GtDraftVO gdvo) {
		// TODO Auto-generated method stub
		return sqlSession.insert("draftInsert", gdvo);
	}

	@Override
	public List<GtDraftVO> draftSelect(GtDraftVO gdvo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<GtDraftVO> draftSelectAll(GtDraftVO gdvo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int draftUpdate(GtDraftVO gdvo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int draftInsertFile(GtDraftVO gdvo) {
		// TODO Auto-generated method stub
		return sqlSession.update("draftInsertFile", gdvo);
	}



}
