package com.min.Dto;

public class BoardDto {
	
	// 관리자 계정 정보
	
	private String name;
	private String adminid;
	private String pw;
	private String email;
	
	public BoardDto() {
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAdminid() {
		return adminid;
	}

	public void setAdminid(String adminid) {
		this.adminid = adminid;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public BoardDto(String name, String adminid, String pw, String email) {
		super();
		this.name = name;
		this.adminid = adminid;
		this.pw = pw;
		this.email = email;
	}

	@Override
	public String toString() {
		return "BoardDto [name=" + name + ", adminid=" + adminid + ", pw=" + pw + ", email=" + email + "]";
	}
	
	

}
