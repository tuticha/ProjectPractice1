package com.yg.vo;

public class SimpleBoardVO {
	private int bno;		// 글번호
	private String title;	// 제목
	private String content;	// 내용
	private String writer;	// 작성자(-> simple_member테이블의 id를 참조)
	private String writedate;  // 작성일시
	private int hitcount;	// 조회수
	
	public SimpleBoardVO() { }
	public SimpleBoardVO(int bno, String title, String content, String writer, String writedate, int hitcount) {
		this.bno = bno;
		this.title = title;
		this.content = content;
		this.writer = writer;
		this.writedate = writedate;
		this.hitcount = hitcount;
	}

	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
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
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getWritedate() {
		return writedate;
	}
	public void setWritedate(String writedate) {
		this.writedate = writedate;
	}
	public int getHitcount() {
		return hitcount;
	}
	public void setHitcount(int hitcount) {
		this.hitcount = hitcount;
	}
}





