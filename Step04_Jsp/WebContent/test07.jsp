<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test07.jsp</title>
</head>
<body>
	<%
		// 조건부로 다른 내용의 javascript 출력하기
		boolean isWait= false;
	%>
	<%if(isWait){ %>
		<script>
			alert("아직 점심시간 아니야, 기다려~~");
		</script>
	<%}else{ %>
		<script>
			alert("점심 먹자~!");
		</script>
	<%} %>
</body>
</html>