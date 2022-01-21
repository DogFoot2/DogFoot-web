package kr.co.mlec.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.mlec.controller.Controller;

public class LogoutController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {

		HttpSession session = request.getSession();
		session.invalidate();

		return "redirect:";
	}

}
