package com.gt.s.kos.resignation.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gt.s.kos.resignation.vo.GtResignationVO;

@Repository
public class GtResignationDAOImpl implements GtResignationDAO {
	
	Logger logger = LogManager.getLogger(GtResignationDAOImpl.class);
	
	@Autowired(required=false)
	private SqlSession sqlSession;
	
	@Override
	public int gtResignationInsert(GtResignationVO rvo) {
		
		logger.info(">>> gtResignationInsert() In");
		
		return sqlSession.insert("gtResignationInsert");		
	}
	
	@Override
	public int gtResignationInsertFile(GtResignationVO rvo) {
	
		logger.info(">>> gtResignationInsertFile() In");
		
		return sqlSession.update("gtResignationInsertFile");
	}

}
