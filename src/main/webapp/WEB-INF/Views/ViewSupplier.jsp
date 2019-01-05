<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ include file="Header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>List Of Suppliers</title>
</head>
<body>
<div class="container">
  <h2>Supplier Table</h2>                                                          
  <table class="table table-striped" border="1">
    <thead>
      <tr>
        <th>S.No.</th>
        <th>Supplier Name</th>
        <th>  </th>
        <th>  </th>
      </tr>
    </thead>
    <tbody>
      <c:forEach items="${supplierlist}" var="s">
      <tr>
        <td>${s.supplierId}</td>
        <td>${s.supplierName}</td>
        <td><a href="<c:url value='/all/Edit?id=${s.supplierId}'></c:url>">Edit</a></td>
        <td><a href="<c:url value='/all/delete?id=${s.supplierId}'></c:url>">Delete</a></td>
      </tr>
      </c:forEach>
    </tbody>
  </table>
  </div>
</body>
</html>
