package com.voidmain.pojo;

public class Fertilizer {

	private int fertilizerId;
	private String name;
	private String owner;
	private String description;
	private long mobile;
	private int quantity;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getOwner() {
		return owner;
	}
	public void setOwner(String owner) {
		this.owner = owner;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getFertilizerId() {
		return fertilizerId;
	}
	public void setFertilizerId(int fertilizerId) {
		this.fertilizerId = fertilizerId;
	}
	public long getMobile() {
		return mobile;
	}
	public void setMobile(long mobile) {
		this.mobile = mobile;
	}
}
