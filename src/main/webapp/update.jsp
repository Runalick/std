<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
</head>
<body>
			<table border=1 align=center>
		<tr>
			<th colspan=8>Student List
		</tr>
		<tr>
			<td>Ranking
			<td>Id
			<td>Name
			<td>Kor
			<td>Eng
			<td>Math
			<td>Sum
			<td>Avg
		</tr>	
		<c:forEach var="i" items="${list}">
			<tr>
				<td>${i.rank}
				<td>${i.sid}
				<td>${i.name}
				<td>${i.kor}
				<td>${i.eng}
				<td>${i.math}
				<td>${i.sum}
				<td>${i.avg}
			</tr>
		</c:forEach>
		<form action="UpdateServlet">
			<tr>
				<td colspan=8><input type="text" placeholder="Input Id to Update" name="updateId" width="100%">
			</tr>
			<tr>
				<td colspan=8><input type="text" placeholder="Input name" name="name">
			</tr>
			<tr>
				<td colspan=8><input type="text" placeholder="Input Kor score" name="kor">
			</tr>
			<tr>
				<td colspan=8><input type="text" placeholder="Input Eng score" name="eng">
			</tr>
			<tr>
				<td colspan=8><input type="text" placeholder="Input Math score" name="math">
				<button>Update</button>
			</tr>
			
			<tr align=center>
			</form>
				<td colspan=8><button id="back">Back</button>
			</tr>
	</table>
	<script>
			$("#back").on("click",function(){
				location.href="index.jsp"
			})
	</script>
</body>
</html>