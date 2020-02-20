package kr.co.teamd.mvc.dto;

public class RandomMatchingDTO {
	private int rmnum,rmcount,rmage,rmstatus;
	private String rmid,rmlocation,rmtype,rmtime,rmsex,mrresult;
	
	public String getMrresult() {
		return mrresult;
	}
	public void setMrresult(String mrresult) {
		this.mrresult = mrresult;
	}
	public int getRmstatus() {
		return rmstatus;
	}
	public void setRmstatus(int rmstatus) {
		this.rmstatus = rmstatus;
	}
	public int getRmnum() {
		return rmnum;
	}
	public void setRmnum(int rmnum) {
		this.rmnum = rmnum;
	}
	public int getRmcount() {
		return rmcount;
	}
	public void setRmcount(int rmcount) {
		this.rmcount = rmcount;
	}
	public int getRmage() {
		return rmage;
	}
	public void setRmage(int rmage) {
		this.rmage = rmage;
	}
	public String getRmid() {
		return rmid;
	}
	public void setRmid(String rmid) {
		this.rmid = rmid;
	}
	public String getRmlocation() {
		return rmlocation;
	}
	public void setRmlocation(String rmlocation) {
		this.rmlocation = rmlocation;
	}
	public String getRmtype() {
		return rmtype;
	}
	public void setRmtype(String rmtype) {
		this.rmtype = rmtype;
	}
	public String getRmtime() {
		return rmtime;
	}
	public void setRmtime(String rmtime) {
		this.rmtime = rmtime;
	}
	public String getRmsex() {
		return rmsex;
	}
	public void setRmsex(String rmsex) {
		this.rmsex = rmsex;
	}

}
