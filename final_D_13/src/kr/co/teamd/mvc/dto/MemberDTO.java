package kr.co.teamd.mvc.dto;

import org.springframework.web.multipart.MultipartFile;

public class MemberDTO {

	private int mnum;
	private String mname;
	private String mid;
	private String mpwd;
	private String mnickname;
	private String mphone;
	private String memail;
	private String maddr1;
	private String maddr2;
	private String mbirth;
	private String msex;
	private String mfavorite;
	private String mjoin;
	private String mdrop;
	private int mpoint;
	private MultipartFile mfile;
	public int getMnum() {
		return mnum;
	}
	public void setMnum(int mnum) {
		this.mnum = mnum;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public String getMpwd() {
		return mpwd;
	}
	public void setMpwd(String mpwd) {
		this.mpwd = mpwd;
	}
	public String getMnickname() {
		return mnickname;
	}
	public void setMnickname(String mnickname) {
		this.mnickname = mnickname;
	}
	public String getMphone() {
		return mphone;
	}
	public void setMphone(String mphone) {
		this.mphone = mphone;
	}
	public String getMemail() {
		return memail;
	}
	public void setMemail(String memail) {
		this.memail = memail;
	}
	public String getMaddr1() {
		return maddr1;
	}
	public void setMaddr1(String maddr1) {
		this.maddr1 = maddr1;
	}
	public String getMaddr2() {
		return maddr2;
	}
	public void setMaddr2(String maddr2) {
		this.maddr2 = maddr2;
	}
	public String getMbirth() {
		return mbirth;
	}
	public void setMbirth(String mbirth) {
		this.mbirth = mbirth;
	}
	public String getMsex() {
		return msex;
	}
	public void setMsex(String msex) {
		this.msex = msex;
	}
	public String getMfavorite() {
		return mfavorite;
	}
	public void setMfavorite(String mfavorite) {
		this.mfavorite = mfavorite;
	}
	public String getMjoin() {
		return mjoin;
	}
	public void setMjoin(String mjoin) {
		this.mjoin = mjoin;
	}
	public String getMdrop() {
		return mdrop;
	}
	public void setMdrop(String mdrop) {
		this.mdrop = mdrop;
	}
	public int getMpoint() {
		return mpoint;
	}
	public void setMpoint(int mpoint) {
		this.mpoint = mpoint;
	}
	public MultipartFile getMfile() {
		return mfile;
	}
	public void setMfile(MultipartFile mfile) {
		this.mfile = mfile;
	}
	
	
}
