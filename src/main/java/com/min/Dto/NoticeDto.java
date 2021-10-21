package com.min.Dto;

import java.util.Date;

public class NoticeDto {
	
	private String seq;
	private String sort;
	private String title;
	private String content;
	private Date regdate;
	
	public NoticeDto() {
		
	}

	public String getSeq() {
		return seq;
	}

	public void setSeq(String seq) {
		this.seq = seq;
	}

	public String getSort() {
		return sort;
	}

	public void setSort(String sort) {
		this.sort = sort;
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

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public NoticeDto(String seq, String sort, String title, String content, Date regdate) {
		super();
		this.seq = seq;
		this.sort = sort;
		this.title = title;
		this.content = content;
		this.regdate = regdate;
	}

	@Override
	public String toString() {
		return "NoticeDto [seq=" + seq + ", sort=" + sort + ", title=" + title + ", content=" + content + ", regdate="
				+ regdate + "]";
	}

	
	
	
}
