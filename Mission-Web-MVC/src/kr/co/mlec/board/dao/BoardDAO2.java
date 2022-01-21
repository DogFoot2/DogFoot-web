package kr.co.mlec.board.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import kr.co.mlec.board.vo.BoardVO;
import kr.co.mlec.util.ConnectionFactory;
import kr.co.mlec.util.JDBCClose;

/**
 * 게시판 DB(tbl_board) CRUD
 * 
 * @author USER
 */

public class BoardDAO2 {

	/**
	 * 전체게시글 조회
	 */
	public List<BoardVO> selectAllBoard() {

		List<BoardVO> list = new ArrayList<>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = new ConnectionFactory().getConnection();
			StringBuilder sql = new StringBuilder();
			sql.append("select no, title, writer, to_char(reg_date, 'yyyy-mm-dd') as reg_date ");
			sql.append(" from tbl_board ");
			sql.append(" order by no desc ");
			pstmt = conn.prepareStatement(sql.toString());
			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
				int no = rs.getInt("no");
				String title = rs.getString("title");
				String writer = rs.getString("writer");
				String regDate = rs.getString("reg_date");
				BoardVO board = new BoardVO(no, title, writer, regDate);

				list.add(board);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCClose.close(pstmt, conn);
		}
		return list;
	}

	/**
	 * 새글등록
	 */
	public void insertBoard(BoardVO board) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			// 데이터베이스 tbl_board 테이블에 새글등록
			conn = new ConnectionFactory().getConnection();
			StringBuilder sql = new StringBuilder();
			sql.append("insert into tbl_board(no, title, writer, content) ");
			sql.append(" values(seq_tbl_board_no.nextval, ?, ?, ?) ");
			pstmt = conn.prepareStatement(sql.toString());

			// 물음표 채워주기
			pstmt.setString(1, board.getTitle());
			pstmt.setString(2, board.getWriter());
			pstmt.setString(3, board.getContent());
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCClose.close(pstmt, conn);
		}
	}

	/**
	 * 게시판번호에 해당 게시물 조회
	 */
	public BoardVO selectBoardByNo(int boarNo) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		BoardVO board = null;
		// 내가 리턴하려고 하는 애가 list면 try 위에 있어야 함 / 그래야 맨 마지막에 리턴 가능
		try {
			conn = new ConnectionFactory().getConnection();
			StringBuilder sql = new StringBuilder();
			sql.append("select no, title, writer, content, view_cnt, to_char(reg_date, 'yyyy-mm-dd') reg_date ");
			sql.append(" from tbl_board ");
			sql.append(" where no = ? ");
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setInt(1, boarNo);
			ResultSet rs = pstmt.executeQuery();

			if (rs.next()) { // 없을 수도 있다고 생각할 수 있기 때문에 안전하게 if로 코드 작성
				int no = rs.getInt("no");
				String title = rs.getString("title");
				String writer = rs.getString("writer");
				String content = rs.getString("content");
				int viewCnt = rs.getInt("view_cnt");
				String regDate = rs.getString("reg_date");
				// 묶기 위해 객체 필요

				board = new BoardVO(no, title, writer, content, viewCnt, regDate);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCClose.close(pstmt, conn);
		}
		return board;
	}

	/**
	 * 게시물 수정 (제목, 작성, 내용)
	 */
	public void updateBoard(BoardVO board) {
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {

			conn = new ConnectionFactory().getConnection();
			StringBuilder sql = new StringBuilder();
			sql.append("update tbl_board ");
			sql.append(" set title = ?, writer = ?, content = ? ");
			sql.append(" where no = ? "); // 이 쿼리를 pre~객체에 넣어주기

			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setString(1, board.getTitle());
			pstmt.setString(2, board.getWriter());
			pstmt.setString(3, board.getContent());
			pstmt.setInt(4, board.getNo());
			pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCClose.close(pstmt, conn);
		}
	}
}
