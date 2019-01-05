<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@include file="Header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="<c:url value='/resources/css/registration.css'></c:url>" rel="stylesheet">
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/jquery.validation/1.15.1/jquery.validate.min.js"></script>

<script type="text/javascript">
function fillShippingAddress(form){
	if(form.shippingaddressform.checked==true){
		//shippingaddress is same as billingaddress
		form["shippingaddress.apartmentnumber"].value=form["billingaddress.apartmentnumber"].value;
		form["shippingaddress.streetname"].value=form["billingaddress.streetname"].value;
		form["shippingaddress.city"].value=form["billingaddress.city"].value;
		form["shippingaddress.state"].value=form["billingaddress.state"].value;
		form["shippingaddress.country"].value=form["billingaddress.country"].value;
		form["shippingaddress.zipcode"].value=form["billingaddress.zipcode"].value;
	}
	if(form.shippingaddressform.checked==false){
		form["shippingaddress.apartmentnumber"].value=""
		form["shippingaddress.streetname"].value=""
		form["shippingaddress.city"].value=""
		form["shippingaddress.state"].value=""
		form["shippingaddress.country"].value=""
		form["shippingaddress.zipcode"].value=""
	}
}
$(document).ready(function(){
	$('#form').validate({
		rules:{
			firstname:{required:true},
			lastname:{required:true},
			phonenumber:{required:true,number:true,minlength:10,maxlength:10},
			"user.email":{required:true,email:true},
			"user.password":{required:true,minlength:5,maxlength:10},
			"billingaddress.apartmentnumber":{required:true},
			"billingaddress.streetname":{required:true},
			"billingaddress.state":{required:true},
			"billingaddress.city":{required:true},
			"billingaddress.country":{required:true},
			"billingaddress.zipcode":{required:true,number:true}
		},
		messages:{
			firstname:{required:"Firstname is mandatory"},
			phonenumber:{required:"Phonenumber is required"},
			"user.email":{required:"Email is required",email:"Please enter valid email address"}
		}
	})
})
</script>

</head>
<body>
<div class="container">
<c:url value="/all/registercustomer" var="url"></c:url>
<form:form modelAttribute="customer" action="${url }" id="form">

<form:hidden path="id"/>

<form:label path="firstname">Enter Firstname</form:label>
<form:input path="firstname" id="firstname"/>


<form:label path="lastname">Enter Lastname</form:label>
<form:input path="lastname" id="lastname"/>


<form:label path="phonenumber">Enter Phonenumber</form:label>
<form:input path="phonenumber" id="phonenumber"/>

<hr>
<p align="center"><b>Login Credentials</b></p><br>
<form:label path="user.email">Enter Email</form:label>
<form:input path="user.email" id="user.email" type="email"/>

<form:label path="user.password">Enter password</form:label>
<form:input path="user.password" id="user.password" type="password"/>



<hr>
<th><td><p align="center"><b>Billing Address</b></p><br></td></th>
<table class="table table-striped" border="1">
			<thead>
  	
<tr>
            <th>Enter Apartmentnumber</th>
			<td><form:label path="billingaddress.apartmentnumber"></form:label><form:input path="billingaddress.apartmentnumber" id="billingaddress.apartmentnumber" /></td>
       </tr>

<tr>
            <th>Enter streetname</th>
			<td><form:label path="billingaddress.streetname"></form:label><form:input path="billingaddress.streetname" id="billingaddress.streetname" /></td>
       </tr>

		<tr>
            <th>Enter city</th>
			<td><form:label path="billingaddress.city"></form:label><form:input path="billingaddress.city" id="billingaddress.city" /></td>
       </tr>

	  <tr>
            <th>Enter state</th>
			<td><form:label path="billingaddress.state"></form:label><form:input path="billingaddress.state" id="billingaddress.state" /></td>
     </tr>
     <tr>
			<th>Enter country</th>
			<td><form:label path="billingaddress.country"></form:label><form:input path="billingaddress.country" id="billingaddress.country" /></td>
    </tr>
    <tr>
			<th>Enter zipcode</th>
			<td><form:label path="billingaddress.zipcode"></form:label><form:input path="billingaddress.zipcode" id="billingaddress.zipcode" /></td>
   </tr>
<hr>
<tr><th><p align="middle"><b>Shipping address</b></p></th></tr><br>
Check this if shipping address is same as billing address
<input type="checkbox" onclick="fillShippingAddress(this.form)" id="shippingaddressform">
 <table class="table table-striped" border="1">
			<thead>
 
  <tr>
			<th>Enter  Apartmentnumber</th>
			<td><form:label path="shippingaddress.apartmentnumber"></form:label><form:input path="shippingaddress.apartmentnumber" id="shippingaddress.apartmentnumber" /></td>

		</tr>
  <tr>
			<th>Enter streetname</th>
			<td><form:label path="shippingaddress.streetname"></form:label><form:input path="shippingaddress.streetname" id="shippingaddress.streetname" /></td>

		</tr>
	  <tr>
			<th>Enter City</th>
			<td><form:label path="shippingaddress.city"></form:label><form:input path="shippingaddress.city" id="shippingaddress.city" /></td>

		</tr>
       <tr>
			<th>Enter state</th>
			<td><form:label path="shippingaddress.state"></form:label><form:input path="shippingaddress.state" id="shippingaddress.state" /></td>

		</tr>

    <tr>
			<th>Enter zipcode</th>
			<td><form:label path="shippingaddress.zipcode"></form:label><form:input path="shippingaddress.zipcode" id="shippingaddress.zipcode" /></td>

		</tr>
  
<br>
<tr><th><p align="center"><b><input type="submit" value="Register" style="background-color: white;"></b></p></th></tr>

</form:form>
</div>

</body>
</html>
