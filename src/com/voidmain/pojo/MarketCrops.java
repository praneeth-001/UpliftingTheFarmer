package com.voidmain.pojo;

public class MarketCrops {

	private int marketCropId;
	private String crop;
	private float price;
	private String quality;
	private int market;
	
	public String getCrop() {
		return crop;
	}
	public void setCrop(String crop) {
		this.crop = crop;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public String getQuality() {
		return quality;
	}
	public void setQuality(String quality) {
		this.quality = quality;
	}
	public int getMarket() {
		return market;
	}
	public void setMarket(int market) {
		this.market = market;
	}
	public int getMarketCropId() {
		return marketCropId;
	}
	public void setMarketCropId(int marketCropId) {
		this.marketCropId = marketCropId;
	}
}
