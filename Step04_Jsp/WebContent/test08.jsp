<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test08.jsp</title>
</head>
<body>
	<%
		// javascript 변수에 원하는 값 할당하기
		boolean isRun= true;
		String myName= "흰둥이";
	%>
	<script>
		var isRun=<%=isRun%>;
		var myName="<%=myName%>";
		
	</script>
	<h3>페이지 소스 보기를 해서 로딩된 javascript 를 확인!(아래와 같다)</h3>
	<p>var isRun=<%=isRun%>;</p>
	<p>var myName="<%=myName%>";</p>
</body>
</html>