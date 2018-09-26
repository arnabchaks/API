package com.capgemini.dto;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

public class Products {
	private int productId;
	private String productName;
	private double productPrice;
	private ProductCategory productCategory;
	private int productQuantity;
	private double productRating;
	private int totalSold;
	
	List<Merchants> merchants;
	List<Integer> merchantsId  = new ArrayList<Integer>();
	List<String> merchantsName  = new ArrayList<String>();
	
	public List<String> getMerchantsName() {
		List<Merchants> mcc=this.getMerchants();
		for(Merchants m : mcc)
		{
			merchantsName.add(m.getMerchantName());
		}
		return this.merchantsName;
	}

	public void setMerchantsName(List<String> merchantsName) {
		this.merchantsName = merchantsName;
	}

	public List<Integer> getMerchantsId() {
		List<Merchants> mcc=this.getMerchants();
		for(Merchants m : mcc)
		{
			merchantsId.add(m.getMerchantId());
		}
		return this.merchantsId;
	}
	
	public void setMerchantsId(List<Integer> merchantsId) {
		this.merchantsId = merchantsId;
	}

	public List<Merchants> getMerchants() {
		return merchants;
	}
	public void setMerchants(List<Merchants> merchants) {
		this.merchants = merchants;
	}
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public double getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(double productPrice) {
		this.productPrice = productPrice;
	}
	public ProductCategory getProductCategory() {
		return productCategory;
	}
	public void setProductCategory(ProductCategory productCategory) {
		this.productCategory = productCategory;
	}
	public int getProductQuantity() {
		return productQuantity;
	}
	public void setProductQuantity(int productQuantity) {
		this.productQuantity = productQuantity;
	}
	public double getProductRating() {
		return productRating;
	}
	public void setProductRating(double productRating) {
		this.productRating = productRating;
	}
	public int getTotalSold() {
		return totalSold;
	}
	public void setTotalSold(int totalSold) {
		this.totalSold = totalSold;
	}
	@Override
	public String toString() {
		return "Products [productId=" + productId + ", productName=" + productName + ", productPrice=" + productPrice
				+ ", productCategory=" + productCategory + ", productQuantity=" + productQuantity + ", productRating="
				+ productRating + ", totalSold=" + totalSold + ", merchants=" + merchants + "]";
	}
}
