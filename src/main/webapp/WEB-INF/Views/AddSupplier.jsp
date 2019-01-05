<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ include file="Header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Supplier Form</title>
<style>
* {
    box-sizing: border-box;
}
input[type=text], select, textarea {
    width: 100%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    resize: vertical;
}
label {
    padding: 12px 12px 12px 0;
    display: inline-block;
}
input[type=submit] {
    background-color: #4CAF50;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    float: right;
}
input[type=submit]:hover {
    background-color: #45a049;
}
.container {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
}
.col-25 {
    float: left;
    width: 25%;
    margin-top: 6px;
}
.col-75 {
    float: left;
    width: 75%;
    margin-top: 6px;
}
/* Clear floats after the columns */
.row:after {
    content: "";
    display: table;
    clear: both;
}
/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
    .col-25, .col-75, input[type=submit] {
        width: 100%;
        margin-top: 0;
    }
}
</style>
</head>
<body>
<h2>Supplier Form</h2>
<div class="container">
<c:url var="url" value="/all/add"></c:url>
<form:form method="post" action="${url }" modelAttribute="AddSupplier">
<div class="row">
      <div class="col-25">
        <label for="sname">Enter Supplier Name</label>
      </div>
      <div class="col-75">
        <form:input type="text" id="sname" path="supplierName" placeholder="supplier name.."/>
      </div>
    </div>
<div class="row">
      <div class="col-75">
      <label for="sname">Enter Supplier Address</label>
      </div>
        <form:textarea id="subject" path="supplierAddress" placeholder="write address.." style="height:200px"></form:textarea>
      </div>
    </div>
    <div class="row">
      <input type="submit" value="Add Supplier">
    </div>
</form:form>
</div>
</body>
</html>
