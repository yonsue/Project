package com.gt.s.kos.contract.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gt.s.kos.contract.vo.GtContractVO;

@Repository
public class GtContractDAOImpl implements GtContractDAO {

	@Autowired(required = false)
	private SqlSessionTemplate sqlSession;
	
	@Override
	public int gtContractInsert(GtContractVO cvo) {
		// Insert
		return sqlSession.insert("gtContractInsert", cvo);
	}
	
	@Override
	public int gtContractInsertFile(GtContractVO cvo) {
		// Insert File
		return sqlSession.update("gtContractInsertFile", cvo);
	}

}
