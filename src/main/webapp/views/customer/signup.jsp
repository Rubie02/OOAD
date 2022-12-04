<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:url value="/views/customer/css/" var="url"></c:url>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign Up</title>
<link rel="stylesheet" href="${url }signup.css">
</head>
<body>

	<form action="Signup" method="post" class="form-signup">
		<h1>Sign up</h1>
		<p class="text-danger" role="alert">${notification}</p>
		<br /> 
		<input name="user" type="text" class="form-control" placeholder="Username" required/> 
		<input name="email" type="email" class="form-control" placeholder="Email" required/> 
		<input name="pass" type="password" class="form-control" placeholder="Password" required/> 
		<input name="repass" type="password" class="form-control" placeholder="Confirm Password" required/>

		<button type="submit" class="icon-arrow-right">
			<span>Sign up</span>
		</button>
	</form>


</body>
</html>