package kr.co.teamd.mvc.dto;

public class BoardcommentDTO {

	private int bcnum;
	private int bnum;
	private String mnickname;
	private String bccontent;
	
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
	
}

