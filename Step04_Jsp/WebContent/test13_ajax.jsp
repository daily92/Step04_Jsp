<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test13_ajax.jsp</title>
<script src="js/jquery-3.2.1.js"></script>
</head>
<body>
	<input type="text" id="inputMsg"/>
	<button id="sendBtn">전송</button>
	<script>
		// 전송 버튼을 눌렀을 때 실행할 함수 등록
		$("#sendBtn").click(function(){
			// 입력한 문자열을 읽어온다.
			var msg= $("#inputMsg").val();
			// 문자열을 ajax 요청을 통해서 서버에 전송
			$.ajax({
				method: "post",
				url: "test13.jsp",
				//입력한 문자열을 msg 로 읽어와서 message key 값에 넣어줌
				//request.getParameter("message");
				data: {message:msg},
				success:function(data){
					//서버에서 응답되는 문자열을 알림창에 띄움
					//test13.jsp 에서 
					// contentType="application/json; 으로 수정 --%> 로 바꾸면
					//alert 되긴 되는데, {object:object}
					alert(data);
					
					// data 는 object 임
					// json 문자열을 jquery 가 object 로 바꿔줌
					// object 의 구조: {response: "xxxx"};
					console.log(data);
				}
			});
		});
	</script>
</body>
</html>