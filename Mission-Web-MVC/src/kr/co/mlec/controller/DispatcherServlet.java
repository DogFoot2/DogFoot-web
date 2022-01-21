package kr.co.mlec.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DispatcherServlet extends HttpServlet {
//서블릿으로 인식하기 위해서 http 서블릿이라는 추상클래스 상속받기
// 서비스 메소드 필요

	private HandlerMapping mappings = null;

	@Override // init 최소 한 번만 실행되게 해 줌
	public void init(ServletConfig config) throws ServletException {
		// Config 객체를 통해서 getInitP~ 메소드 호출
		// String형으로 값이 리턴
		// propLoc => 경로 갖고있음 / 얘가 HandlerMapping에 있기 떄문에 넘길 수 있음
		String propLoc = config.getInitParameter("propLocation");
		mappings = new HandlerMapping(propLoc);
	}

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 직접적인 url 접근 불가 -> 가상의 url(.do)을 web.xml에 생성
		String uri = request.getRequestURI();
		String context = request.getContextPath();
		uri = uri.substring(context.length()); // substring: 잘라내기 -> url에서 문자를 뽑아내는 것/ MVC 뒤에 있는 문자 잘라내기
		System.out.println("요청 URI : " + uri);

		try {
			// 계속 호출될 필요 없이 서블릿 lifeCycle 중 init로 한 번만 실행되게 위에 작성
			// HandlerMapping mappings = new HandlerMapping();
			Controller control = mappings.getController(uri);

			String callPage = control.handleRequest(request, response);

			// forward or sendRedirect -> 선택해서 알맞게 보내줘야 함
			// 앞에 접두어를 붙이는 경우 sendRedirect 사용
			if (callPage.startsWith("redirect:")) {
				callPage = callPage.substring("redirect:".length());
				response.sendRedirect(request.getContextPath() + callPage);
			} else {
				RequestDispatcher dispatcher = request.getRequestDispatcher(callPage);
				dispatcher.forward(request, response); // forward 시킨 애가 요청 날아오는 파라미터들을 분석할 수 있게 두 개

			}

		} catch (Exception e) {
			e.printStackTrace();
			throw new ServletException(e);
		}
	}
}
