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
	<table align="center">
		<tr>
			<th colspan="5">Student Profile List</th>
		</tr>
		<tr>
			<th align=center>학번
			<th align=center>이름
			<th align=center>국어
			<th align=center>영어
			<th align=center>수학
		</tr>

		<c:forEach var="i" items="${list }">
			<tr>
				<td align=center>${i.id }
				<td align=center>${i.name }
				<td align=center>${i.kor }
				<td align=center>${i.eng }
				<td align=center>${i.math }
			</tr>
		</c:forEach>
		<tr>
			<td colspan="5" align=center><button id="back" type="button">Back</button></td>
		</tr>
	</table>
	<script>
		$("#back").on("click", function() {
			location.href = "index.jsp";
		})
	</script>
</body>
</html>