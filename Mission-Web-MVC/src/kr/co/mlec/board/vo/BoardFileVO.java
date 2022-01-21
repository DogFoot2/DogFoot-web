package kr.co.mlec.board.vo;

public class BoardFileVO {

	private int no;
	private int boardNo;
	private String fileOriName;
	private String fileSaveName;
	private int fileSize;

	public BoardFileVO(int no, int boardNo, String fileOriName, String fileSaveName, int fileSize) {
		super();
		this.no = no;
		this.boardNo = boardNo;
		this.fileOriName = fileOriName;
		this.fileSaveName = fileSaveName;
		this.fileSize = fileSize;
	}

	public BoardFileVO() {
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}

	public String getFileOriName() {
		return fileOriName;
	}

	public void setFileOriName(String fileOriName) {
		this.fileOriName = fileOriName;
	}

	public String getFileSaveName() {
		return fileSaveName;
	}

	public void setFileSaveName(String fileSaveName) {
		this.fileSaveName = fileSaveName;
	}

	public int getFileSize() {
		return fileSize;
	}

	public void setFileSize(int fileSize) {
		this.fileSize = fileSize;
	}

	@Override
	public String toString() {
		return "BoardFileVO [no=" + no + ", boardNo=" + boardNo + ", fileOriName=" + fileOriName + ", fileSaveName="
				+ fileSaveName + ", fileSize=" + fileSize + "]";
	}

}
