package kr.co.teamd.mvc.dto;

import org.springframework.web.multipart.MultipartFile;

public class ItemsboardDTO {

	private int ibnum;
	private String mid;
	private String ibtitle;
	private String ibname;
	private String ibcontent;
	private int ibmoney;
	private String ibimage;
	private String ibstatus;
	private String ibdate;
	private int ibreport;
	private MultipartFile ibfile;
	
	
	public int getIbnum() {
		return ibnum;
	}
	public void setIbnum(int ibnum) {
		this.ibnum = ibnum;
	}
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public String getIbtitle() {
		return ibtitle;
	}
	public void setIbtitle(String ibtitle) {
		this.ibtitle = ibtitle;
	}
	public String getIbname() {
		return ibname;
	}
	public void setIbname(String ibname) {
		this.ibname = ibname;
	}
	public String getIbcontent() {
		return ibcontent;
	}
	public void setIbcontent(String ibcontent) {
		this.ibcontent = ibcontent;
	}
	public int getIbmoney() {
		return ibmoney;
	}
	public void setIbmoney(int ibmoney) {
		this.ibmoney = ibmoney;
	}
	public String getIbimage() {
		return ibimage;
	}
	public void setIbimage(String ibimage) {
		this.ibimage = ibimage;
	}
	public String getIbstatus() {
		return ibstatus;
	}
	public void setIbstatus(String ibstatus) {
		this.ibstatus = ibstatus;
	}
	public String getIbdate() {
		return ibdate;
	}
	public void setIbdate(String ibdate) {
		this.ibdate = ibdate;
	}
	public int getIbreport() {
		return ibreport;
	}
	public void setIbreport(int ibreport) {
		this.ibreport = ibreport;
	}
	public MultipartFile getIbfile() {
		return ibfile;
	}
	public void setIbfile(MultipartFile ibfile) {
		this.ibfile = ibfile;
	}
	
private String mphone;
	
	public String getMphone() {
		return mphone;
	}
	public void setMphone(String mphone) {
		this.mphone = mphone;
	}
}
