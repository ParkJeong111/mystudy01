package kr.co.teamd.mvc.dto;

public class ReservationDTO {

	private int rnum;
	private String mid;
	private String hname;
	private int hgnum;
	private int rmoney;
	private int rstar;
	private String rdate;
	private int mpoint;

	private String usedate;
	private HostDTO hostdto; // resultMap사용으로 HostDTO 추가. usedate 컬럼 추가

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

	public int getHgnum() {
		return hgnum;
	}

	public void setHgnum(int hgnum) {
		this.hgnum = hgnum;
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

	public int getMpoint() {
		return mpoint;
	}

	public void setMpoint(int mpoint) {
		this.mpoint = mpoint;
	}

}
