<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Supplier Form</title>
</head>
<body>
<div class="container">
<c:url var="url" value="/all/Edit"></c:url>
<form:form method="post" action="${url }" modelAttribute="supplier">
Supplier Id:<form:input path="supplierId" readonly="true"/><br>
<br>
Enter Supplier Name:<form:input path="supplierName"/><br>
<br>
<br>
Enter Supplier MobileNo:<form:input path="supplierMobNo"/><br>
<br>
<br>
Enter Supplier Address:<form:input path="supplierAddress"/><br>
<br>
<br>
Enter Supplier MailID:<form:input path="supplierMailId"/><br>

<br>


<input type="submit" value="Edit Supplier"/>
</form:form>
</div>
</body>
</html>
	