package kr.co.teamd.mvc.dto;

import org.springframework.web.multipart.MultipartFile;

public class HostgoodsDTO {

	private int hgnum;
	private String hname;
	private String hgname;
	private String hginfo;
	private int hgmoney;
	private String hgimage;
	private MultipartFile hgfile;
	
	public int getHgnum() {
		return hgnum;
	}
	public void setHgnum(int hgnum) {
		this.hgnum = hgnum;
	}
	public String getHname() {
		return hname;
	}
	public void setHname(String hname) {
		this.hname = hname;
	}
	public String getHgname() {
		return hgname;
	}
	public void setHgname(String hgname) {
		this.hgname = hgname;
	}
	public String getHginfo() {
		return hginfo;
	}
	public void setHginfo(String hginfo) {
		this.hginfo = hginfo;
	}
	public int getHgmoney() {
		return hgmoney;
	}
	public void setHgmoney(int hgmoney) {
		this.hgmoney = hgmoney;
	}
	public String getHgimage() {
		return hgimage;
	}
	public void setHgimage(String hgimage) {
		this.hgimage = hgimage;
	}
	public MultipartFile getHgfile() {
		return hgfile;
	}
	public void setHgfile(MultipartFile hgfile) {
		this.hgfile = hgfile;
	}
}
