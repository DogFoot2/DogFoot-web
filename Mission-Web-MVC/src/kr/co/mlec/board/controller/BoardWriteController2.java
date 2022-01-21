package kr.co.mlec.board.controller;

import java.io.File;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;

import kr.co.mlec.board.service.BoardService;
import kr.co.mlec.board.vo.BoardFileVO;
import kr.co.mlec.board.vo.BoardVO;
import kr.co.mlec.controller.Controller;
import kr.co.mlec.util.SesacFileNamePolicy;

public class BoardWriteController2 implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("utf-8");

		String saveFolder = "C:\\Lecture\\web-workspace\\Mission-Web-MVC\\WebContent\\upload";

		MultipartRequest multi = new MultipartRequest(request, saveFolder, 1024 * 1024 * 3, "utf-8",
				new SesacFileNamePolicy());
		// MultipartRequest(요청객체 , 저장위치, 크기, 인코딩, 원본파일을 이름으로 바꿔주는 정책);

		// 제목, 작성자, 내용 추출
		String title = multi.getParameter("title");
		String writer = multi.getParameter("writer");
		String content = multi.getParameter("content");

		BoardVO board = new BoardVO();
		board.setTitle(title);
		board.setWriter(writer);
		board.setContent(content);

		BoardService service = new BoardService();
		// service.insertBoard(board);

		/*
		 * multi.getFile("attachfile1"); multi.getFile("attachfile2"); 이렇게 쓰면 되는데 첨부파일이
		 * 많아지면 너무 길어져서 아예 파일 이름을 받아오는 코드 작성 밑에 multi.getFile
		 */

		// 첨부파일 추출(file_ori_name, file_save_name, file_size) -> tbl_board_file 저장
		Enumeration<String> files = multi.getFileNames();
		while (files.hasMoreElements()) {
			String fileName = files.nextElement();
			// System.out.println(fileName);
			File file = multi.getFile(fileName); // File객체: 위치, 크키, 만든날짜 등등 이런 정보를 알 수 있는 애

			if (file != null) {
				String fileOriName = multi.getOriginalFileName(fileName);
				String fileSaveName = multi.getFilesystemName(fileName);
				int fileSize = (int) file.length();

				BoardFileVO fileVO = new BoardFileVO();
				fileVO.setFileOriName(fileOriName);
				fileVO.setFileSaveName(fileSaveName);
				fileVO.setFileSize(fileSize);
			}
		}

		return "redirect:/board/list.do";
		// redirect: 여기까지가 접두어 , 그 뒤가 url
	}

}
