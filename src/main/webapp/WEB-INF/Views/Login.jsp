<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="Header.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
input[type=text], input[type=password] {
	width: 100%;
	padding: 15px;
	margin: 5px 0 22px o;
	display: inline-block;
	border: none;
	box-sizing: border-box;
	
}
<
title
>
Insert
 
title
 
here
</title
>
</style>
</head>
<body>
	<span style="color: red">${error}</span>
	<br> ${msg}
	<br>
	<center>
		<h1><b>Login</b></h1>
	</center>
	<c:url value="/j_spring_security_check" var="url"></c:url>
	<form method="post" action="${url }">
	   <table class="table table-striped" border="1">
			<thead>
	 <tr>
	    <th>Enter Email</th>
		<td><label for="email"></label> <input type="text" name="j_username"><br></td>
	</tr>
	<tr>
	    <th>Enter Password</th>
		<td><label for="psw"></label><input type="password" name="j_password"><br></td>
	</tr>
		<tr>
		    <th>Login</th>
		   <td><input type="submit"><label> 
			    <input type="checkbox" checked="checked" name="remember"> Remember me
			</label>
		</td>
			</tr>
			 
		<jsp:include page="Footer.jsp" />
	</form>
</body>
</html>
