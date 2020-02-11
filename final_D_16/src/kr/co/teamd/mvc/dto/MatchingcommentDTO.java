package kr.co.teamd.mvc.dto;

public class MatchingcommentDTO {

	private int mcnum;
	private int mbnum;
	private String minkname;
	private String mccontent;
	
	public int getMcnum() {
		return mcnum;
	}
	public void setMcnum(int mcnum) {
		this.mcnum = mcnum;
	}
	public int getMbnum() {
		return mbnum;
	}
	public void setMbnum(int mbnum) {
		this.mbnum = mbnum;
	}
	public String getMinkname() {
		return minkname;
	}
	public void setMinkname(String minkname) {
		this.minkname = minkname;
	}
	public String getMccontent() {
		return mccontent;
	}
	public void setMccontent(String mccontent) {
		this.mccontent = mccontent;
	}
	
	
}
