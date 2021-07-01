<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Director List</title>
<link href="../../webjars/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" />
<script src="../../webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="../../webjars/jquery/3.0.0/js/jquery.min.js"></script>

</head>
<body style="background-image: url('https://wallpapercave.com/wp/wp3373378.jpg');
background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 100% 100%;">
<div class="container">
  <h2>Director List</h2>
  <table class="table table-striped">
   <thead>
    <th scope="row">#ID</th>
    <th scope="row">DIRECTOR NAME</th>
    <th scope="row">AGE</th>
    <th scope="row">GEENDER</th>
    <th scope="row">AWARDS WON</th>
    <th scope="row">Update</th>
    <th scope="row">Delete</th>
   </thead>
   <tbody>
    <c:forEach items="${directorList}" var="director" >
     <tr>
     <td>${director.id }</td>
      <td>${director.name }</td>
      <td>${director.age }</td>
      <td>${director.gender }</td>
      <td>${director.awards }</td>
      
      <td>
       <spring:url value="/director/v1/updateDirector/${director.id }" var="updateURL" />
       <a class="btn btn-primary" href="${updateURL}" role="button" >Update</a>
      </td>
      <td>
       <spring:url value="/director/v1/deleteDirector/${director.id }" var="deleteURL" />
       <a class="btn btn-primary" href="${deleteURL }" role="button" >Delete</a>
      </td>
     </tr>
    </c:forEach>
   </tbody>
  </table>
  <spring:url value="/director/v1/addDirector/" var="addURL" />
  <a class="btn btn-primary" href="${addURL}" role="button" >Add New Director</a>
 </div>

</body>
</html>