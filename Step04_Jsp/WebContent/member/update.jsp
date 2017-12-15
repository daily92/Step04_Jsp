<%@page import="test.dao.MemberDao"%>
<%@page import="test.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	int num= Integer.parseInt(request.getParameter("num"));
	String name= request.getParameter("name");
	String addr= request.getParameter("addr");
	
	MemberDto dto= new MemberDto(num,name,addr);
	MemberDao.getInstance().update(dto);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<script>
		alert('<%=num %> 번 회원 정보를 성공적으로 수정했다!');
		location.href='list.jsp';
	</script>
</body>
</html>