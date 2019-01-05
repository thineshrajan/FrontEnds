<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="Header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
$(document).ready(function(){
	var searchCondition='${searchCondition}'
	$('.table').DataTable({
		"lengthMenu":[[5,10,-1],[5,10,"All"]],
	    "oSearch" : {
		"sSearch" : searchCondition
		}
	})
})
</script>
</head>
<body background='<c:url value='/resources/images/lo.jpg'></c:url>'>
<div class="container">
		<b>List of Products</b>
		<table class="table table-striped"	 border="1">
			<thead>
				<tr class="danger">
					<th>Id</th>
					<th>Image</th>
					<th>Product Name</th>
					<th>Price</th>
					<th>Category</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<!-- For each object in the list, tr has to be repeated -->
				<!--  items refers to the collection of objects -->
				<!-- var is local variable ,takes objects one by one from the collection -->
				<c:forEach var="p" items="${productsList }">
					<tr class="info">
						<td><a
							href="<c:url value='/all/getproduct/${p.id }'></c:url>">${p.id }</a></td>
						<td><img src="<c:url value='/resources/images/${p.id }.jpg'></c:url>" height="30px" width="30px"></td>
						<td><a
							href="<c:url value='/all/getproduct/${p.id }'></c:url>">${p.productName }</a></td>
						<td>${p.productPrice }</td>
						
						<td>${p.category.categoryName }</td>
						<td>
						
						  <a href="<c:url value='/all/getproduct/${p.id }'></c:url>">
							<span
								class="glyphicon glyphicon-info-sign"></span></a>
								<security:authorize access="hasRole('ROLE_ADMIN')"> 
								<a href="<c:url value='/admin/deleteproduct/${p.id }'></c:url>"><span
								class="glyphicon glyphicon-trash"></span></a> 
								
								<a href="<c:url value='/admin/getupdateform/${p.id }'></c:url>"><span
								class="glyphicon glyphicon-pencil"></span></a>
								</security:authorize>
								</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

	</div>
</body>
</html>
