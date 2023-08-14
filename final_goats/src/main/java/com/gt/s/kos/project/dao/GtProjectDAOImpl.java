package com.gt.s.kos.project.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gt.s.kos.project.vo.GtProjectVO;

@Repository
public class GtProjectDAOImpl implements GtProjectDAO {
	
	@Autowired(required = false)
	private SqlSession sqlSession;
	
	@Override
	public int gtProjectInsert(GtProjectVO pvo) {
		// TODO Auto-generated method stub
		
		return sqlSession.insert("gtProjectInsert", pvo);
		
	} // end of gtProjectInsert

} // end of class
