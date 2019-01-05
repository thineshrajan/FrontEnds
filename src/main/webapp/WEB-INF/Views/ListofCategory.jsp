<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="Header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
	$(document).ready(function() {
		var searchCondition = '${searchCondition}'
		$('.table').DataTable({
			"lengthMenu" : [ [ 5, 10, -1 ], [ 5, 10, "All" ] ],
			"oSearch" : {
				"sSearch" : searchCondition
			}
		})
	})
</script>
</head>
<body>
	
		<div class="container">
			<b>List of Category</b>
		
        <c:url var="url" value="/all/EDIT"></c:url>
        <form:form method="post" action="${url }" modelAttribute="categry">
             Category Id:<form:input path="categoryId" readonly="true"/><br>
        <br>
             Enter Category Name:<form:input path="categoryName"/><br>
        <br>
             Enter Category Description:
         <form:textarea path="categoryDesc"/><br>
        <br>
         <input type="submit" value="Save Category"/>
</form:form>
</div>
</body>
</html>
