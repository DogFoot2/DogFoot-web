package kr.co.mlec.board.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.mlec.controller.Controller;

public class BoardWriteFormController implements Controller {

	// jsp 주소를 알려줘야 하기 때문에 리턴값이 string
	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {

		return "/jsp/board/writeForm.jsp";
	}
}
