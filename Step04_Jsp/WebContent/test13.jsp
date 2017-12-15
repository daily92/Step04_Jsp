<%-- contentType="application/json; 으로 수정 --%>
<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 요청 인코딩 설정
	request.setCharacterEncoding("utf-8");
	// message 라는 key 값으로 전달되는 요청 파라미터 추출
	String msg= request.getParameter("message");
	// 콘솔에 출력해보기
	System.out.println(msg);
%>
{"response":"클라이언트야, 잘 받았어 ~!"}