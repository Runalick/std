<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
</head>
<body>
<form action="add.std">
	<table border=1 align=center>
		<tr>
			<th colspan=2>신규 정보 입력
		</tr>
		<tr>
			<td>이름
			<td><input type=text name=name>
		</tr>
		<tr>
			<td>국어
			<td><input type=text name=kor>
		</tr>
		<tr>
			<td>영어
			<td><input type=text name=eng>
		</tr>
		<tr>
			<td>수학
			<td><input type=text name=math>
		</tr>
		<tr>
			<td colspan=2 align=center>
			<input type=submit value="submit">
			<input type=button id="back" value="back">
		</tr>
	</table>
</form>
	<script>
		$("#back").on("click", function(){
			location.href="index.jsp";
		})
		
	</script>
</body>
</html>