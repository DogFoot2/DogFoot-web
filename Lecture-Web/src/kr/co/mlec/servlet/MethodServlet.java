package kr.co.mlec.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MethodServlet extends HttpServlet{

	// http://localhost:9999/Lecture-Web/method?id=aaa&password=bbb
	// id 값 추출하여 정보 얻어내기
	@Override
	protected void doGet(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {

		String method = request.getMethod(); // get 또는 post 중 어떤 메소드를 사용했는지
		String uri = request.getRequestURI(); // 요청 url도 알 수 있음
		// uri : 내 소스로부터 url 구분자 이름
		//id에 해당하는 값 알아내기
		String id = request.getParameter("id");
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<HTML>"); //클라이언트에게 전송
		out.println("	<HEAD>");
		out.println("		<TITLE>메소드 호출 결과</TITLE>");
		out.println("	</HEAD>");
		out.println("	<BODY>");
		out.println("==========================================<br>");
		out.println("&nbsp;&nbsp;&nbsp;&nbsp;출  력  결  과  <br>");
		out.println("==========================================<br>");
		out.println("요청 메소드 : " + method + "<br>");
		out.println("요청 URI : " + uri + "<br>");
		out.println("파라미터(id) : " + id + "<br>");
		out.println("==========================================<br>");
		out.println("	</BODY>");
		out.println("</HTML>");
		
		out.flush();
		out.close();
		
		/*
		System.out.println("요청 메소드 : " + method);
		System.out.println("요청 URI : " + uri);
		System.out.println("id : " + id);
		*/
		
	}

	@Override
	protected void doPost(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		String method = request.getMethod();
		String uri = request.getRequestURI();
		String id = request.getParameter("id");
		
		System.out.println("요청 메소드 : " + method + "<br>");
		System.out.println("요청 URI : " + uri + "<br>");
		System.out.println("파라미터(id) : " + id + "<br>");
	}
	
	

}
