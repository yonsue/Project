package com.gt.s.kos.resignation.vo;

public class GtResignationVO {
	
	private String grnum;
	private String grstartdate;
	private String grenddate;
	private String grsubject;
	private String grmemo;
	private String grfile;
	private String insertdate;
	private String updatedate;
	private String deleteyn;
	private String genum;
	private String writer;
	private String reference;
	private String approver;
	private String dept;
	private String poroval;
	private String count;
	
	public GtResignationVO() {
	}
	
	public GtResignationVO(String grnum, String grstartdate, String grenddate, String grsubject, String grmemo,
			String grfile, String insertdate, String updatedate, String deleteyn, String genum, String writer,
			String reference, String approver, String dept, String poroval, String count) {
		this.grnum = grnum;
		this.grstartdate = grstartdate;
		this.grenddate = grenddate;
		this.grsubject = grsubject;
		this.grmemo = grmemo;
		this.grfile = grfile;
		this.insertdate = insertdate;
		this.updatedate = updatedate;
		this.deleteyn = deleteyn;
		this.genum = genum;
		this.writer = writer;
		this.reference = reference;
		this.approver = approver;
		this.dept = dept;
		this.poroval = poroval;
		this.count = count;
	}
	public String getGrnum() {
		return grnum;
	}
	public void setGrnum(String grnum) {
		this.grnum = grnum;
	}
	public String getGrstartdate() {
		return grstartdate;
	}
	public void setGrstartdate(String grstartdate) {
		this.grstartdate = grstartdate;
	}
	public String getGrenddate() {
		return grenddate;
	}
	public void setGrenddate(String grenddate) {
		this.grenddate = grenddate;
	}
	public String getGrsubject() {
		return grsubject;
	}
	public void setGrsubject(String grsubject) {
		this.grsubject = grsubject;
	}
	public String getGrmemo() {
		return grmemo;
	}
	public void setGrmemo(String grmemo) {
		this.grmemo = grmemo;
	}
	public String getGrfile() {
		return grfile;
	}
	public void setGrfile(String grfile) {
		this.grfile = grfile;
	}
	public String getInsertdate() {
		return insertdate;
	}
	public void setInsertdate(String insertdate) {
		this.insertdate = insertdate;
	}
	public String getUpdatedate() {
		return updatedate;
	}
	public void setUpdatedate(String updatedate) {
		this.updatedate = updatedate;
	}
	public String getDeleteyn() {
		return deleteyn;
	}
	public void setDeleteyn(String deleteyn) {
		this.deleteyn = deleteyn;
	}
	public String getGenum() {
		return genum;
	}
	public void setGenum(String genum) {
		this.genum = genum;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getReference() {
		return reference;
	}
	public void setReference(String reference) {
		this.reference = reference;
	}
	public String getApprover() {
		return approver;
	}
	public void setApprover(String approver) {
		this.approver = approver;
	}
	public String getDept() {
		return dept;
	}
	public void setDept(String dept) {
		this.dept = dept;
	}
	public String getPoroval() {
		return poroval;
	}
	public void setPoroval(String poroval) {
		this.poroval = poroval;
	}
	public String getCount() {
		return count;
	}
	public void setCount(String count) {
		this.count = count;
	}
	
	
	

}
