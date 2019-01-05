<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Category Form</title>
</head>
<body>
<div class="container">
<c:url var="url" value="/all/EDIT"></c:url>
<form:form method="post" action="${url }" modelAttribute="categry">
Category Id:<form:input path="categoryId" readonly="true"/><br>
<br>
Enter Category Name:<form:input path="categoryName"/><br>
<br>
<input type="submit" value="Edit Category"/>
</form:form>
</div>
</body>
</html>
