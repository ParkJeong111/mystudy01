package kr.co.teamd.mvc.dto;

public class MatchinglogDTO {
	private int mbnum;
	private String mltitle;
	private int mlperson;
	private String mllocation;
	private String mlstartdate;
	
	public int getMbnum() {
		return mbnum;
	}
	public void setMbnum(int mbnum) {
		this.mbnum = mbnum;
	}
	public String getMltitle() {
		return mltitle;
	}
	public void setMltitle(String mltitle) {
		this.mltitle = mltitle;
	}
	public int getMlperson() {
		return mlperson;
	}
	public void setMlperson(int mlperson) {
		this.mlperson = mlperson;
	}
	public String getMllocation() {
		return mllocation;
	}
	public void setMllocation(String mllocation) {
		this.mllocation = mllocation;
	}
	public String getMlstartdate() {
		return mlstartdate;
	}
	public void setMlstartdate(String mlstartdate) {
		this.mlstartdate = mlstartdate;
	}

}
