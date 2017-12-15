<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>chatting.jsp</title>
<script src="js/jquery-3.2.1.js"></script>
<script src="bootstrap.js"></script>
</head>
<body>
	<h3>채팅방에 들어오신 것을 환영합니다~</h3>
	<table>
		<thead>
			<tr>
				<th>순서</th>
				<th>내용</th>
				<th>작성자</th>
				<th>시간</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td><input type="text" name="num"/></td>
				<td><input type="text" name="context"/></td>
				<td><input type="text" name="writer"/></td>
				<td><input type="text" name="date"/></td>
			</tr>
		</tbody>
	</table>
</body>
</html>