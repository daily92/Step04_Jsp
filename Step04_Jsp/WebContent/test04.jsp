<%@page import="test.dto.MemberDto"%>
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
		List<MemberDto> list= new ArrayList<>();
		list.add(new MemberDto(1,"흰둥이","서울숲"));
		list.add(new MemberDto(2,"짱구","잠실"));
		list.add(new MemberDto(3,"짱아","삼성"));
	%>
	<h3>친구 정보 입니다.</h3>
	<table>
		<thead>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>주소</th>
			</tr>
		</thead>
		<tbody>	
			<tr>
				<td><%=list.get(0).getNum() %></td>
				<td><%=list.get(0).getName() %></td>
				<td><%=list.get(0).getAddr() %></td>
			</tr>
			<tr>
				<td><%=list.get(1).getNum() %></td>
				<td><%=list.get(1).getName() %></td>
				<td><%=list.get(1).getAddr() %></td>
			</tr>	
			<tr>
				<td><%=list.get(2).getNum() %></td>
				<td><%=list.get(2).getName() %></td>
				<td><%=list.get(2).getAddr() %></td>
			</tr>					
		</tbody>
	</table>
	
	<h3>친구 정보 입니다. (for문)</h3>
	<table>
		<thead>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>주소</th>
			</tr>
		</thead>
		<tbody>			
			<%for(int i=0; i<list.size(); i++){ %>
				<tr>
					<td><%=list.get(i).getNum() %></td>
					<td><%=list.get(i).getName() %></td>
					<td><%=list.get(i).getAddr() %></td>
				</tr>
			<%} %>			
		</tbody>
	</table>
	
	<h3>친구 정보 입니다.(확장 for문)</h3>
	<table>
		<thead>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>주소</th>
			</tr>
		</thead>
		<tbody>			
			<%for(MemberDto tmp:list){ %>
				<tr>
					<td><%=tmp.getNum() %></td>
					<td><%=tmp.getName() %></td>
					<td><%=tmp.getAddr() %></td>
				</tr>
			<%} %>			
		</tbody>
	</table>
</body>
</html>