package kr.co.teamd.mvc.dto;

import org.springframework.web.multipart.MultipartFile;

public class MatchingboardDTO {

	private int mbnum;
	private String mbtitle;
	private String mid;
	private String mbcontent;
	private String mbtag;
	private int mbperson;
	private String mblocation;
	private String mbimage;
	private String mbstartdate;
	private String mbdate;
	private int mbreport;
	private String startdate;
	private String enddate;
	private String mbstatus;
	private String mbresult;
	private MultipartFile mbfile;
	
	public String getMbstatus() {
		return mbstatus;
	}
	public void setMbstatus(String mbstatus) {
		this.mbstatus = mbstatus;
	}
	public String getMbresult() {
		return mbresult;
	}
	public void setMbresult(String mbresult) {
		this.mbresult = mbresult;
	}
	
	
	public String getStartdate() {
		return startdate;
	}
	public void setStartdate(String startdate) {
		this.startdate = startdate;
	}
	public String getEnddate() {
		return enddate;
	}
	public void setEnddate(String enddate) {
		this.enddate = enddate;
	}
	public int getMbreport() {
		return mbreport;
	}
	public void setMbreport(int mbreport) {
		this.mbreport = mbreport;
	}
	
	public int getMbnum() {
		return mbnum;
	}
	public void setMbnum(int mbnum) {
		this.mbnum = mbnum;
	}
	public String getMbtitle() {
		return mbtitle;
	}
	public void setMbtitle(String mbtitle) {
		this.mbtitle = mbtitle;
	}
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public String getMbcontent() {
		return mbcontent;
	}
	public void setMbcontent(String mbcontent) {
		this.mbcontent = mbcontent;
	}
	public String getMbtag() {
		return mbtag;
	}
	public void setMbtag(String mbtag) {
		this.mbtag = mbtag;
	}
	public int getMbperson() {
		return mbperson;
	}
	public void setMbperson(int mbperson) {
		this.mbperson = mbperson;
	}
	public String getMblocation() {
		return mblocation;
	}
	public void setMblocation(String mblocation) {
		this.mblocation = mblocation;
	}
	public String getMbimage() {
		return mbimage;
	}
	public void setMbimage(String mbimage) {
		this.mbimage = mbimage;
	}
	public String getMbstartdate() {
		return mbstartdate;
	}
	public void setMbstartdate(String mbstartdate) {
		this.mbstartdate = mbstartdate;
	}
	public String getMbdate() {
		return mbdate;
	}
	public void setMbdate(String mbdate) {
		this.mbdate = mbdate;
	}
	public MultipartFile getMbfile() {
		return mbfile;
	}
	public void setMbfile(MultipartFile mbfile) {
		this.mbfile = mbfile;
	}
	
	
}
