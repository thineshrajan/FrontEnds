<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
    font-family: Arial, Helvetica, sans-serif;
    background-color: black;
}
* {
    box-sizing: border-box;
}
/* Add padding to containers */
.container {
    padding: 16px;
    background-color:  white;
}
/* Full-width input fields */
input[type=text], input[type=password],input[type=number] {
    width: 100%;
    padding: 15px;
    margin: 5px 0 22px 0;
    display: inline-block;
    border: none;
    background: #f1f1f1;
}
input[type=text]:focus, input[type=password]:focus ,input[type=number]:focus{
    background-color: #ddd;
    outline: none;
}
/* Overwrite default styles of hr */
hr {
    border: 1px solid #f1f1f1;
    margin-bottom: 25px;
}
/* Set a style for the submit button */
.registerbtn {
    background-color: #4CAF50;
    color: white;
    padding: 16px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
    opacity: 0.9;
}
.registerbtn:hover {
    opacity: 1;
}
/* Add a blue text color to links */
a {
    color: dodgerblue;
}
/* Set a grey background color and center the text of the "sign in" section */
.signin {
    background-color: #f1f1f1;
    text-align: center;
}
</style>
</head>
<body>
<jsp:include page="Header.jsp"/>
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
<b>Login Credentials</b><br>
<form:label path="user.email">Enter Email</form:label>
<form:input path="user.email" id="user.email" type="email"/>

<form:label path="user.password">Enter password</form:label>
<form:input path="user.password" id="user.password" type="password"/>



<hr>
<b>Billing Address</b><br>

<form:label path="billingaddress.apartmentnumber">Enter Apartmentnumber</form:label>
<form:input path="billingaddress.apartmentnumber" id="billingaddress.apartmentnumber"/>

<form:label path="billingaddress.streetname">Enter streetname</form:label>
<form:input path="billingaddress.streetname" id="billingaddress.streetname"/>

<form:label path="billingaddress.city">Enter city</form:label>
<form:input path="billingaddress.city" id="billingaddress.city"/>

<form:label path="billingaddress.state">Enter state</form:label>
<form:input path="billingaddress.state" id="billingaddress.state"/>

<form:label path="billingaddress.country">Enter country</form:label>
<form:input path="billingaddress.country" id="billingaddress.country"/>

<form:label path="billingaddress.zipcode">Enter Zipcode</form:label>
<form:input path="billingaddress.zipcode" id="billingaddress.zipcode"/>
<hr>
<b>Shipping address</b><br>
Check this if shipping address is same as billing address
<input type="checkbox" onclick="fillShippingAddress(this.form)" id="shippingaddressform">
<form:label path="shippingaddress.apartmentnumber">Enter Apartmentnumber</form:label>
<form:input path="shippingaddress.apartmentnumber" id="shippingaddress.apartmentnumber"/>

<form:label path="shippingaddress.streetname">Enter streetname</form:label>
<form:input path="shippingaddress.streetname" id="shippingaddress.streetname"/>

<form:label path="shippingaddress.city">Enter city</form:label>
<form:input path="shippingaddress.city" id="shippingaddress.city"/>

<form:label path="shippingaddress.state">Enter state</form:label>
<form:input path="shippingaddress.state" id="shippingaddress.state"/>

<form:label path="shippingaddress.country">Enter country</form:label>
<form:input path="shippingaddress.country" id="shippingaddress.country"/>

<form:label path="shippingaddress.zipcode">Enter zipcode</form:label>
<form:input path="shippingaddress.zipcode" id="shippingaddress.zipcode"/>
<br>
 <button type="submit" class="registerbtn" value="Register">Register</button>

</form:form>
</div>
</body>
</html>
