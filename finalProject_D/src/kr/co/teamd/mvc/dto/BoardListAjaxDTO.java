package kr.co.teamd.mvc.dto;

public class BoardListAjaxDTO {
	
	private int bnum; 
	private String btype1; 
	private String btype2; 
	private String btitle; 
	private String bcontent;  
	private String bimage; 
	private String bdate;
	private int breport; 
	private String hname;
	private String haddr;
	private String mid;
	private String mnickname;
	
	
	public String getMnickname() {
		return mnickname;
	}
	public void setMnickname(String mnickname) {
		this.mnickname = mnickname;
	}
	public int getBnum() {
		return bnum;
	}
	public void setBnum(int bnum) {
		this.bnum = bnum;
	}
	public String getBtype1() {
		return btype1;
	}
	public void setBtype1(String btype1) {
		this.btype1 = btype1;
	}
	public String getBtype2() {
		return btype2;
	}
	public void setBtype2(String btype2) {
		this.btype2 = btype2;
	}
	public String getBtitle() {
		return btitle;
	}
	public void setBtitle(String btitle) {
		this.btitle = btitle;
	}
	public String getBcontent() {
		return bcontent;
	}
	public void setBcontent(String bcontent) {
		this.bcontent = bcontent;
	}
	public String getBimage() {
		return bimage;
	}
	public void setBimage(String bimage) {
		this.bimage = bimage;
	}
	public String getBdate() {
		return bdate;
	}
	public void setBdate(String bdate) {
		this.bdate = bdate;
	}
	public int getBreport() {
		return breport;
	}
	public void setBreport(int breport) {
		this.breport = breport;
	}
	public String getHname() {
		return hname;
	}
	public void setHname(String hname) {
		this.hname = hname;
	}
	public String getHaddr() {
		return haddr;
	}
	public void setHaddr(String haddr) {
		this.haddr = haddr;
	}
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}


	
	
}
