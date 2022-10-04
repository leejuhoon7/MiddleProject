package co.jtrip.qna.service;

import java.sql.Date;

public class QnaVO {
	private String memberId;
	private int qnaNo;
	private String qnaTitle;
	private Date qnaDate;
	private String qnaContent;
	
	
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public int getQnaNo() {
		return qnaNo;
	}
	public void setQnaNo(int qnaNo) {
		this.qnaNo = qnaNo;
	}
	public String getQnaTitle() {
		return qnaTitle;
	}
	public void setQnaTitle(String qnaTitle) {
		this.qnaTitle = qnaTitle;
	}
	public Date getQnaDate() {
		return qnaDate;
	}
	public void setQnaDate(Date qnaDate) {
		this.qnaDate = qnaDate;
	}
	public String getQnaContent() {
		return qnaContent;
	}
	public void setQnaContent(String qnaContent) {
		this.qnaContent = qnaContent;
	}
	@Override
	public String toString() {
		return "QnaVO [memberId=" + memberId + ", qnaNo=" + qnaNo + ", qnaTitle=" + qnaTitle + ", qnaDate=" + qnaDate
				+ ", qnaContent=" + qnaContent + "]";
	}
	
	
	
}
