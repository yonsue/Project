package com.gt.s.common;

import java.util.ArrayList;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;


import com.oreilly.servlet.MultipartRequest;

public class ImgUploadUtil {
	
	private String imgfilePaths;
	private int imgfileSize;
	private String encodeType;
	private MultipartRequest mr;
	
	
	public ImgUploadUtil(String imgfilePaths, int imgfileSize, String encodeType) {

		this.imgfilePaths = imgfilePaths;
		this.imgfileSize = imgfileSize;
		this.encodeType = encodeType;
	}

	public boolean imgfileUpload(HttpServletRequest req) {
		
		boolean bool = imgfileUpload(req,imgfilePaths);

		return bool;
	}

	private boolean imgfileUpload(HttpServletRequest req, String filepath) {
		boolean bool = false;

		
		try {
			
			mr = new MultipartRequest(req, filepath, imgfileSize, encodeType, new FileRename());
			bool = true;

		} catch (Exception e) {
			// TODO: handle exception
			
		}

		
		return bool;
	}
	
	public String getParameter(String s) {
		return mr.getParameter(s);
	}
	
	public String[] getParameterValues(String s) {
		return mr.getParameterValues(s);
	}
	
	public String getFileName(String f) {
		return mr.getFilesystemName(f);
	}
	
	public ArrayList<String> getFileNames(){
		
		@SuppressWarnings("unchecked")
		Enumeration<String> en = mr.getFileNames();
		ArrayList<String> a = new ArrayList<String>();
		
		while (en.hasMoreElements()) {
			String f = en.nextElement().toString();
			a.add(mr.getFilesystemName(f));
			}
		
		
		return a;
	}
}
