package kr.co.teamd.mvc.dto;

public class HostlistDTO {
	private String himage, hname, hnotice, haddr, hnum;
	private int hstar, hgmoney;

	public String getHnum() {
		return hnum;
	}

	public void setHnum(String hnum) {
		this.hnum = hnum;
	}

	public String getHimage() {
		return himage;
	}

	public void setHimage(String himage) {
		this.himage = himage;
	}

	public String getHname() {
		return hname;
	}

	public void setHname(String hname) {
		this.hname = hname;
	}

	public String getHnotice() {
		return hnotice;
	}

	public void setHnotice(String hnotice) {
		this.hnotice = hnotice;
	}

	public String getHaddr() {
		return haddr;
	}

	public void setHaddr(String haddr) {
		this.haddr = haddr;
	}

	public int getHstar() {
		return hstar;
	}

	public void setHstar(int hstar) {
		this.hstar = hstar;
	}

	public int getHgmoney() {
		return hgmoney;
	}

	public void setHgmoney(int hgmoney) {
		this.hgmoney = hgmoney;
	}

}
