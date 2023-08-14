package com.gt.s.quartz;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import com.gt.s.kos.flask.controller.FlaskController;

@Component
public class test1111 {
	Logger log = LogManager.getLogger(test1111.class);
	
	@Scheduled(cron="0 0/1 * * * *")
	public void checkFiles() throws Exception{
		log.info("File Check Test run...");
		log.info("======================");
		
		FlaskController fc = new FlaskController();
		
		fc.flask_test();
		
	}
}
