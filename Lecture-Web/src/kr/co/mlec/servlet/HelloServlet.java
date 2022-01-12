package kr.co.mlec.servlet;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HelloServlet extends HttpServlet {

	@Override
	public void init(ServletConfig config) throws ServletException {
	 System.out.println("init() : 최초 한 번만 실행되는 메소드입니다");
	}
	
	@Override
	protected void service(HttpServletRequest request
			, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("service() : 실제 작업이 수행되는 메소드, 사용자 요청마다 호출됩니다");
	}

	@Override
	public void destroy() {
	}



}
