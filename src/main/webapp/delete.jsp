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
	<table border=1 align=center id='table'>
		<tr>
			<th colspan=6 style='background-color : #f5f0e1'>Delete Students
		</tr>
		<tr style='background-color : #faf3f0'>
			<th>RANK
			<th>SID
			<th>NAME
			<th>KOR
			<th>ENG
			<th>MATH

		</tr>
		
		<c:forEach var="i" items="${listdel}" varStatus="status">
			<tr>
				<td>${status.count}
				<td>${i.sid }
				<td>${i.name }
				<td>${i.kor }
				<td>${i.eng }
				<td>${i.math }
			</tr>
		</c:forEach>
		
		<tr>
			<form action='delete.menu'>
				<td colspan=6 align=center>
				<input type=text name=sid placeholder='Input sid to delete'>
				<input type="submit" id=delete value="DELETE">
			</form>
		</tr>
		
		<tr>
			<td colspan=6 align=center><button id=back>Back</button>
		</tr>
	
	</table>
	<script>
		$('#back').on('click', function() {
			location.href = 'index.jsp';
		})
		

	</script>	
</body>
</html>