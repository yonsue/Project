package com.gt.s.kos.project.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.gt.s.common.ChabunUtil;
import com.gt.s.common.DateFormatUtil;
import com.gt.s.common.chabun.service.GtChabunService;
import com.gt.s.kos.project.service.GtProjectService;
import com.gt.s.kos.project.vo.GtProjectVO;

@Controller
public class GtProjectController {
	Logger log = LogManager.getLogger(this.getClass());
	
	
	
	@Autowired(required = false)
	GtProjectService gtProjectService;
	
	@Autowired(required = false)
	GtChabunService gtChabunService;
	
	
	@GetMapping("projectInsert")
	public String gtProjectInsert(Model m, GtProjectVO pvo, HttpServletRequest req) {
		log.info("컨트롤러 gtProjectInsert 진입 >>> : ");
		
		String gpj_num = ChabunUtil.BIZ_GUBUN_PR.concat(DateFormatUtil.ymdFormats("D").concat(gtChabunService.getGtProjectChabun().getGpnum()));
		log.info(gpj_num);
		pvo.setGpnum(gpj_num);
		
		// gpcontryn = > Y/N
		if(req.getParameter("gpcontryn") == "예") {
			
			pvo.setGpcontryn("Y");
			
		}else {
			pvo.setGpcontryn("N");
		}
		
		
		log.info("gpname  >>> : " + pvo.getGpname());
		log.info("gpstart >>> : " + pvo.getGpstartdate());
		log.info("gpendda >>> : " + pvo.getGpenddate());
		log.info("gpcontr >>> : " + pvo.getGpcontr());
		log.info("gpcontr >>> : " + pvo.getGpcontryn());
		log.info("gpcstar >>> : " + pvo.getGpcstartdate());
		log.info("gpcendd >>> : " + pvo.getGpcenddate());
		log.info("gpinfo  >>> : " + pvo.getGpinfo());
		log.info("gptic = >>> : " + pvo.getGptic());
		log.info("gpticman >>> : " + pvo.getGpticman());	
		
		log.info("gpconty >>> : " + pvo.getGpcontype());
		log.info("gpest 		>>> : " + pvo.getGpest());		
		log.info("gpestmount	>>> : " + pvo.getGpestmount());
		log.info("gpnote		>>> : " + pvo.getGpnote());
		
		log.info("gppcontype	>>> : "  + pvo.getGppcontype());	
		log.info("gppnum		>>> : "  + pvo.getGppnum());	
		log.info("gppname		>>> : "  + pvo.getGppname());
		log.info("gpprank		>>> : "  + pvo.getGpprank());
		log.info("gppstartdate	>>> : "  + pvo.getGppstartdate());
		log.info("gppenddate	>>> : "  + pvo.getGppenddate());	
		log.info("gppgong		 >>> : " + pvo.getGppgong());	
		log.info("gpppurpose	>>> : "  + pvo.getGpppurpose());
		
		int nCnt = gtProjectService.gtProjectInsert(pvo);
		
		if(nCnt > 0) {
			return "project/projectManage";
		}
		
		return "project/projectInsert";
	}
	
	@GetMapping("project")
	public String gtProjectManage() {
		
		return "project/projectManage";
	}
	
	@GetMapping("projectInsertForm")
	public String gtProjectInsertForm() {
		
		return "project/projectInsertform";
	}
} // end of class
