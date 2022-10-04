package co.jtrip.member.service;


public class MemberVO {
	private String memberId;
	private String memberPassword;
	private String memberName;
	private String memberAddress;
	private String memberEmail;
	private String memberTel;
	private String memberAuthor;
	private String memberFavorite;
	
	
	public String getMemberId() {
		return memberId;
	}
	@Override
	public String toString() {
		return "MemberVO [memberId=" + memberId + ", memberPassword=" + memberPassword + ", memberName=" + memberName
				+ ", memberAddress=" + memberAddress + ", memberEmail=" + memberEmail + ", memberTel=" + memberTel
				+ ", memberAuthor=" + memberAuthor + ", memberFavorite=" + memberFavorite + "]";
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getMemberPassword() {
		return memberPassword;
	}
	public void setMemberPassword(String memberPassword) {
		this.memberPassword = memberPassword;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getMemberAddress() {
		return memberAddress;
	}
	public void setMemberAddress(String memberAddress) {
		this.memberAddress = memberAddress;
	}
	public String getMemberEmail() {
		return memberEmail;
	}
	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}
	public String getMemberTel() {
		return memberTel;
	}
	public void setMemberTel(String memberTel) {
		this.memberTel = memberTel;
	}
	public String getMemberAuthor() {
		return memberAuthor;
	}
	public void setMemberAuthor(String memberAuthor) {
		this.memberAuthor = memberAuthor;
	}
	public String getMemberFavorite() {
		return memberFavorite;
	}
	public void setMemberFavorite(String memberFavorite) {
		this.memberFavorite = memberFavorite;
	}
	

}
