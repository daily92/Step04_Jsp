package test.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//  /fortune 요청을 처리할 서블릿
@WebServlet("/fortune")
public class FortuneServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 클라이언트에게 응답할 내용
		String fortuneToday= "와우 귀가 떨어질 뻔 한 날씨에요!";
		
		// html 형식으로 문자열 응답
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");

		PrintWriter pw = response.getWriter();
		pw.println("<doctype html>");
		pw.println("<html>");
		pw.println("<head>");
		pw.println("<meta charset='utf-8'/>");
		pw.println("<title></title>");
		pw.println("</head>");
		pw.println("<body>");
		pw.print("<p>오늘의 운세: <strong>"+fortuneToday+"</strong></p>");
		pw.print("<p><a href='index.html'>메인 페이지로 돌아가기</a></p>");
		pw.println("</body>");
		pw.println("</html>");
	}
}
