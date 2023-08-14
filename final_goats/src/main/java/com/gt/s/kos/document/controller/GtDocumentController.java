package com.gt.s.kos.document.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class GtDocumentController {

	@GetMapping("document")
	public String GtDocument() {
		
		return "document/document";
	}
	
	
}
