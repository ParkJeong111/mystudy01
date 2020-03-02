package kr.co.teamd.mvc.dto;

public class PointlogDTO {
	private String mid,pldate,pltype;
	private int plpoint;
	

	public int getPlpoint() {
		return plpoint;
	}
	public void setPlpoint(int plpoint) {
		this.plpoint = plpoint;
	}
	public String getPldate() {
		return pldate;
	}
	public void setPldate(String pldate) {
		this.pldate = pldate;
	}
	public String getPltype() {
		return pltype;
	}
	public void setPltype(String pltype) {
		this.pltype = pltype;
	}
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}

}
