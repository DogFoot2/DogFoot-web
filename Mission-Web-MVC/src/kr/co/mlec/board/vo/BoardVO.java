package kr.co.mlec.board.vo;

public class BoardVO {

	private int no;
	private String title;
	private String writer;
	private String content;
	private int viewCnt;
	private String regDate;

	// alt+shift+s - > c
	public BoardVO() {

	}

	// alt+shift+s - o >

	public BoardVO(int no, String title, String writer, String content, int viewCnt, String regDate) {

		this.no = no;
		this.title = title;
		this.writer = writer;
		this.content = content;
		this.viewCnt = viewCnt;
		this.regDate = regDate;
	}

	public BoardVO(int no, String title, String writer, String regDate) {

		this.no = no;
		this.title = title;
		this.writer = writer;
		this.regDate = regDate;
	}

	// alt+shift+s -> r
	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getViewCnt() {
		return viewCnt;
	}

	public void setViewCnt(int viewCnt) {
		this.viewCnt = viewCnt;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	// alt+shift+s -> s
	@Override
	public String toString() {
		return "BoardVO [no=" + no + ", title=" + title + ", writer=" + writer + ", content=" + content + ", viewCnt="
				+ viewCnt + ", regDate=" + regDate + "]";
	}

	public BoardVO(String title, String writer) {
		super();
		this.title = title;
		this.writer = writer;
	}

}
