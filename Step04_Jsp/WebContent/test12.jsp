<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test12.jsp</title>
</head>
<body>
	<%
		//폼 전송 되는 내용을 변수에 담아 보세요.");
		String email= request.getParameter("email");
		String pwd= request.getParameter("pwd");
		String job= request.getParameter("job");
		String gender= request.getParameter("gender");
		//리턴 되는 타입이 여러 개 => String []	=> request.getParameterValues();
		String[] hobby= request.getParameterValues("hobby");
		//List<String> hobby= new ArrayList(request.getParameterValues("hobby"))<>;
		
		System.out.println("email: "+email);
		System.out.println("pwd: "+pwd);
		System.out.println("job: "+job);
		System.out.println("gender: "+gender);
		
		for(String tmp:hobby){
			System.out.println("hobby: "+tmp);
		}
	%>
	
		<%int i=1; %>
		<%for(String tmp:hobby){%>
			<p>hobby[<%=i++ %>]: <%=tmp %></p>
		<%} %>
	
	
	 
	
</body>
</html>