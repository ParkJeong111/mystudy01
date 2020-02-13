package kr.co.teamd.mvc.dto;

public class HostSearchDTO {
	private String searchValue;
	private int minprice, maxprice;

	public String getSearchValue() {
		return searchValue;
	}

	public void setSearchValue(String searchValue) {
		this.searchValue = searchValue;
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

}
