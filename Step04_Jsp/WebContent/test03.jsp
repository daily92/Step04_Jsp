<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<%
		List<String> names= new ArrayList<>();
		names.add("흰둥이");
		names.add("짱구");
		names.add("짱아");
		names.add("철수");
		names.add("맹구");
	%>
	<h3>친구 목록</h3>
	<ul>
		<li><%=names.get(0) %></li>
		<li><%=names.get(1) %></li>
		<li><%=names.get(2) %></li>
		<li><%=names.get(3) %></li>
		<li><%=names.get(4) %></li>
	</ul>
	
	<h3>친구 목록(for문(반복문) 사용)</h3>
	<ul>
		<%for(int i=0; i<names.size(); i++){ %>
			<%-- <li></li> 가 반복문 횟수만큼 생성 --%>
			<li><%=names.get(i) %></li>
		<%} %> 
	</ul>
	
	<h3>친구 목록(확장 for문(반복문) 사용)</h3>
	<ul>
		<%for(String tmp:names){ %>
			<%-- <li></li> 가 반복문 횟수만큼 생성 --%>
			<li><%=tmp %></li>
		<%} %> 
	</ul>
</body>
</html>