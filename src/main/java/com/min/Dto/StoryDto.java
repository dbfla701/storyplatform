package com.min.Dto;

public class StoryDto {
	
	// 스토리 게시판
	
	private int seq;
	private String keyword;
	private String user_email;
	private String title;
	private String content;
	private String emailcheck; // 공개/비공개
	private String permit;
	
	public StoryDto() {
		
	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public String getUser_email() {
		return user_email;
	}

	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getEmailcheck() {
		return emailcheck;
	}

	public void setEmailcheck(String emailcheck) {
		this.emailcheck = emailcheck;
	}

	public String getPermit() {
		return permit;
	}

	public void setPermit(String permit) {
		this.permit = permit;
	}

	public StoryDto(int seq, String keyword, String user_email, String title, String content, String emailcheck,
			String permit) {
		super();
		this.seq = seq;
		this.keyword = keyword;
		this.user_email = user_email;
		this.title = title;
		this.content = content;
		this.emailcheck = emailcheck;
		this.permit = permit;
	}

	@Override
	public String toString() {
		return "StoryDto [seq=" + seq + ", keyword=" + keyword + ", user_email=" + user_email + ", title=" + title
				+ ", content=" + content + ", emailcheck=" + emailcheck + ", permit=" + permit + "]";
	}

	

}
