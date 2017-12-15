<%@page import="test.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int num= Integer.parseInt(request.getParameter("num"));
	MemberDao.getInstance().delete(num);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<h3><%=num %> 번 회원 정보를 성공적으로 삭제 했습니다!</h3>
	<a href="list.jsp">회원 목록 보기</a>
</body>
</html>