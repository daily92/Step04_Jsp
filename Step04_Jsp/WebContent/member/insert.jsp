<%@page import="test.dao.MemberDao"%>
<%@page import="test.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String name= request.getParameter("name");
	String addr= request.getParameter("addr");
	
	MemberDto dto= new MemberDto();
	dto.setName(name);
	dto.setAddr(addr);
	MemberDao.getInstance().insert(dto);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<h3>회원이 추가 되었습니다.</h3>
	<a href="list.jsp">회원 목록 보기</a>
</body>
</html>