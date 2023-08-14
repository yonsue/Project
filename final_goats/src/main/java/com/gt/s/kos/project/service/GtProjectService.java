package com.gt.s.kos.project.service;
import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.gt.s.kos.project.vo.GtProjectVO;

public interface GtProjectService {
	
	public int gtProjectInsert(GtProjectVO pvo);
	
} // end of interface
