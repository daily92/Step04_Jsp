<%@page import="test.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test02.jsp</title>
</head>
<body>
	<%
		MemberDto dto= new MemberDto(1,"흰둥이","서울숲");
		int num= dto.getNum();
		String name= dto.getName();
		String addr= dto.getAddr();
	%>
</body>
	<p>번호: <strong><%=num %></strong></p>
	<p>이름: <strong><%=name %></strong></p>
	<p>주소: <strong><%=addr %></strong></p>
</html>