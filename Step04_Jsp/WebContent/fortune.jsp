<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 서블릿에 그대로 들어감 -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>오늘의 운세 페이지</title>
</head>
<body>
	<!-- 서블릿 안의 service() 메소드 안에 들어가는 내용 <%%> -->
	<%
		// 서블릿으로 바뀌었을 때 service() 메소드 안 쪽이라고 생각하면 된다.
		String fortuneToday= "와우 귀가 떨어질 뻔 한 날씨에요!";
	%>
	<!-- 서블릿에 그대로 들어감 -->
	<p>오늘의 운세: <strong><%=fortuneToday %></strong></p>
	<p><a href='index.html'>메인 페이지로 돌아가기</a></p>
</body>
</html>