<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="Header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet"
	href='<c:url value="/resources/css/registration.css"></c:url>'>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/jquery.validation/1.15.1/jquery.validate.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#form').validate({
			rules : {
				"apartmentnumber" : {
					required : true
				},
				"streetname" : {
					required : true
				},
				"state" : {
					required : true
				},
				"city" : {
					required : true
				},
				"country" : {
					required : true
				},
				"zipcode" : {
					required : true,
					number : true
				}
			}
		})
	})
</script>

</head>
<body>
       <div class="container">
<c:url var="url" value="/cart/createorder"></c:url>
<form:form modelAttribute="shippingaddress" action="${url }" id="form">

<p align="center"><b style="color:block">Shipping Address</b></p>	
<form:hidden path="Id"/>
<table class="table table-striped" border="1">
			<thead>
				<tr class="Warning">
					<th>Enter Apartmentnumber</th>
					<td><form:label path="apartmentnumber"></form:label><form:input path="apartmentnumber" id="apartmentnumber"/></td>
				</tr>


<tr>
					<th>Enter Streetname</th>
					<td><form:label path="streetname"></form:label><form:input path="streetname" id="streetname"/></td>
				</tr>
				

				<tr>
					<th>Enter City</th>
					<td><form:label path="city"></form:label><form:input path="city" id="city" /></td>
				</tr>



<tr>
					<th>Enter State</th>
					<td><form:label path="state"></form:label><form:input path="state" id="state" /></td>
				
<tr>
					<th>Enter country</th>
					<td><form:label path="country"></form:label><form:input path="country" id="country" /></td>
				</tr>

<tr>
					<th>Enter zipcode</th>
					<td><form:label path="zipcode"></form:label><form:input path="zipcode" id="zipcode" /></td>

				</tr>

       <tr><td><p align="center"><b><button type="submit" style="color:brown" >Next</button></b></p></td></tr>
     


     </form:form>
     
</div>
       
	</body>
</html>
