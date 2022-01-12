package kr.co.mlec.board;

/*
 *	자바빈즈 클래스
 *	1. 패키지 존재
 *	2. 클래스의 접근제한자 public
 *	3. 멤버변수의 접근제한자 private
 *	4. getter/setter 구현
 *	5. 기본생성자
 *
 *	기본생성자 단축키 alt+shift+s 누른후 c
 *	매개변수생성자 alt+shift+s 누른후 o
 *	get/set alt+shift+s 누른후r
 *	toString() alt+shift+s 누른후s
 * 
 */

public class BoardVO {
	private int no;
	private String title;
	
	public BoardVO() {
	}

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
	

}
