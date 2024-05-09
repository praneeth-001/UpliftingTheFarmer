package com.voidmain.pojo;

public class LandRental {

	private int landRentalId;
	private int squareFeets;
	private String owner;
	private String address;
	private float leaseAmount;
	private String mobileNumber;
	
	public int getLandRentalId() {
		return landRentalId;
	}
	public void setLandRentalId(int landRentalId) {
		this.landRentalId = landRentalId;
	}
	public int getSquareFeets() {
		return squareFeets;
	}
	public void setSquareFeets(int squareFeets) {
		this.squareFeets = squareFeets;
	}
	public String getOwner() {
		return owner;
	}
	public void setOwner(String owner) {
		this.owner = owner;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public float getLeaseAmount() {
		return leaseAmount;
	}
	public void setLeaseAmount(float leaseAmount) {
		this.leaseAmount = leaseAmount;
	}
	public String getMobileNumber() {
		return mobileNumber;
	}
	public void setMobileNumber(String mobileNumber) {
		this.mobileNumber = mobileNumber;
	}
	
}
