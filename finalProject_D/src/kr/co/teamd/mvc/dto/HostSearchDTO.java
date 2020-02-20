package kr.co.teamd.mvc.dto;

public class HostSearchDTO {
	private String searchValue, searchLocation;
	private String hname;

	private int minprice, maxprice;
	private String star;
	private int starnum;
	private int type;

	public String getSearchValue() {
		return searchValue;
	}

	public void setSearchValue(String searchValue) {
		this.searchValue = searchValue;
	}

	public String getSearchLocation() {
		return searchLocation;
	}

	public void setSearchLocation(String searchLocation) {
		this.searchLocation = searchLocation;
	}

	public String getHname() {
		return hname;
	}

	public void setHname(String hname) {
		this.hname = hname;
	}

	public int getMinprice() {
		return minprice;
	}

	public void setMinprice(int minprice) {
		this.minprice = minprice;
	}

	public int getMaxprice() {
		return maxprice;
	}

	public void setMaxprice(int maxprice) {
		this.maxprice = maxprice;
	}

	public String getStar() {
		return star;
	}

	public void setStar(String star) {
		this.star = star;
	}

	public int getStarnum() {
		return starnum;
	}

	public void setStarnum(int starnum) {
		this.starnum = starnum;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

}
