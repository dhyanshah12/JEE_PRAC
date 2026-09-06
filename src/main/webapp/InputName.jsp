<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.error{
		color : red;
		}
</style>
</style>
</head>
<body>
	<form action="InputNameServlet" method="post">
		Name : <input type="text" name="name" value="${nameValue}" >
		 <span class="error">
		 	${nameerr}
		 </span>
		<br><br>
		Email : <input type="text" name="email" value="${emailValue}">
		 <span class="error">
		 	${emailerr}
		 </span>	
		<br><br>
		Password : <input type="password" name="password">
		<span class="error">
		 	${passerr}
		 </span>		 
		<br><br>
		
		<input type="submit" value="submit">
	</form>
</body>
</html>