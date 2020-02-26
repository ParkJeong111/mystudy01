package kr.co.teamd.mvc.dto;

public class BoardcommentDTO {

	private int bcnum;
	private int bnum;
	private String mnickname;
	private String bccontent;
	private String bcdate;
	private int cnt;
	
	public int getBcnum() {
		return bcnum;
	}
	public void setBcnum(int bcnum) {
		this.bcnum = bcnum;
	}
	public int getBnum() {
		return bnum;
	}
	public void setBnum(int bnum) {
		this.bnum = bnum;
	}
	public String getMnickname() {
		return mnickname;
	}
	public void setMnickname(String mnickname) {
		this.mnickname = mnickname;
	}
	public String getBccontent() {
		return bccontent;
	}
	public void setBccontent(String bccontent) {
		this.bccontent = bccontent;
	}
	public String getBcdate() {
		return bcdate;
	}
	public void setBcdate(String bcdate) {
		this.bcdate = bcdate;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	
}

