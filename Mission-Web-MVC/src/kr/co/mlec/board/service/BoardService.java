package kr.co.mlec.board.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.co.mlec.board.dao.BoardDAO;
import kr.co.mlec.board.vo.BoardFileVO;
import kr.co.mlec.board.vo.BoardVO;

public class BoardService {

	private BoardDAO boardDao;

	public BoardService() {
		boardDao = new BoardDAO();
	}

	/*
	 * 게시글 조회 서비스
	 */
	public List<BoardVO> selectAllBoard() {
		List<BoardVO> list = boardDao.selectAllBoard();
		return list;
	}

	/*
	 * 게시물 등록 서비스
	 */
	public void insertBoard(BoardVO board) {
		boardDao.insertBoard(board);
	}

	/**
	 * 게시물 등록(첨부파일 포함) 서비스
	 */
	public void insertBoard(BoardVO board, List<BoardFileVO> fileList) {

		// 게시물번호(seq_tbl_board_no) 추출
		// boardDAO 코드도 바꿔줘야 함
		int boardNo = boardDao.selectBoardNo();

		// tbl_board 저장
		board.setNo(boardNo);
		boardDao.insertBoard(board);

		// tbl_board_file 저장
		for (BoardFileVO fileVO : fileList) {
			fileVO.setBoardNo(boardNo);
			boardDao.insertFile(fileVO);
		}
	}

	/**
	 * 게시판 상세 서비스
	 */
	public Map<String, Object> detailBoard(int no) {
	      //1.
	      BoardVO board = boardDao.selectBoardByNo(no);
	      //2.
	      List<BoardFileVO> fileList = boardDao.selectFileByNo(no);
	      
	      Map<String, Object> data = new HashMap<>();
	      data.put("board", board);
	      data.put("fileList", fileList);
	      
	      
	      return data;
	      
	   }
	}
