package kr.co.mlec.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.mlec.controller.Controller;
import kr.co.mlec.member.service.LoginService;
import kr.co.mlec.member.vo.LoginVO;

public class LoginProcessController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("utf-8");

		String id = request.getParameter("id");
		String password = request.getParameter("password");

		LoginVO loginVO = new LoginVO(id, password);

		LoginService service = new LoginService();
		LoginVO userVO = service.login(loginVO);

		String url = "";
		if (userVO == null) {
			// 로그인 실패 -> 인덱스로 가지게
			url = "/login.do";
		} else {
			// 로그인 성공
			url = "/";
			HttpSession session = request.getSession();
			session.setAttribute("userVO", userVO);
		}

		return "redirect:" + url; // "redirect:/Mission-Web-MVC/login.do"
	}

}
