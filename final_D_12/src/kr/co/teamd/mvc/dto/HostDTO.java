package kr.co.teamd.mvc.dto;

import org.springframework.web.multipart.MultipartFile;

public class HostDTO {

	private int hnum;
	private String htype;
	private String hname;
	private String hceo;
	private String hphone;
	private String haddr;
	private String himage;
	private String hspecies;
	private String hnotice;
	private String howner;
	private String hservice;
	private String hguide;
	private String hstar;
	private MultipartFile hfile;
	
	public int getHnum() {
		return hnum;
	}
	public void setHnum(int hnum) {
		this.hnum = hnum;
	}
	public String getHtype() {
		return htype;
	}
	public void setHtype(String htype) {
		this.htype = htype;
	}
	public String getHname() {
		return hname;
	}
	public void setHname(String hname) {
		this.hname = hname;
	}
	public String getHceo() {
		return hceo;
	}
	public void setHceo(String hceo) {
		this.hceo = hceo;
	}
	public String getHphone() {
		return hphone;
	}
	public void setHphone(String hphone) {
		this.hphone = hphone;
	}
	public String getHaddr() {
		return haddr;
	}
	public void setHaddr(String haddr) {
		this.haddr = haddr;
	}
	public String getHimage() {
		return himage;
	}
	public void setHimage(String himage) {
		this.himage = himage;
	}
	public String getHspecies() {
		return hspecies;
	}
	public void setHspecies(String hspecies) {
		this.hspecies = hspecies;
	}
	public String getHnotice() {
		return hnotice;
	}
	public void setHnotice(String hnotice) {
		this.hnotice = hnotice;
	}
	public String getHowner() {
		return howner;
	}
	public void setHowner(String howner) {
		this.howner = howner;
	}
	public String getHservice() {
		return hservice;
	}
	public void setHservice(String hservice) {
		this.hservice = hservice;
	}
	public String getHguide() {
		return hguide;
	}
	public void setHguide(String hguide) {
		this.hguide = hguide;
	}
	public String getHstar() {
		return hstar;
	}
	public void setHstar(String hstar) {
		this.hstar = hstar;
	}
	public MultipartFile getHfile() {
		return hfile;
	}
	public void setHfile(MultipartFile hfile) {
		this.hfile = hfile;
	}
	
	
}
