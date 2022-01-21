package kr.co.mlec.board.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.mlec.board.service.BoardService;
import kr.co.mlec.board.vo.BoardFileVO;
import kr.co.mlec.board.vo.BoardVO;
import kr.co.mlec.controller.Controller;

public class BoardDetailController implements Controller {

	@Override
	   public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {

	      int no = Integer.parseInt(request.getParameter("no"));
	      
	      BoardService service = new BoardService();
	      // 해당게시글 + 첨부파일 조회
	      
	      Map<String, Object> result = service.detailBoard(no);
	      
	      BoardVO board = (BoardVO)result.get("board");
	      List<BoardFileVO> fileList = (List<BoardFileVO>)result.get("fileList");
	      
	      // 공유영역에 등록
	      request.setAttribute("board", board);
	      request.setAttribute("fileList", fileList);
	      
	      return "/jsp/board/detail.jsp";
	   }
	
	
}