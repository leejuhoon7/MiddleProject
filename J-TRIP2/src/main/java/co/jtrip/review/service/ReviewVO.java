package co.jtrip.review.service;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;



public class ReviewVO {	
	private int reviewNo;
	private String reviewTitle;
	private Date reviewDate;
	private String reviewContent;
	private String reviewScore;
	private String reviewImg;	
	private String reviewImgDir;	
	private String memberId;
	private int reviewHit;
	private String reviewLocal;
	public int getReviewNo() {
		return reviewNo;
	}
	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
	}
	public String getReviewTitle() {
		return reviewTitle;
	}
	public void setReviewTitle(String reviewTitle) {
		this.reviewTitle = reviewTitle;
	}
	public Date getReviewDate() {
		return reviewDate;
	}
	public void setReviewDate(Date reviewDate) {
		this.reviewDate = reviewDate;
	}
	public String getReviewContent() {
		return reviewContent;
	}
	public void setReviewContent(String reviewContent) {
		this.reviewContent = reviewContent;
	}
	public String getReviewScore() {
		return reviewScore;
	}
	public void setReviewScore(String reviewScore) {
		this.reviewScore = reviewScore;
	}
	public String getReviewImg() {
		return reviewImg;
	}
	public void setReviewImg(String reviewImg) {
		this.reviewImg = reviewImg;
	}
	public String getReviewImgDir() {
		return reviewImgDir;
	}
	public void setReviewImgDir(String reviewImgDir) {
		this.reviewImgDir = reviewImgDir;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public int getReviewHit() {
		return reviewHit;
	}
	public void setReviewHit(int reviewHit) {
		this.reviewHit = reviewHit;
	}
	public String getReviewLocal() {
		return reviewLocal;
	}
	public void setReviewLocal(String reviewLocal) {
		this.reviewLocal = reviewLocal;
	}
	@Override
	public String toString() {
		return "ReviewVO [reviewNo=" + reviewNo + ", reviewTitle=" + reviewTitle + ", reviewDate=" + reviewDate
				+ ", reviewContent=" + reviewContent + ", reviewScore=" + reviewScore + ", reviewImg=" + reviewImg
				+ ", reviewImgDir=" + reviewImgDir + ", memberId=" + memberId + ", reviewHit=" + reviewHit
				+ ", reviewLocal=" + reviewLocal + "]";
	}
	

}
