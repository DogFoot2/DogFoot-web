package kr.co.mlec.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.mlec.controller.Controller;

public class LoginController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {

		return "/jsp/login/loginForm.jsp";
	}

}
