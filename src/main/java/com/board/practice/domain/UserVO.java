package com.board.practice.domain;

import java.util.Date;

public class UserVO {
	private int uno;
	private String username;
	private String userid;
	private String userpw;
	private Date joindate;
	private String authority;
	
	public UserVO(){}

	public UserVO(int uno, String username, String userid, String userpw, Date joindate, String authority) {
		super();
		this.uno = uno;
		this.username = username;
		this.userid = userid;
		this.userpw = userpw;
		this.joindate = joindate;
		this.authority = authority;
	}

	public int getUno() {
		return uno;
	}

	public void setUno(int uno) {
		this.uno = uno;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getUserpw() {
		return userpw;
	}

	public void setUserpw(String userpw) {
		this.userpw = userpw;
	}

	public Date getJoindate() {
		return joindate;
	}

	public void setJoindate(Date joindate) {
		this.joindate = joindate;
	}

	public String getAuthority() {
		return authority;
	}

	public void setAuthority(String authority) {
		this.authority = authority;
	}
}
