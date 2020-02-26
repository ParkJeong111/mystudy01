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
	private HostDTO hostdto; // resultMap������� HostDTO �߰�. usedate �÷� �߰�
	
	private int cnt; //��õ��ü����Ʈ�� ���� �߰�
	private String himage; //��õ��ü����Ʈ�� ���� �߰�
	private String haddr; //��õ��ü����Ʈ�� ���� �߰�
	private int hnum; //��õ��ü����Ʈ�� ���� �߰�
	
	
	
	
	public String getHaddr() {
		return haddr;
	}

	public void setHaddr(String haddr) {
		this.haddr = haddr;
	}

	public int getCnt() {
		return cnt;
	}

	public void setCnt(int cnt) {
		this.cnt = cnt;
	}

	public int getHnum() {
		return hnum;
	}

	public void setHnum(int hnum) {
		this.hnum = hnum;
	}

	public String getHimage() {
		return himage;
	}

	public void setHimage(String himage) {
		this.himage = himage;
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
