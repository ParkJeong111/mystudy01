package kr.co.teamd.mvc.dto;

public class ReservationDTO {

	private int rnum;
	private String mid;
	private String hname;
	private String hgname;
	private int rmoney;
	private int rstar;
	private String rdate;
	private String usedate;
	
	private HostDTO hostdto;
	
	public String getUsedate() {
		return usedate;
	}
	public void setUsedate(String usedate) {
		this.usedate = usedate;
	}
	public HostDTO getHostdto() {
		return hostdto;
	}
	public void setHostdto(HostDTO hostdto) {
		this.hostdto = hostdto;
	}
	public int getRnum() {
		return rnum;
	}
	public void setRnum(int rnum) {
		this.rnum = rnum;
	}
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
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
	public int getRmoney() {
		return rmoney;
	}
	public void setRmoney(int rmoney) {
		this.rmoney = rmoney;
	}
	public int getRstar() {
		return rstar;
	}
	public void setRstar(int rstar) {
		this.rstar = rstar;
	}
	public String getRdate() {
		return rdate;
	}
	public void setRdate(String rdate) {
		this.rdate = rdate;
	}
	
	
	
}
