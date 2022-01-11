package com.yg.vo;

public class SimpleMemberVO {
	private String id;		// (권장) 필드를 '파라미터'의 이름과 동일하게!
	private String pw;		// (권장) 필드를 '파라미터'의 이름과 동일하게!
	private String name;	// (권장) 필드를 '파라미터'의 이름과 동일하게!

	public SimpleMemberVO() { }   // (권장)
	public SimpleMemberVO(String id, String pw, String name) {
		this.id = id;
		this.pw = pw;
		this.name = name;
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
}






