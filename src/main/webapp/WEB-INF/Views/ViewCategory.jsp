<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="Header.jsp" %>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>List Of Categories</title>
</head>
<body>
<div class="container">
  <h2>Category Table</h2>                                                          
  <table class="table table-striped" border="1">
    <thead>
      <tr>
        <th>S.No.</th>
        <th>Category Name</th>
        <th>  </th>
        <th>  </th>
      </tr>
    </thead>
    <tbody>
      <c:forEach items="${categorylist}" var="c">
      <tr>
        <td>${c.categoryId}</td>
        <td>${c.categoryName}</td>
        <td><a href="<c:url value='/all/EDIT?id=${c.categoryId}'></c:url>">Edit</a></td>
        <td><a href="<c:url value='/all/DELETE?id=${c.categoryId}'></c:url>">Delete</a></td>
      </tr>
      </c:forEach>
    </tbody>
  </table>
  </div>
</body>
</html>
