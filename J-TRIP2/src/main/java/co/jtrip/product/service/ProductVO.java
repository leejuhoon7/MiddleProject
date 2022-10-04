package co.jtrip.product.service;



public class ProductVO {
	// 상품 VO
	
	private int productNo;
	private String productDate;
	private String productName;
	private int productPrice;
	private String productImg;
	private String productImgName;
	public int getProductNo() {
		return productNo;
	}
	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}
	public String getProductDate() {
		return productDate;
	}
	public void setProductDate(String productDate) {
		this.productDate = productDate;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public int getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}
	public String getProductImg() {
		return productImg;
	}
	public void setProductImg(String productImg) {
		this.productImg = productImg;
	}
	public String getProductImgName() {
		return productImgName;
	}
	public void setProductImgName(String productImgName) {
		this.productImgName = productImgName;
	}
	@Override
	public String toString() {
		return "ProductVO [productNo=" + productNo + ", productDate=" + productDate + ", productName=" + productName
				+ ", productPrice=" + productPrice + ", productImg=" + productImg + ", productImgName=" + productImgName
				+ "]";
	}


	
}
