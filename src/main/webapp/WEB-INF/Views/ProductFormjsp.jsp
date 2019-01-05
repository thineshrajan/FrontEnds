<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="Header.jsp"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div>
	<!--  p=new Product(), initially all the properties will have default values
	var url="/admin/addproduct"
	 -->
	<c:url value="/admin/addproduct" var="url"></c:url>
	<form:form modelAttribute="product" action="${url }" method="post" enctype="multipart/form-data">
		<table>
			<tr>
				<td>Enter Product Name
				</td>
				<td><form:input path="productName"></form:input></td>
				<form:errors path="productName" cssStyle="color:red"></form:errors>
			</tr>
			<tr>
			<td>Enter Product Description</td>
			<td><form:textarea path="productDescription"></form:textarea></td></tr>
			<form:errors path="productDescription" cssStyle="color:red"> </form:errors>
			<tr>
			<td>Enter Price</td>
			<td><form:input path="productPrice"></form:input></td></tr>
			<form:errors path="productPrice" cssStyle="color:red"></form:errors>
			<tr>
			<td>Enter Quantity</td>
			<td><form:input path="productQuantity"></form:input></td></tr>
			<form:errors path="productQuantity" cssStyle="color:red"></form:errors>
			<tr>
			<td>Enter Size</td>
			<td><form:input path="productSize"></form:input></td></tr>
			<form:errors path="productSize" cssStyle="color:red"></form:errors>
			<tr><td>Select the Category</td>
			
			<td><form:select path="category.categoryId"><!-- FK column value -->
			<!-- value is to set the value for the path category.id -->
		    <c:forEach items="${categories }" var="c">
		    <form:option value="${c.categoryId }">${c.categoryName }</form:option>
		    </c:forEach>
			</form:select></td></tr>
			<tr><td>Upload image</td><td>
			<form:input path="image" type="file"/>
			</td></tr>
			<tr>
			<tr>
			<td></td>
			<td><input type="submit" value="Add Product"></td>
			</tr>


		</table>

	</form:form>
	</div>
</body>
</html>
