package com.gt.s.kos.mypage.controller;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class GtMypageController {

	Logger log = LogManager.getLogger(this.getClass());
	
	
	
	
	@GetMapping("gtMypage")
	public String gtMypage() {
		
		return "mypage/mypage";
	};
	
}
