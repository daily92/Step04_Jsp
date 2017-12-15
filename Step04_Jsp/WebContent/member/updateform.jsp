<%@page import="test.dao.MemberDao"%>
<%@page import="test.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int num= Integer.parseInt(request.getParameter("num"));
	MemberDto dto= MemberDao.getInstance().getData(num);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>updateform.jsp</title>
</head>
<body>
	<h3>회원 정보 수정 폼 입니다.</h3>
	<form action="update.jsp" method="post">
		<input type="hidden" name="num" value="<%=dto.getNum() %>"/>
		<input type="text" name="name" value="<%=dto.getName()%>"/>
		<input type="text" name="addr" value="<%=dto.getAddr()%>"/>
		<button type="submit">수정 완료</button>
		<button type="reset">취소취소</button>
	</form>
</body>
</html>