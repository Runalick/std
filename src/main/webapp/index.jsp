<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<style>

table{
		width:200px;
	}
table button{
		width:100%;
		height:100%;
	}

</style>

</head>
<body>
		<table border=1 align=center>
		<tr>
			<th>Student Management
		</tr>
		<tr>
			<td><button id="insert">New Student</button>
		</tr>
		<tr>
			<td><button id="selectAll">Student List</button>
		</tr>
		<tr>
			<td><button id="delete">Delete</button>
		</tr>
		<tr>
			<td><button id="update">Modify</button>
		</tr>
	</table>
	<script>
		$("#insert").on("click",function(){
			location.href="input.jsp";
		})
		$("#selectAll").on("click",function(){
			location.href="list.std";
		})
		$("#delete").on("click",function(){
			location.href="delList.std";
		})
		$("#update").on("click",function(){
			location.href="udtList.std";
		})
		
		
	</script>
</body>
</html>