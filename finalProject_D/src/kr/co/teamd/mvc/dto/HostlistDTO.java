package kr.co.teamd.mvc.dto;

public class HostlistDTO {
	private String himage, hname, hnotice, haddr, hnum, type, hservice, howner,hspecies;
	private int hstar, hgmoney, boardnum;

	public String getHnum() {
		return hnum;
	}

	public void setHnum(String hnum) {
		this.hnum = hnum;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getHservice() {
		return hservice;
	}

	public void setHservice(String hservice) {
		this.hservice = hservice;
	}

	public String getHowner() {
		return howner;
	}

	public void setHowner(String howner) {
		this.howner = howner;
	}

	public String getHspecies() {
		return hspecies;
	}

	public void setHspecies(String hspecies) {
		this.hspecies = hspecies;
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

	public int getBoardnum() {
		return boardnum;
	}

	public void setBoardnum(int boardnum) {
		this.boardnum = boardnum;
	}

}
